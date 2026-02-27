autowhatch = 1; outlets = 5;

/*===========
Layout:
const uint LEAF_BIT = 0x80000000u;

// Leaf node:
nodeAabbMin[node].w = uintBitsToFloat(LEAF_BIT | primID);
nodeAabbMax[node].w = uintBitsToFloat(0u); // unused

// Internal node:
nodeAabbMin[node].w = uintBitsToFloat(uint(leftChildIndex));     // LEAF_BIT = 0
nodeAabbMax[node].w = uintBitsToFloat(uint(rightChildIndex));

Decode:
uint meta = floatBitsToUint(nodeAabbMin[node].w);
bool isLeaf = (meta & LEAF_BIT) != 0u;

if (isLeaf) primID = int(meta & ~LEAF_BIT);
else {
  left  = int(meta);
  right = int(floatBitsToUint(nodeAabbMax[node].w));
}
===============================*/

var N; //number of particles
var time = 0; //running time variables for procedural noise
var camPos = [0,0,2];
var camDir = [0,0,-1];
var MAX_AABB_DEPTH_PASSES; // safe upper bound for 32-bit morton + 32-bit tie-break
var inMat;

var _debug = 0;

var RADIX_BITS      = 8;
var RADIX_BINS      = 1 << RADIX_BITS;   // 256
var RADIX_PASSES    = 4;                 // 32-bit morton
var RADIX_WG_SIZE   = 128;               // matches shaders

var buff_mesh 			= new JitterObject("jit.gpu.buffer");
var buff_minMax 		= new JitterObject("jit.gpu.buffer"); //the buffer containing the particles' position min and max
var buff_normPos 		= new JitterObject("jit.gpu.buffer"); //contains positions after normalization and morton codes
var buff_nodeParent 	= new JitterObject("jit.gpu.buffer");
var buff_nodeAabbMin 	= new JitterObject("jit.gpu.buffer");
var buff_nodeAabbMax	= new JitterObject("jit.gpu.buffer");
var buff_internalDepth  = new JitterObject("jit.gpu.buffer"); // depth of internal nodes (N-1 uints)

var buff_normPosTmp        = new JitterObject("jit.gpu.buffer"); // ping-pong
var buff_radixGroupHists   = new JitterObject("jit.gpu.buffer"); // [numGroups * 256] uint
var buff_radixGroupOffsets = new JitterObject("jit.gpu.buffer"); // [numGroups * 256] uint
var buff_radixBinBase      = new JitterObject("jit.gpu.buffer"); // [256] uint


//var buff_test 			= new JitterObject("jit.gpu.buffer"); //temporary buffer for debugging

//var img_test = new JitterObject("jit.gpu.image");
//img_test.format = "rgba32_float";

var img_res = new JitterObject("jit.gpu.image");
img_res.format = "rgba32_float";
img_res.dim = [960, 540];


var comp_minMax = new JitterObject("jit.gpu.compute"); //Find min and max in the buffer
comp_minMax.shader = "comp_minMax.comp";
comp_minMax.bind("buff_mesh", buff_mesh.name);
comp_minMax.bind("buff_minMax", buff_minMax.name);

// NEW: normalize+morton + group hist for pass0
var comp_gen_keys_hist0 = new JitterObject("jit.gpu.compute");
comp_gen_keys_hist0.shader = "comp_gen_keys_hist0.comp";  // name it however you like
comp_gen_keys_hist0.bind("buff_mesh",      buff_mesh.name);        // binding = 0
comp_gen_keys_hist0.bind("buff_minMax",    buff_minMax.name);      // binding = 1
comp_gen_keys_hist0.bind("buff_keys",      buff_normPos.name);     // binding = 2 (A)
comp_gen_keys_hist0.bind("buff_groupHists",buff_radixGroupHists.name);  // binding = 3

// --- Stable radix sort kernels ---

