autowhatch = 1; outlets = 5;

/*===========
BVH Layout (single nodes buffer, 32 bytes per node):
const uint LEAF_BIT = 0x80000000u;

struct Node {
    vec3 mm;        // AABB min
    uint leftChild; // internal: left child node index; leaf: LEAF_BIT | startIndexInSortedKeys
    vec3 MM;        // AABB max
    uint rightChild;// internal: right child node index; leaf: count (1..8)
};

Decode:
uint meta = nodes[node].leftChild;
bool isLeaf = (meta & LEAF_BIT) != 0u;

if (isLeaf) {
  uint start = meta & ~LEAF_BIT;
  uint count = nodes[node].rightChild;
  // primitives are key[start + k].primID for k in [0..count)
} else {
  left  = int(meta);
  right = int(nodes[node].rightChild);
}
===============================*/

var N;         // number of primitives (triangles)
var Nleaves;   // number of BVH leaves = ceil(N / LEAF_SIZE)
var time = 0;  // running time variables for procedural noise
var camPos = [0,0,2];
var camDir = [0,0,-1];
var MAX_AABB_DEPTH_PASSES; // safe upper bound for 32-bit morton + 32-bit tie-break
var inMat;

var _debug = 0;
var _render_ao = 0;

// Leaf size: 2..8 recommended (4 or 8 are common)
var LEAF_SIZE = 1;

var RADIX_BITS      = 8;
var RADIX_BINS      = 1 << RADIX_BITS;   // 256
var RADIX_PASSES    = 4;                 // 32-bit morton
var RADIX_WG_SIZE   = 128;               // matches shaders

var buff_mesh            = new JitterObject("jit.gpu.buffer");
var buff_minMax          = new JitterObject("jit.gpu.buffer"); // min/max for normalization
var buff_normPos         = new JitterObject("jit.gpu.buffer"); // sorted primitive keys (Key{morton, primID})
var buff_normPosTmp      = new JitterObject("jit.gpu.buffer"); // ping-pong

// NEW: leaf keys for topology build (Key{morton, primID} but primID is leaf index)
var buff_leafKeys        = new JitterObject("jit.gpu.buffer");

var buff_nodeParent      = new JitterObject("jit.gpu.buffer");
var buff_nodes           = new JitterObject("jit.gpu.buffer");
var buff_internalDepth   = new JitterObject("jit.gpu.buffer"); // depth of internal nodes (Nleaves-1 uints)

var buff_radixGroupHists   = new JitterObject("jit.gpu.buffer"); // [numGroups * 256] uint
var buff_radixGroupOffsets = new JitterObject("jit.gpu.buffer"); // [numGroups * 256] uint
var buff_radixBinBase      = new JitterObject("jit.gpu.buffer"); // [256] uint

var img_res = new JitterObject("jit.gpu.image");
img_res.format = "rgba32_float";
img_res.dim = [1920, 1080];

var comp_minMax = new JitterObject("jit.gpu.compute"); // Find min/max
comp_minMax.shader = "comp_minMax.comp";
comp_minMax.bind("buff_mesh", buff_mesh.name);
comp_minMax.bind("buff_minMax", buff_minMax.name);

// PASS 0 fused: normalize+morton + group hist for pass0
var comp_gen_keys_hist0 = new JitterObject("jit.gpu.compute");
comp_gen_keys_hist0.shader = "comp_gen_keys_hist0.comp";
comp_gen_keys_hist0.bind("buff_mesh",       buff_mesh.name);            // binding = 0
comp_gen_keys_hist0.bind("buff_minMax",     buff_minMax.name);          // binding = 1
comp_gen_keys_hist0.bind("buff_keys",       buff_normPos.name);         // binding = 2 (A)
comp_gen_keys_hist0.bind("buff_groupHists", buff_radixGroupHists.name); // binding = 3

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

// NEW: build leaf keys from sorted primitive keys
var comp_build_leaf_keys = new JitterObject("jit.gpu.compute");
comp_build_leaf_keys.shader = "comp_build_leaf_keys.comp";
comp_build_leaf_keys.bind("buff_primKeys", buff_normPos.name);
comp_build_leaf_keys.bind("buff_leafKeys", buff_leafKeys.name);

