autowatch = 1; inlets = 1; outlets = 3;

var WS = 512;
var log2WS = Math.ceil(Math.log2(WS));
var N; //total number of audio samples
var samples; //samples from the audio buffer

var inBuff = new Buffer("test");

//create the buffers
var buff_samples        = new JitterObject("jit.gpu.buffer");
var buff_real           = new JitterObject("jit.gpu.buffer");
var buff_complex        = new JitterObject("jit.gpu.buffer");
var buff_reconstructed  = new JitterObject("jit.gpu.buffer");
var buff_processed      = new JitterObject("jit.gpu.buffer");

//create the image
var img_spectrogram = new JitterObject("jit.gpu.image");

//create the compute passes
var pass_copyChunk      = new JitterObject("jit.gpu.compute");  pass_copyChunk.shader = "copyChunk.comp";
var pass_packBitrev     = new JitterObject("jit.gpu.compute");  pass_packBitrev.shader = "passBitrev.comp";
var pass_fftStage       = new JitterObject("jit.gpu.compute");  pass_fftStage.shader = "fftStage.comp";
var pass_specWrite      = new JitterObject("jit.gpu.compute");  pass_specWrite.shader = "specWrite.comp";
var pass_bitrevComplex  = new JitterObject("jit.gpu.compute");  pass_bitrevComplex.shader = "bitrevComplex.comp";
var pass_unpackScale    = new JitterObject("jit.gpu.compute");  pass_unpackScale.shader = "unpackScale.comp";
var pass_insert         = new JitterObject("jit.gpu.compute");  pass_insert.shader = "insert.comp";

var submit = new JitterObject("jit.gpu.submit");

function copyAudioBufferContent(){
    N = inBuff.framecount(); //set the total number of samples
    samples = inBuff.peek(1,0,N); //read samples from the buffer
}

function uploadSamplesIntoBuffer(){
    let ob = {};
    let d = new Dict();
    ob.samples = samples;
    d.parse(JSON.stringify(ob));
    buff_samples.passname = pass_copyChunk.name;
    buff_samples.blockname = "buff_samples";
    buff_samples.dictionary(d.name);
}

function setBufferAndImageDimension(){
    let sizeOfFloat = 4;
    let sizeOfVec2 = sizeOfFloat*2;

    buff_real.bytecount             = WS*sizeOfFloat;
    buff_complex.bytecount          = 2*WS*sizeOfVec2;
    buff_reconstructed.bytecount    = WS*sizeOfFloat;
    buff_processed.bytecount        = N*sizeOfFloat;

    img_spectrogram.dim = [Math.ceil(N / WS), Math.ceil(WS / 2) + 1];
    img_spectrogram.format = "rgba32_float";
}

function configureBufferBindings() {
  // match the SSBO block names in your shaders exactly
  buff_samples.blockname        = "buff_samples";
  buff_real.blockname           = "buff_real";
  buff_complex.blockname        = "buff_complex";
  buff_reconstructed.blockname  = "buff_reconstructed";
  buff_processed.blockname      = "buff_processed";
}

function swap(a){ 
    return [a[1], a[0]]; 
}