var comp_radix_group_hist_A = new JitterObject("jit.gpu.compute");
comp_radix_group_hist_A.shader = "comp_radix_group_hist.comp";
comp_radix_group_hist_A.bind("buff_in", buff_normPos.name);
comp_radix_group_hist_A.bind("buff_groupHists", buff_radixGroupHists.name);

var comp_radix_group_hist_B = new JitterObject("jit.gpu.compute");
comp_radix_group_hist_B.shader = "comp_radix_group_hist.comp";
comp_radix_group_hist_B.bind("buff_in", buff_normPosTmp.name);
comp_radix_group_hist_B.bind("buff_groupHists", buff_radixGroupHists.name);

var comp_radix_scan_groups = new JitterObject("jit.gpu.compute");
comp_radix_scan_groups.shader = "comp_radix_scan_groups.comp";
comp_radix_scan_groups.bind("buff_groupHists", buff_radixGroupHists.name);
comp_radix_scan_groups.bind("buff_groupOffsets", buff_radixGroupOffsets.name);
comp_radix_scan_groups.bind("buff_binBase", buff_radixBinBase.name);

var comp_radix_scatter_A2B = new JitterObject("jit.gpu.compute");
comp_radix_scatter_A2B.shader = "comp_radix_scatter_stable.comp";
comp_radix_scatter_A2B.bind("buff_in", buff_normPos.name);
comp_radix_scatter_A2B.bind("buff_out", buff_normPosTmp.name);
comp_radix_scatter_A2B.bind("buff_groupOffsets", buff_radixGroupOffsets.name);
comp_radix_scatter_A2B.bind("buff_binBase", buff_radixBinBase.name);

var comp_radix_scatter_B2A = new JitterObject("jit.gpu.compute");
comp_radix_scatter_B2A.shader = "comp_radix_scatter_stable.comp";
comp_radix_scatter_B2A.bind("buff_in", buff_normPosTmp.name);
comp_radix_scatter_B2A.bind("buff_out", buff_normPos.name);
comp_radix_scatter_B2A.bind("buff_groupOffsets", buff_radixGroupOffsets.name);
comp_radix_scatter_B2A.bind("buff_binBase", buff_radixBinBase.name);

// ------------------------------------------------

var comp_build_topology = new JitterObject("jit.gpu.compute"); //Build topology
comp_build_topology.shader = "comp_build_topology.comp";
comp_build_topology.bind("buff_normPos", buff_normPos.name);
comp_build_topology.bind("buff_nodeParent", buff_nodeParent.name);
comp_build_topology.bind("buff_nodeAabbMin", buff_nodeAabbMin.name);
comp_build_topology.bind("buff_nodeAabbMax", buff_nodeAabbMax.name);

var comp_init_leaves = new JitterObject("jit.gpu.compute"); //init leaves
comp_init_leaves.shader = "comp_init_leaves.comp";
comp_init_leaves.bind("buff_mesh", buff_mesh.name);
comp_init_leaves.bind("buff_normPos", buff_normPos.name);
comp_init_leaves.bind("buff_nodeAabbMin", buff_nodeAabbMin.name);
comp_init_leaves.bind("buff_nodeAabbMax", buff_nodeAabbMax.name);

var comp_build_depth = new JitterObject("jit.gpu.compute"); // compute internal-node depth from root
comp_build_depth.shader = "comp_build_depth.comp";
comp_build_depth.bind("buff_nodeParent", buff_nodeParent.name);
comp_build_depth.bind("buff_internalDepth", buff_internalDepth.name);

var comp_build_aabb = new JitterObject("jit.gpu.compute");
comp_build_aabb.shader = "comp_build_aabb.comp";
comp_build_aabb.bind("buff_internalDepth", buff_internalDepth.name);
comp_build_aabb.bind("buff_nodeAabbMin", buff_nodeAabbMin.name);
comp_build_aabb.bind("buff_nodeAabbMax", buff_nodeAabbMax.name);