// ------------------------------------------------

var comp_build_topology = new JitterObject("jit.gpu.compute"); // Build topology (on leaf keys)
comp_build_topology.shader = "comp_build_topology.comp";
// NOTE: shader expects block name "buff_normPos", we bind leaf keys there:
comp_build_topology.bind("buff_normPos", buff_leafKeys.name);
comp_build_topology.bind("buff_nodeParent", buff_nodeParent.name);
comp_build_topology.bind("buff_nodes", buff_nodes.name);

var comp_init_leaves = new JitterObject("jit.gpu.compute"); // Init leaves (AABB over up to LEAF_SIZE prims)
comp_init_leaves.shader = "comp_init_leaves.comp";
comp_init_leaves.bind("buff_mesh", buff_mesh.name);
comp_init_leaves.bind("buff_normPos", buff_normPos.name); // sorted primitive keys
comp_init_leaves.bind("buff_nodes", buff_nodes.name);

var comp_build_depth = new JitterObject("jit.gpu.compute"); // Compute internal-node depth from root
comp_build_depth.shader = "comp_build_depth.comp";
comp_build_depth.bind("buff_nodeParent", buff_nodeParent.name);
comp_build_depth.bind("buff_internalDepth", buff_internalDepth.name);

var comp_build_aabb = new JitterObject("jit.gpu.compute"); // Union child AABBs for internal nodes
comp_build_aabb.shader = "comp_build_aabb.comp";
comp_build_aabb.bind("buff_internalDepth", buff_internalDepth.name);
comp_build_aabb.bind("buff_nodes", buff_nodes.name);

var comp_raytrace = new JitterObject("jit.gpu.compute"); // Raytrace BVH
comp_raytrace.shader = "comp_raytrace.comp";
comp_raytrace.bind("buff_mesh", buff_mesh.name);
comp_raytrace.bind("buff_nodes", buff_nodes.name);
// NEW: raytracer needs sorted primitive keys to map leaf ranges -> primIDs
comp_raytrace.bind("buff_keys", buff_normPos.name);
comp_raytrace.bind("img_res", img_res.name);

function jit_matrix(inname){
	inMat = new JitterMatrix(inname);
	let numTri = inMat.dim / 3;
	init_particles(numTri);
	buff_mesh.jit_matrix(inname);
	build_BVH();
}

function check_build_speed(x){ _debug = x; }
function render_ao(x){
	_render_ao = x;
	comp_raytrace.param("render_ao", _render_ao);
}
function lookAtCenter(x){
	let l = Math.sqrt(x[0]*x[0] + x[1]*x[1] + x[2]*x[2]);
	return [-x[0]/l, -x[1]/l, -x[2]/l];
}

function set_camPos(){
	camPos = [arguments[0], arguments[1], arguments[2]];
	comp_raytrace.param("cam.pos", camPos);
	//comp_raytrace.param("cam.dir", lookAtCenter(camPos));
}

function set_camDir(){
	camDir = [arguments[0], arguments[1], arguments[2]];
	comp_raytrace.param("cam.dir", camDir);
}

