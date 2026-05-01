autowhatch = 1; outlets = 2;

var buff_vert 				= new JitterObject("jit.gpu.buffer");
var buff_area 				= new JitterObject("jit.gpu.buffer");
var buff_cdf				= new JitterObject("jit.gpu.buffer");
var buff_block_sums 		= new JitterObject("jit.gpu.buffer");
var buff_scanned_block_sums = new JitterObject("jit.gpu.buffer"); 
var buff_block_offsets 		= new JitterObject("jit.gpu.buffer"); 
var buff_points   = new JitterObject("jit.gpu.buffer");
var buff_point_count  = new JitterObject("jit.gpu.buffer");
var buff_halton  = new JitterObject("jit.gpu.buffer");

var img_stbn = new JitterObject("jit.gpu.image");

var comp_calc_area = new JitterObject("jit.gpu.compute");
comp_calc_area.shader = "comp_calc_area.comp";
comp_calc_area.bind("buff_vert", buff_vert.name);
comp_calc_area.bind("buff_area", buff_area.name);

var comp_scan_blocks = new JitterObject("jit.gpu.compute");
comp_scan_blocks.shader = "comp_scan_blocks.comp";
comp_scan_blocks.bind("InputBuffer", buff_block_sums.name);
comp_scan_blocks.bind("OutputBuffer", buff_scanned_block_sums.name);
comp_scan_blocks.bind("BlockSumsBuffer", buff_block_sums.name); 

var comp_make_block_offsets = new JitterObject("jit.gpu.compute");
comp_make_block_offsets.shader = "comp_make_block_offsets.comp";
comp_make_block_offsets.bind("buff_scanned_block_sums", buff_scanned_block_sums.name);
comp_make_block_offsets.bind("buff_block_offsets", buff_block_offsets.name);

var comp_add_block_offsets = new JitterObject("jit.gpu.compute");
comp_add_block_offsets.shader = "comp_add_block_offsets.comp";
comp_add_block_offsets.bind("buff_cdf", buff_cdf.name);
comp_add_block_offsets.bind("buff_block_offsets", buff_block_offsets.name);

var comp_reset_counter = new JitterObject("jit.gpu.compute");
comp_reset_counter.shader = "comp_reset_counter.comp";
comp_reset_counter.bind("buff_point_count", buff_point_count.name);

var comp_generate_points = new JitterObject("jit.gpu.compute");
comp_generate_points.shader = "comp_generate_points.comp";
comp_generate_points.bind("buff_vert", buff_vert.name);
comp_generate_points.bind("buff_cdf", buff_cdf.name);
comp_generate_points.bind("buff_points", buff_points.name);
comp_generate_points.bind("buff_point_count", buff_point_count.name);
comp_generate_points.bind("buff_halton", buff_halton.name);
comp_generate_points.bind("buff_area", buff_area.name);

var unpacker = new JitterObject("jit.unpack");
unpacker.jump = 3;
var packer = new JitterObject("jit.pack");
packer.jump = [3, 1];

var posMat, posMat4;
var vertex_count, tri_count, num_blocks;
var inMat;
var point_count = 10000;

let stbn_mat = new JitterMatrix();
stbn_mat.importmovie("stbn_vec2.png");
img_stbn.jit_matrix(stbn_mat.name);

let haltonMat = new JitterMatrix(2, "float32", 1024);

for(let i = 0; i < 1024; i++){
	let hal = halton23(i+1);
	haltonMat.setcell(i, "val", hal);
}

buff_halton.jit_matrix(haltonMat.name);

function radicalInverse(n, base) {
  let x = 0;
  let f = 1 / base;

  while (n > 0) {
    const digit = n % base;
    x += digit * f;
    n = Math.floor(n / base);
    f /= base;
  }

  return x;
}

function halton23(n) {
  return [
    radicalInverse(n, 2),
    radicalInverse(n, 3),
  ];
}

