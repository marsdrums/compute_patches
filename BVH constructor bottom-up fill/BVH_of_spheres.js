autowhatch = 1; outlets = 5;

var N; //number of particles
var time = 0; //running time variables for procedural noise
var np2, numPairs, numStages; //sorting params
var camPos = [0,0,2];
var camDir = [0,0,-1];

var buff_part 			= new JitterObject("jit.gpu.buffer"); //the buffer containing the particles' position and radii
var buff_minMax 		= new JitterObject("jit.gpu.buffer"); //the buffer containing the particles' position min and max
var buff_normPos 		= new JitterObject("jit.gpu.buffer"); //contains positions after normalization and morton codes
var buff_nodeChild 		= new JitterObject("jit.gpu.buffer");
var buff_nodeParent 	= new JitterObject("jit.gpu.buffer");
var buff_nodeAabbMin 	= new JitterObject("jit.gpu.buffer");
var buff_nodeAabbMax	= new JitterObject("jit.gpu.buffer");
var buff_nodePrim 		= new JitterObject("jit.gpu.buffer");
var buff_test 			= new JitterObject("jit.gpu.buffer"); //temporary buffer for debugging
var buff_nodeReady      = new JitterObject("jit.gpu.buffer"); // atomic arrival counters for internals (N-1)


var img_test = new JitterObject("jit.gpu.image");
img_test.format = "rgba32_float";

var img_res = new JitterObject("jit.gpu.image");
img_res.format = "rgba32_float";
img_res.dim = [960, 540];

var comp_gen_rand_pos = new JitterObject("jit.gpu.compute"); //generate random positions and radii
comp_gen_rand_pos.shader = "comp_gen_rand_pos.comp";
comp_gen_rand_pos.bind("buff_part", buff_part.name);

var comp_minMax = new JitterObject("jit.gpu.compute"); //Find min and max in the buffer
comp_minMax.shader = "comp_minMax.comp";
comp_minMax.bind("buff_part", buff_part.name);
comp_minMax.bind("buff_minMax", buff_minMax.name);

var comp_normalize_pos = new JitterObject("jit.gpu.compute"); //Normalize positions and compute morton codes
comp_normalize_pos.shader = "comp_normalize_pos.comp";
comp_normalize_pos.bind("buff_part", buff_part.name);
comp_normalize_pos.bind("buff_minMax", buff_minMax.name);
comp_normalize_pos.bind("buff_normPos", buff_normPos.name);

var comp_sort = new JitterObject("jit.gpu.compute"); //Sort the morton codes
comp_sort.shader = "comp_sort.comp";
comp_sort.bind("buff_normPos", buff_normPos.name);

var comp_init_nodes = new JitterObject("jit.gpu.compute"); //Init parent nodes as -1
comp_init_nodes.shader = "comp_init_nodes.comp";
comp_init_nodes.bind("buff_nodeParent", buff_nodeParent.name);
comp_init_nodes.bind("buff_nodeChild", buff_nodeChild.name);
comp_init_nodes.bind("buff_nodePrim", buff_nodePrim.name);
comp_init_nodes.bind("buff_nodeAabbMin", buff_nodeAabbMin.name);
comp_init_nodes.bind("buff_nodeAabbMax", buff_nodeAabbMax.name);

var comp_build_topology = new JitterObject("jit.gpu.compute"); //Build topology
comp_build_topology.shader = "comp_build_topology.comp";
comp_build_topology.bind("buff_normPos", buff_normPos.name);
comp_build_topology.bind("buff_nodeChild", buff_nodeChild.name);
comp_build_topology.bind("buff_nodeParent", buff_nodeParent.name);

var comp_init_leaves = new JitterObject("jit.gpu.compute"); //init leaves
comp_init_leaves.shader = "comp_init_leaves.comp";
comp_init_leaves.bind("buff_part", buff_part.name);
comp_init_leaves.bind("buff_normPos", buff_normPos.name);
comp_init_leaves.bind("buff_nodeChild", buff_nodeChild.name);
comp_init_leaves.bind("buff_nodeAabbMin", buff_nodeAabbMin.name);
comp_init_leaves.bind("buff_nodeAabbMax", buff_nodeAabbMax.name);
comp_init_leaves.bind("buff_nodePrim", buff_nodePrim.name);

var comp_reset_nodeReady = new JitterObject("jit.gpu.compute");
comp_reset_nodeReady.shader = "comp_reset_nodeReady.comp";
comp_reset_nodeReady.bind("buff_nodeReady", buff_nodeReady.name);

var comp_refit_bottomup = new JitterObject("jit.gpu.compute");
comp_refit_bottomup.shader = "comp_refit_bottomup.comp";
comp_refit_bottomup.bind("buff_nodeParent", buff_nodeParent.name);
comp_refit_bottomup.bind("buff_nodeChild", buff_nodeChild.name);
comp_refit_bottomup.bind("buff_nodeAabbMin", buff_nodeAabbMin.name);
comp_refit_bottomup.bind("buff_nodeAabbMax", buff_nodeAabbMax.name);
comp_refit_bottomup.bind("buff_nodeReady", buff_nodeReady.name);

var comp_test = new JitterObject("jit.gpu.compute"); //Debug: copy bounding volumes and display
comp_test.shader = "comp_test.comp";
comp_test.bind("buff_nodeAabbMin", buff_nodeAabbMin.name);
comp_test.bind("buff_nodeAabbMax", buff_nodeAabbMax.name);
comp_test.bind("buff_test", buff_test.name);
comp_test.bind("img_test", img_test.name);