function init_particles(x){

	N = x; // primitives
	Nleaves = Math.ceil(N / LEAF_SIZE);

	// Depth loop bound: base it on leaves (tree size), not primitives
	MAX_AABB_DEPTH_PASSES = Math.ceil(Math.log2(Math.max(2, Nleaves))) + 32;

	const numNodes     = Math.max(1, 2 * Nleaves - 1);
	const numInternal  = Math.max(0, Nleaves - 1);
	const numRadixGroups = Math.max(1, Math.ceil(N / RADIX_WG_SIZE));

	// Primitive key buffers (sorting stays on primitives)
	buff_normPos.bytecount     = N * 8;   // Key{morton, primID}
	buff_normPosTmp.bytecount  = N * 8;

	// Min/max reduction
	buff_minMax.bytecount      = Math.ceil(N / 256) * 32;

	// Leaf keys for topology
	buff_leafKeys.bytecount    = Nleaves * 8;

	// BVH buffers sized by leaves
	buff_nodeParent.bytecount    = numNodes * 4;
	buff_nodes.bytecount         = numNodes * 32;
	buff_internalDepth.bytecount = Math.max(1, numInternal) * 4; // avoid 0-byte buffers

	// Workgroups
	comp_build_leaf_keys.workgroups = [Math.max(1, Math.ceil(Nleaves / 256)), 1, 1];
	comp_build_topology.workgroups  = [Math.max(1, Math.ceil((Nleaves - 1) / 256)), 1, 1];
	comp_init_leaves.workgroups     = [Math.max(1, Math.ceil(Nleaves / 256)), 1, 1];

	comp_build_depth.workgroups     = [Math.max(1, Math.ceil(numInternal / 256)), 1, 1];
	comp_build_aabb.workgroups      = [Math.max(1, Math.ceil(numInternal / 256)), 1, 1];

	// Raytrace (use autoworkgroups if you prefer)
	comp_raytrace.workgroups = [Math.ceil(img_res.dim[0] / 16), Math.ceil(img_res.dim[1] / 16), 1];

	// ---- Sorting params (primitives) ----
	comp_gen_keys_hist0.param("N", N);
	comp_gen_keys_hist0.workgroups = [numRadixGroups, 1, 1];

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

	buff_radixGroupHists.bytecount   = numRadixGroups * RADIX_BINS * 4;
	buff_radixGroupOffsets.bytecount = numRadixGroups * RADIX_BINS * 4;
	buff_radixBinBase.bytecount      = RADIX_BINS * 4;

	// ---- Leaf-key builder params ----
	comp_build_leaf_keys.param("Nprims", N);
	comp_build_leaf_keys.param("Nleaves", Nleaves);
	comp_build_leaf_keys.param("leafSize", LEAF_SIZE);

	// ---- Topology / BVH params (leaves) ----
	comp_build_topology.param("N", Nleaves);

	// comp_init_leaves.comp expects these uniforms in the cfg block
	comp_init_leaves.param("NLeaves", Nleaves);
	comp_init_leaves.param("NPrims",  N);
	comp_init_leaves.param("leafSize", LEAF_SIZE);

	comp_build_depth.param("N", Nleaves);
	comp_build_aabb.param("N",  Nleaves);

	// Raytrace uses N = Nleaves (root index is Nleaves, except Nleaves==1 handled in shader)
	comp_raytrace.param("N", Nleaves);
	comp_raytrace.param("size",    [img_res.dim[0], img_res.dim[1]]);
	comp_raytrace.param("fsize",   [img_res.dim[0], img_res.dim[1]]);
	comp_raytrace.param("invSize", [1/(img_res.dim[0]-1), 1/(img_res.dim[1]-1)]);
	comp_raytrace.param("invRatio",[img_res.dim[1]/img_res.dim[0]]);
}

function build_BVH(){

	// compute min and max position (for normalization)
	let wg = N;
	let iteration = 0;
	while (wg > 1) {
		comp_minMax.param("N", wg);
		wg = Math.ceil(wg / 256);
		comp_minMax.param("iteration", iteration);
		comp_minMax.workgroups = [wg, 1, 1];
		comp_minMax.bang();
		iteration++;
	}

	// PASS 0 fused: generate keys into A + compute group hist shift=0
	comp_gen_keys_hist0.bang();

	// scan + scatter for pass 0
	comp_radix_scan_groups.bang();
	comp_radix_scatter_A2B.param("shift", 0);
	comp_radix_scatter_A2B.bang();

	// remaining passes 1..3
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

	// Build leaf keys from sorted primitive keys
	comp_build_leaf_keys.bang();

	// Build topology (only if at least 2 leaves)
	if (Nleaves > 1) {
		comp_build_topology.bang();
	}

	// Init leaves (always)
	comp_init_leaves.bang();

	// Internal depths + AABBs only if internal nodes exist
	if (Nleaves > 1) {
		comp_build_depth.bang();

		for (let d = MAX_AABB_DEPTH_PASSES - 1; d >= 0; --d) {
			comp_build_aabb.param("targetDepth", d);
			comp_build_aabb.bang();
		}
	}
}

function bang(){

	if (!_debug) {
		// trace rays
		comp_raytrace.bang();

		outlet(3, "source", img_res.name);
		outlet(3, "bang");
	}

	outlet(0, "bang");
}