autowatch = 1; inlets = 1; outlets = 3;

var WS = 512;
var log2WS = Math.ceil(Math.log2(WS));

var N;          // total number of audio samples
var samples;    // samples from the audio buffer

var numChunks;  // ceil(N/WS)
var totalSize;  // numChunks*WS (padded size)

// GPU buffers
var buff_samples        = new JitterObject("jit.gpu.buffer"); // N floats
var buff_real           = new JitterObject("jit.gpu.buffer"); // totalSize floats
var buff_complex        = new JitterObject("jit.gpu.buffer"); // 2*totalSize vec2 (ping-pong)
var buff_processed      = new JitterObject("jit.gpu.buffer"); // N floats

// output image
var img_spectrogram = new JitterObject("jit.gpu.image");

// compute passes
var pass_copyChunk      = new JitterObject("jit.gpu.compute");  pass_copyChunk.shader = "copyChunk.comp";
var pass_packBitrev     = new JitterObject("jit.gpu.compute");  pass_packBitrev.shader = "passBitrev.comp";
var pass_fftStage       = new JitterObject("jit.gpu.compute");  pass_fftStage.shader = "fftStage.comp";
var pass_specWrite      = new JitterObject("jit.gpu.compute");  pass_specWrite.shader = "specWrite.comp";
var pass_bitrevComplex  = new JitterObject("jit.gpu.compute");  pass_bitrevComplex.shader = "bitrevComplex.comp";
var pass_unpackScale    = new JitterObject("jit.gpu.compute");  pass_unpackScale.shader = "unpackScale.comp";

var submit = new JitterObject("jit.gpu.submit");


function uploadSamplesIntoBuffer() {
    let ob = {};
    let d = new Dict();
    ob.samples = samples;
    d.parse(JSON.stringify(ob));

    // Upload dictionary into buff_samples
    buff_samples.passname = pass_copyChunk.name;
    buff_samples.blockname = "buff_samples";
    buff_samples.dictionary(d.name);
}

function setBufferAndImageDimension() {
    let sizeOfFloat = 4;
    let sizeOfVec2 = sizeOfFloat * 2;

    // Whole-buffer (padded) allocations
    buff_real.bytecount             = totalSize * sizeOfFloat;
    buff_complex.bytecount          = 2 * totalSize * sizeOfVec2; // ping-pong halves

    // Final output is only N samples (no padding)
    buff_processed.bytecount        = N * sizeOfFloat;

    // Spectrogram: x = chunk, y = bin
    img_spectrogram.dim = [numChunks, (WS >> 1) + 1];
    img_spectrogram.format = "rgba32_float";
}

function configureBufferBindings() {
    buff_samples.blockname        = "buff_samples";
    buff_real.blockname           = "buff_real";
    buff_complex.blockname        = "buff_complex";
    buff_processed.blockname      = "buff_processed";
}

function swap(a) { return [a[1], a[0]]; }