var comp_raytrace = new JitterObject("jit.gpu.compute"); //Raytrace into the BVH and display intersections
comp_raytrace.shader = "comp_raytrace.comp";
comp_raytrace.bind("buff_part", buff_part.name);
comp_raytrace.bind("buff_nodeChild", buff_nodeChild.name);
comp_raytrace.bind("buff_nodeAabbMin", buff_nodeAabbMin.name);
comp_raytrace.bind("buff_nodeAabbMax", buff_nodeAabbMax.name);
comp_raytrace.bind("buff_nodePrim", buff_nodePrim.name);
comp_raytrace.bind("img_res", img_res.name);

init_particles(10000);

function set_camPos(){ 
	camPos = [arguments[0], arguments[1], arguments[2]]; 
	comp_raytrace.param("cam.pos", camPos);
}

function set_camDir(){ 
	camDir = [arguments[0], arguments[1], arguments[2]]; 
	comp_raytrace.param("cam.dir", camDir);
}

function nextPowerOfTwo(x){ //bit-twiddling
    if (x <= 1){ return 1; }
    x--;
    x |= x >> 1; x |= x >> 2; x |= x >> 4; x |= x >> 8; x |= x >> 16;
    return x + 1;
}

function init_particles(x){

	N = x;

	np2 = nextPowerOfTwo(x);
    numPairs = np2 / 2;
    numStages = Math.log2(np2);

    const numNodes = 2*N - 1;
    const numInternal = N - 1;

	buff_part.bytecount 		= N * 16;
	buff_normPos.bytecount 		= N * 32;
	buff_minMax.bytecount 		= Math.ceil(N/256) * 32;
	buff_test.bytecount 		= numNodes * 16;
	buff_nodeChild.bytecount 	= numNodes * 8;
	buff_nodeParent.bytecount 	= numNodes * 4;
	buff_nodeAabbMin.bytecount 	= numNodes * 16;
	buff_nodeAabbMax.bytecount 	= numNodes * 16;
	buff_nodePrim.bytecount 	= numNodes * 4;

	buff_nodeReady.bytecount    = numInternal * 4; // uint per internal node

	img_test.dim = [24, numNodes];

	comp_gen_rand_pos.workgroups 	= [Math.ceil(N / 256), 1, 1];
	comp_normalize_pos.workgroups 	= [Math.ceil(N / 256), 1, 1];
	comp_sort.workgroups 			= [Math.ceil(numPairs / 128), 1, 1];
	comp_init_nodes.workgroups 		= [Math.ceil(numNodes/256), 1, 1];
	comp_build_topology.workgroups 	= [Math.ceil((N - 1) / 256), 1, 1];
	comp_init_leaves.workgroups 	= [Math.ceil(N / 256), 1, 1];

	comp_reset_nodeReady.workgroups = [Math.ceil(numInternal / 256), 1, 1];
	comp_refit_bottomup.workgroups  = [Math.ceil(N / 256), 1, 1];

	comp_test.workgroups 			= [Math.ceil(numNodes / 256), 1, 1];

	//*** use "autoworkgroups" for this
	comp_raytrace.workgroups = [Math.ceil(img_res.dim[0] / 16), Math.ceil(img_res.dim[1] / 16), 1];

	comp_gen_rand_pos.param("N", N);
	comp_normalize_pos.param("N", N);
	comp_sort.param("pc.numValues", N);
	comp_init_nodes.param("count", 2*N - 1);
    comp_build_topology.param("N", N);
    comp_init_leaves.param("N", N);

	comp_reset_nodeReady.param("count", numInternal);
	comp_refit_bottomup.param("N", N);

    comp_raytrace.param("N", N);
    comp_raytrace.param("size", 	[img_res.dim[0], img_res.dim[1]]);
    comp_raytrace.param("fsize", 	[img_res.dim[0], img_res.dim[1]]);
    comp_raytrace.param("invSize", 	[1/(img_res.dim[0]-1), 1/(img_res.dim[1]-1)]);
    comp_raytrace.param("invRatio", [img_res.dim[1]/img_res.dim[0]]);
}

//var skip = 0;

function bang(){

	//generate random positions
	comp_gen_rand_pos.param("radius", 0.01);
	comp_gen_rand_pos.param("time", time);
	comp_gen_rand_pos.param("offset", 0.0);
	comp_gen_rand_pos.param("scale", 0.001);
	comp_gen_rand_pos.bang();
	time += 0.0005;
	//time += 0.000;
	//time += skip % 10 == 0 ? 0.001 : 0.0;
	//skip++;

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

	//Normalize positions
	comp_normalize_pos.bang();

	//Sort morton codes
    for(let stageIndex = 0; stageIndex < numStages; stageIndex++){
        for(let stepIndex = 0; stepIndex < stageIndex + 1; stepIndex++){
            
            let groupWidth = 1 << (stageIndex - stepIndex);
            let groupHeight = 2 * groupWidth - 1;
            comp_sort.param("pc.groupWidth", groupWidth);
            comp_sort.param("pc.groupHeight", groupHeight);
            comp_sort.param("pc.stepIndex", stepIndex);
            comp_sort.bang();
        }
    }

    //Init buff_nodeParent with the value -1
    comp_init_nodes.bang();

    //build topology
    comp_build_topology.bang();

    //init leaves
    comp_init_leaves.bang();

	// Bottom-up BVH refit in one pass (+ tiny counter reset)
	comp_reset_nodeReady.bang();
	comp_refit_bottomup.bang();


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

    //trace rays
    comp_raytrace.bang();

    outlet(3, "source", img_res.name);
	outlet(3, "bang");

    outlet(0, "bang");
}