function bang(){

    copyAudioBufferContent();
    uploadSamplesIntoBuffer();
    setBufferAndImageDimension();
    configureBufferBindings();

    for(let i = 0; i < Math.ceil(N / WS); i++){
        // 1) copy chunk -> inputReal     (WS threads)
        pass_copyChunk.workgroups = [Math.ceil(WS / 256), 1, 1];
        buff_samples.passname = pass_copyChunk.name;
        buff_real.passname = pass_copyChunk.name;
        pass_copyChunk.bind("buff_samples", buff_samples.name);
        pass_copyChunk.bind("buff_real", buff_real.name);
        pass_copyChunk.param("cfg.N", N);
        pass_copyChunk.param("cfg.offset", i * WS);
        pass_copyChunk.param("cfg.WS", WS);
        pass_copyChunk.bang();

        // 2) pack+bitrev -> A            (WS threads)
        pass_packBitrev.workgroups = [Math.ceil(WS / 256), 1, 1];
        buff_real.passname = pass_packBitrev.name;
        buff_complex.passname = pass_packBitrev.name;
        pass_packBitrev.bind("buff_real", buff_real.name);
        pass_packBitrev.bind("buff_complex", buff_complex.name);
        pass_packBitrev.param("cfg.WS", WS);
        pass_packBitrev.param("cfg.log2WS", log2WS);
        pass_packBitrev.bang();

        // 3) forward FFT stages
        let off = [0, WS];
        pass_fftStage.workgroups = [Math.ceil((WS/2)/256), 1, 1];
        pass_fftStage.param("pc.dir", -1); //Forward FFT
        pass_fftStage.param("cfg.WS", WS);
        pass_fftStage.param("cfg.log2WS", log2WS);
        buff_complex.passname = pass_fftStage.name;
        pass_fftStage.bind("buff_complex", buff_complex.name);
        for(let k = 1; k <= log2WS; k++){
            pass_fftStage.param("pc.stage", k);
            pass_fftStage.param("pc.readOffset", off[0]);
            pass_fftStage.param("pc.writeOffset", off[1]);
            pass_fftStage.bang();
            off = swap(off);
        }

        // 4) spectrogram (WS/2+1 threads)
        pass_specWrite.workgroups = [Math.ceil((WS/2 + 1)/256), 1, 1];
        pass_specWrite.param("cfg.WS", WS);
        pass_specWrite.param("cfg.log2WS", log2WS);
        pass_specWrite.param("pc.iteration", i);
        pass_specWrite.param("pc.readOffset", off[0]);
        buff_complex.passname = pass_specWrite.name;
        pass_specWrite.bind("buff_complex", buff_complex.name);
        pass_specWrite.bind("img_spectrogram", img_spectrogram.name);
        pass_specWrite.bang();

        // 5) bitrev spectrum -> A (so IFFT DIT works)
        pass_bitrevComplex.workgroups = [Math.ceil(WS/256), 1, 1];
        buff_complex.passname = pass_bitrevComplex.name;
        pass_bitrevComplex.bind("buff_complex", buff_complex.name);
        pass_bitrevComplex.param("pc.readOffset", off[0]);
        pass_bitrevComplex.param("pc.writeOffset", off[1]);
        pass_bitrevComplex.param("cfg.WS", WS);
        pass_bitrevComplex.param("cfg.log2WS", log2WS);
        pass_bitrevComplex.bang();
        off = swap(off);

        // 6) inverse FFT stages (dir=+1)
        pass_fftStage.workgroups = [Math.ceil((WS/2)/256), 1, 1];
        pass_fftStage.param("pc.dir", 1); //inverse FFT
        pass_fftStage.param("cfg.WS", WS);
        pass_fftStage.param("cfg.log2WS", log2WS);
        buff_complex.passname = pass_fftStage.name;
        pass_fftStage.bind("buff_complex", buff_complex.name);
        for(let k = 1; k <= log2WS; k++){
            pass_fftStage.param("pc.stage", k);
            pass_fftStage.param("pc.readOffset", off[0]);
            pass_fftStage.param("pc.writeOffset", off[1]);
            pass_fftStage.bang();
            off = swap(off);
        }

        // 7) scale+unpack A -> reconstructed (WS threads)
        pass_unpackScale.workgroups = [Math.ceil(WS/256), 1, 1];
        buff_complex.passname = pass_unpackScale.name;
        buff_reconstructed.passname = pass_unpackScale.name;
        pass_unpackScale.bind("buff_complex", buff_complex.name);
        pass_unpackScale.bind("buff_reconstructed", buff_reconstructed.name);
        pass_unpackScale.param("pc.readOffset", off[0]);
        pass_unpackScale.param("cfg.WS", WS);
        pass_unpackScale.param("cfg.log2WS", log2WS);              
        pass_unpackScale.bang();

        // 8) insert this chunk into the processed buffer
        pass_insert.workgroups = [Math.ceil(WS/256), 1, 1];
        buff_processed.passname = pass_insert.name;
        buff_reconstructed.passname = pass_insert.name;
        pass_insert.bind("buff_reconstructed", buff_reconstructed.name);
        pass_insert.bind("buff_processed", buff_processed.name);
        pass_insert.param("cfg.N", N);
        pass_insert.param("cfg.offset", i * WS);
        pass_insert.bang();

        submit.bang();
    }

    outlet(2, "jit_gpu_image", img_spectrogram.name);
    outlet(1, "jit_gpu_buffer", buff_processed.name);
    outlet(0, "bang");
}