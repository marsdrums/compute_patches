autowhatch = 1; inlets = 1; outlets = 4;

var N; //total number of elements
var WGS = 256; //workgroup size

var buff_values = new JitterObject("jit.gpu.buffer");

var image_in 	= new JitterObject("jit.gpu.image");	image_in.blockname 		= "image_in";
var image_mm 	= new JitterObject("jit.gpu.image");	image_mm.blockname 		= "image_mm";
var image_MM 	= new JitterObject("jit.gpu.image");	image_MM.blockname 		= "image_MM";
var image_mean 	= new JitterObject("jit.gpu.image"); 	image_mean.blockname 	= "image_mean";

image_mm.dim 	= 1;	image_mm.format 	= "rgba32_float";
image_MM.dim 	= 1;	image_MM.format 	= "rgba32_float";
image_mean.dim 	= 1;	image_mean.format 	= "rgba32_float";

var pass_fillBuffer 	= new JitterObject("jit.gpu.compute");
var pass_findMinMaxMean = new JitterObject("jit.gpu.compute");
var pass_findMinMaxMean2 = new JitterObject("jit.gpu.compute");
var pass_writeResults 	= new JitterObject("jit.gpu.compute");
pass_fillBuffer.shader 		= "fillBuffer.comp";
pass_findMinMaxMean.shader 	= "findMinMax.comp";
pass_findMinMaxMean2.shader 	= "findMinMax.comp";
pass_writeResults.shader 	= "writeResults.comp";

function swap(a){ return [a[1], a[0]]; }

function jit_matrix(inname){

	let inMat = new JitterMatrix(inname);
	image_in.jit_matrix(inname);

	N = inMat.dim[0] * inMat.dim[1];

	//set buffer size
	let wgX = Math.ceil(inMat.dim[0] / 16);
	let wgY = Math.ceil(inMat.dim[1] / 16);
	let buff_length = wgX * wgY;
	let sizeOfVec4 = 16;
	let numElementsInStruct = 3;
	buff_values.bytecount = 2 * buff_length * sizeOfVec4 * numElementsInStruct;

	//fill buffer
	image_in.passname = pass_fillBuffer.name;
	buff_values.passname = pass_fillBuffer.name;
	pass_fillBuffer.bind("image_in", image_in.name);
	pass_fillBuffer.bind("buff_values", buff_values.name);
	pass_fillBuffer.workgroups = [wgX, wgY, 1];
	pass_fillBuffer.bang();

	//run pass_findMinMaxMean
	buff_values.passname = pass_findMinMaxMean.name;
	pass_findMinMaxMean.bind("buff_values", buff_values.name);
	let count = buff_length;
	let offset = [0, buff_length];

	let outCount = Math.ceil(count / WGS);
	pass_findMinMaxMean.param("pc.count", count);
	pass_findMinMaxMean.param("pc.readOffset", offset[0]);
	pass_findMinMaxMean.param("pc.writeOffset", offset[1]);
	pass_findMinMaxMean.workgroups = [outCount, 1, 1];
	pass_findMinMaxMean.bang();
	offset = swap(offset);
	count = outCount;

	buff_values.passname = pass_findMinMaxMean2.name;
	pass_findMinMaxMean2.bind("buff_values", buff_values.name);
	outCount = Math.ceil(count / WGS);
	pass_findMinMaxMean2.param("pc.count", count);
	pass_findMinMaxMean2.param("pc.readOffset", offset[0]);
	pass_findMinMaxMean2.param("pc.writeOffset", offset[1]);
	pass_findMinMaxMean2.workgroups = [outCount, 1, 1];
	pass_findMinMaxMean2.bang();
	offset = swap(offset);
	count = outCount;

	//copy min, max, and mean into the respective images
	buff_values.passname 	= pass_writeResults.name;
	image_mm.passname 		= pass_writeResults.name;
	image_MM.passname 		= pass_writeResults.name;
	image_mean.passname 	= pass_writeResults.name;
	pass_writeResults.bind("buff_values", buff_values.name);
	pass_writeResults.bind("image_mm", image_mm.name);
	pass_writeResults.bind("image_MM", image_MM.name);
	pass_writeResults.bind("image_mean", image_mean.name);
	pass_writeResults.param("pc.readOffset", offset[0]);
	pass_writeResults.param("pc.normalizer", 1.0 / N);
	pass_writeResults.workgroups = [1,1,1];
	pass_writeResults.bang();

	outlet(3, "jit_gpu_image", image_mm.name);
	outlet(2, "jit_gpu_image", image_MM.name);
	outlet(1, "jit_gpu_image", image_mean.name);
	outlet(0, "bang");
}