function jit_matrix(inname) {

    let inMat = new JitterMatrix(inname);

    N = inMat.dim;
    numChunks = Math.ceil(N / WS);
    totalSize = numChunks * WS;

    buff_samples.jit_matrix(inname);

    setBufferAndImageDimension();
    configureBufferBindings();

    // Ping-pong offsets are in ELEMENTS (vec2 slots), not bytes.
    // Half0: [0 .. totalSize-1], Half1: [totalSize .. 2*totalSize-1]
    let off = [0, totalSize];

    // ============== 1) copy samples -> real (2D dispatch) ==============
    // Threads: x in [0..WS-1], y in [0..numChunks-1]
    pass_copyChunk.workgroups = [Math.ceil(WS / 256), numChunks, 1];

    buff_samples.passname = pass_copyChunk.name;
    buff_real.passname    = pass_copyChunk.name;

    pass_copyChunk.bind("buff_samples", buff_samples.name);
    pass_copyChunk.bind("buff_real", buff_real.name);

    pass_copyChunk.param("cfg.N", N);
    pass_copyChunk.param("cfg.WS", WS);

    pass_copyChunk.bang();

    // ============== 2) pack + bitrev into complex ping0 (2D dispatch) ==============
    pass_packBitrev.workgroups = [Math.ceil(WS / 256), numChunks, 1];

    buff_real.passname    = pass_packBitrev.name;
    buff_complex.passname = pass_packBitrev.name;

    pass_packBitrev.bind("buff_real", buff_real.name);
    pass_packBitrev.bind("buff_complex", buff_complex.name);

    pass_packBitrev.param("cfg.WS", WS);
    pass_packBitrev.param("cfg.log2WS", log2WS);
    pass_packBitrev.param("pc.writeOffset", off[0]); // write into ping0

    pass_packBitrev.bang();

    // ============== 3) forward FFT stages (each stage is a 2D dispatch) ==============
    pass_fftStage.workgroups = [Math.ceil((WS / 2) / 256), numChunks, 1];

    buff_complex.passname = pass_fftStage.name;
    pass_fftStage.bind("buff_complex", buff_complex.name);

    pass_fftStage.param("pc.dir", -1);
    pass_fftStage.param("cfg.WS", WS);
    pass_fftStage.param("cfg.log2WS", log2WS);

    for (let k = 1; k <= log2WS; k++) {
        pass_fftStage.param("pc.stage", k);
        pass_fftStage.param("pc.readOffset", off[0]);
        pass_fftStage.param("pc.writeOffset", off[1]);
        pass_fftStage.bang();
        off = swap(off);
    }

    // ============== 4) spectrogram write (2D dispatch: bins x chunks) ==============
    pass_specWrite.workgroups = [Math.ceil(((WS >> 1) + 1) / 256), numChunks, 1];

    buff_complex.passname = pass_specWrite.name;
    pass_specWrite.bind("buff_complex", buff_complex.name);
    pass_specWrite.bind("img_spectrogram", img_spectrogram.name);

    pass_specWrite.param("cfg.WS", WS);
    pass_specWrite.param("cfg.log2WS", log2WS);
    pass_specWrite.param("pc.readOffset", off[0]);

    pass_specWrite.bang();

    // ============== 5) bitrev spectrum (2D) so inverse DIT works ==============
    pass_bitrevComplex.workgroups = [Math.ceil(WS / 256), numChunks, 1];

    buff_complex.passname = pass_bitrevComplex.name;
    pass_bitrevComplex.bind("buff_complex", buff_complex.name);

    pass_bitrevComplex.param("cfg.WS", WS);
    pass_bitrevComplex.param("cfg.log2WS", log2WS);
    pass_bitrevComplex.param("pc.readOffset", off[0]);
    pass_bitrevComplex.param("pc.writeOffset", off[1]);

    pass_bitrevComplex.bang();
    off = swap(off);

    // ============== 6) inverse FFT stages (2D) ==============
    pass_fftStage.workgroups = [Math.ceil((WS / 2) / 256), numChunks, 1];

    pass_fftStage.param("pc.dir", 1);
    pass_fftStage.param("cfg.WS", WS);
    pass_fftStage.param("cfg.log2WS", log2WS);

    for (let k = 1; k <= log2WS; k++) {
        pass_fftStage.param("pc.stage", k);
        pass_fftStage.param("pc.readOffset", off[0]);
        pass_fftStage.param("pc.writeOffset", off[1]);
        pass_fftStage.bang();
        off = swap(off);
    }

    // ============== 7) unpack + scale into reconstructed (2D) ==============
    pass_unpackScale.workgroups = [Math.ceil(WS / 256), numChunks, 1];

    buff_complex.passname   = pass_unpackScale.name;
    buff_processed.passname = pass_unpackScale.name;

    pass_unpackScale.bind("buff_complex", buff_complex.name);
    pass_unpackScale.bind("buff_processed", buff_processed.name);

    pass_unpackScale.param("cfg.WS", WS);
    pass_unpackScale.param("cfg.log2WS", log2WS); // optional; harmless if your block includes it
    pass_unpackScale.param("pc.readOffset", off[0]);
    pass_unpackScale.param("outcfg.N", N);

    pass_unpackScale.bang();

    outlet(2, "jit_gpu_image", img_spectrogram.name);
    outlet(1, "jit_gpu_buffer", buff_processed.name);
    outlet(0, "bang");
}