function calc_area(){

	comp_calc_area.workgroups = [Math.ceil(tri_count / 256), 1, 1];
	comp_calc_area.param("tri_count", tri_count);
	comp_calc_area.bang();
}

function count(x){
	point_count = x;
}
function prefix_scan() {

    if (tri_count <= 0) return;

    // PASS 1
    // buff_area -> buff_cdf
    // also write block sums
    comp_scan_blocks.bind("InputBuffer", buff_area.name);
    comp_scan_blocks.bind("OutputBuffer", buff_cdf.name);
    comp_scan_blocks.bind("BlockSumsBuffer", buff_block_sums.name);
    comp_scan_blocks.workgroups = [num_blocks, 1, 1];
    comp_scan_blocks.param("tri_count", tri_count);
    comp_scan_blocks.param("writeBlockSums", 1);
    comp_scan_blocks.bang();

    if (num_blocks <= 1) return;

    if (num_blocks > 256) {
        post("prefix_scan: troppi blocchi per la versione a 2 livelli (max 65536 triangoli)\n");
        return;
    }

    // PASS 2
    // IMPORTANT: rebind to scan block sums
    comp_scan_blocks.bind("InputBuffer", buff_block_sums.name);
    comp_scan_blocks.bind("OutputBuffer", buff_scanned_block_sums.name);
    comp_scan_blocks.bind("BlockSumsBuffer", buff_vert.name); // DUMMY unused when writeBlockSums=0
    comp_scan_blocks.workgroups = [1, 1, 1];
    comp_scan_blocks.param("tri_count", num_blocks);
    comp_scan_blocks.param("writeBlockSums", 0);
    comp_scan_blocks.bang();

    // PASS 3
    comp_make_block_offsets.workgroups = [1, 1, 1];
    comp_make_block_offsets.param("num_blocks", num_blocks);
    comp_make_block_offsets.bang();

    // PASS 4
    comp_add_block_offsets.workgroups = [num_blocks, 1, 1];
    comp_add_block_offsets.param("tri_count", tri_count);
    comp_add_block_offsets.bang();
}

function generate_points()
{
    // vec4 per point
    buff_points.bytecount  = point_count * 4 * SIZEOF_FLOAT;

    // uint per point
    buff_point_count.bytecount = tri_count * 4;

    comp_reset_counter.workgroups = [Math.ceil(tri_count / 256), 1, 1];
    comp_reset_counter.param("tri_count", tri_count);
    comp_reset_counter.bang();

    comp_generate_points.workgroups = [Math.ceil(point_count / 256), 1, 1];
    comp_generate_points.param("point_count", point_count);
    comp_generate_points.param("tri_count", tri_count);
    comp_generate_points.bang();
}

function output_matrix(){

	outlet(0, "source", buff_points.name);
	outlet(0, "bang");
}

function bang(){

	calc_area();
	prefix_scan();
	generate_points();
	output_matrix();
}

const BLOCK_SIZE = 256;
const SIZEOF_FLOAT = 4;

function jit_matrix(inname){

	inMat = new JitterMatrix(inname);

	vertex_count = inMat.dim;
	tri_count = vertex_count / 3;
	num_blocks = Math.ceil(tri_count / BLOCK_SIZE);

	posMat = new JitterMatrix(3, "float32", vertex_count);
	posMat4 = new JitterMatrix(4, "float32", vertex_count);
	unpacker.matrixcalc(inMat, posMat);
	packer.matrixcalc(inMat, posMat4);

	outlet(1, "jit_matrix", stbn_mat.name);

	buff_vert.jit_matrix(posMat4.name);

	buff_area.bytecount               = tri_count  * SIZEOF_FLOAT;
	buff_cdf.bytecount                = tri_count  * SIZEOF_FLOAT;
	buff_block_sums.bytecount         = num_blocks * SIZEOF_FLOAT;
	buff_scanned_block_sums.bytecount = num_blocks * SIZEOF_FLOAT;
	buff_block_offsets.bytecount      = num_blocks * SIZEOF_FLOAT;

	bang();
}