/*
var comp_test = new JitterObject("jit.gpu.compute"); //Debug: copy bounding volumes and display
comp_test.shader = "comp_test.comp";
comp_test.bind("buff_nodeAabbMin", buff_nodeAabbMin.name);
comp_test.bind("buff_nodeAabbMax", buff_nodeAabbMax.name);
comp_test.bind("buff_test", buff_test.name);
comp_test.bind("img_test", img_test.name);
*/

var comp_raytrace = new JitterObject("jit.gpu.compute"); //Raytrace into the BVH and display intersections
comp_raytrace.shader = "comp_raytrace.comp";
comp_raytrace.bind("buff_mesh", buff_mesh.name);
comp_raytrace.bind("buff_nodeAabbMin", buff_nodeAabbMin.name);
comp_raytrace.bind("buff_nodeAabbMax", buff_nodeAabbMax.name);
comp_raytrace.bind("img_res", img_res.name);


function jit_matrix(inname){
	inMat = new JitterMatrix(inname);
	let numTri = inMat.dim / 3;
	init_particles(numTri);
	buff_mesh.jit_matrix(inname);
	build_BVH();
}

function check_build_speed(x){ _debug = x; }
function lookAtCenter(x){
	let l = Math.sqrt(x[0]*x[0] + x[1]*x[1] + x[2]*x[2]);
	return [-x[0]/l, -x[1]/l, -x[2]/l];
}

function set_camPos(){ 
	camPos = [arguments[0], arguments[1], arguments[2]]; 
	comp_raytrace.param("cam.pos", camPos);
	comp_raytrace.param("cam.dir", lookAtCenter(camPos));
}

function set_camDir(){ 
	camDir = [arguments[0], arguments[1], arguments[2]]; 
	//comp_raytrace.param("cam.dir", camDir);
}

function init_particles(x){

	N = x;

	MAX_AABB_DEPTH_PASSES = Math.ceil(Math.log2(N)) + 16; //8 is a small margin

    const numNodes = 2*N - 1;
    const numInternal = N - 1;
    const numRadixGroups = 64;//Math.ceil(N / RADIX_WG_SIZE);

	buff_normPos.bytecount    	= N * 8;   // Key{morton, primID}
	buff_minMax.bytecount 		= Math.ceil(N/256) * 32;
	//buff_test.bytecount 		= numNodes * 16;
	buff_nodeParent.bytecount 	= numNodes * 4;
	buff_nodeAabbMin.bytecount 	= numNodes * 16;
	buff_nodeAabbMax.bytecount 	= numNodes * 16;

	buff_internalDepth.bytecount = numInternal * 4; // uint per internal node

	//img_test.dim = [24, numNodes];

	comp_build_topology.workgroups 	= [Math.ceil((N - 1) / 256), 1, 1];
	comp_init_leaves.workgroups 	= [Math.ceil(N / 256), 1, 1];

	comp_build_depth.workgroups    = [Math.ceil(numInternal / 256), 1, 1];
	comp_build_aabb.workgroups     = [Math.ceil(numInternal / 256), 1, 1];

	//comp_build_aabb.workgroups 		= [Math.ceil(N / 256), 1, 1];
	//comp_test.workgroups 			= [Math.ceil(numNodes / 256), 1, 1];

	//*** use "autoworkgroups" for this
	comp_raytrace.workgroups = [Math.ceil(img_res.dim[0] / 16), Math.ceil(img_res.dim[1] / 16), 1];

    comp_build_topology.param("N", N);
    comp_init_leaves.param("N", N);

	comp_build_depth.param("N", N);
	comp_build_aabb.param("N", N);

	buff_normPosTmp.bytecount        = N * 8;   // ping-pong
	buff_radixGroupHists.bytecount   = numRadixGroups * RADIX_BINS * 4;
	buff_radixGroupOffsets.bytecount = numRadixGroups * RADIX_BINS * 4;
	buff_radixBinBase.bytecount      = RADIX_BINS * 4;

	comp_gen_keys_hist0.param("N", N);
	comp_gen_keys_hist0.workgroups = [numRadixGroups, 1, 1];      // MUST match RADIX_WG_SIZE(128)

	comp_radix_group_hist_A.workgroups = [numRadixGroups, 1, 1];
	comp_radix_group_hist_B.workgroups = [numRadixGroups, 1, 1];
	comp_radix_scan_groups.workgroups  = [1, 1, 1];
	comp_radix_scatter_A2B.workgroups  = [numRadixGroups, 1, 1];
	comp_radix_scatter_B2A.workgroups  = [numRadixGroups, 1, 1];

	comp_radix_group_hist_A.param("N", N);
	comp_radix_group_hist_B.param("N", N);

	comp_radix_scan_groups.param("numGroups", numRadixGroups);

	comp_radix_scatter_A2B.param("N", N);
	comp_radix_scatter_B2A.param("N", N);

    comp_raytrace.param("N", N);
    comp_raytrace.param("size", 	[img_res.dim[0], img_res.dim[1]]);
    comp_raytrace.param("fsize", 	[img_res.dim[0], img_res.dim[1]]);
    comp_raytrace.param("invSize", 	[1/(img_res.dim[0]-1), 1/(img_res.dim[1]-1)]);
    comp_raytrace.param("invRatio", [img_res.dim[1]/img_res.dim[0]]);
}

function build_BVH(){

	//compute min and max position (for normalization);
	let wg = N;
	let iteration = 0;
	while(wg > 1){
		comp_minMax.param("N", wg);
		wg = Math.ceil(wg / 256);
		comp_minMax.param("iteration", iteration);
		comp_minMax.workgroups = [wg, 1, 1];
		comp_minMax.bang();
		iteration++;
	}

	// PASS 0 fused: generate keys into A + compute group hist shift=0
	comp_gen_keys_hist0.bang();

	// scan + scatter for pass 0 (same as before)
	comp_radix_scan_groups.bang();
	comp_radix_scatter_A2B.param("shift", 0);
	comp_radix_scatter_A2B.bang();

	// remaining passes 1..3 unchanged
	for (let pass = 1; pass < RADIX_PASSES; ++pass) {
	    let shift = pass * RADIX_BITS;

	    if ((pass & 1) === 0) {
	        // A -> B
	        comp_radix_group_hist_A.param("shift", shift);
	        comp_radix_group_hist_A.bang();

	        comp_radix_scan_groups.bang();

	        comp_radix_scatter_A2B.param("shift", shift);
	        comp_radix_scatter_A2B.bang();
	    } else {
	        // B -> A
	        comp_radix_group_hist_B.param("shift", shift);
	        comp_radix_group_hist_B.bang();

	        comp_radix_scan_groups.bang();

	        comp_radix_scatter_B2A.param("shift", shift);
	        comp_radix_scatter_B2A.bang();
	    }
	}

    //build topology
    comp_build_topology.bang();

    //init leaves
    comp_init_leaves.bang();

	// Compute internal-node depths (from root)
	comp_build_depth.bang();

	// Build AABBs from deepest internal level up to the root
	for (let d = MAX_AABB_DEPTH_PASSES - 1; d >= 0; --d) {
	    comp_build_aabb.param("targetDepth", d);
	    comp_build_aabb.bang();
	}
}

function bang(){

/*
    //display nodes
    comp_test.param("count", 2*N - 1);
    comp_test.param("N", N);
    comp_test.bang();

    outlet(2, "source", buff_part.name);
	outlet(2, "bang");

    outlet(1, "source", img_test.name);
	outlet(1, "bang");
*/

	if(!_debug){
	    //trace rays
	    comp_raytrace.bang();

	    outlet(3, "source", img_res.name);
		outlet(3, "bang");		
	}

    outlet(0, "bang");
}