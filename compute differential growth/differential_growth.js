autowhatch = 1; inlets = 1; outlets = 3;

var halfedgesOnly, edgesOnly, facesOnly, verticesOnly;
var halfedges_size, edges_size, vertices_size, faces_size, closed;
var face_capacity, edge_capacity;

const MAX_VERTEX_COUNT = 2000000;
var radius = 0.3;
var radius2 = radius*radius;
var force_strength = 0.00000004;
var smoothing_strength = 0.05;
var split_length = 0.05;
var target_length = split_length;/// 2;
var remesh_enable = 1;
var frame = 0;

var buff_halfedges 	= new JitterObject("jit.gpu.buffer");
var buff_edges 		= new JitterObject("jit.gpu.buffer");
var buff_faces 		= new JitterObject("jit.gpu.buffer");
var buff_vertices 	= new JitterObject("jit.gpu.buffer");
var buff_forces		= new JitterObject("jit.gpu.buffer");
var buff_keys 		= new JitterObject("jit.gpu.buffer"); 
var buff_neighbors  = new JitterObject("jit.gpu.buffer"); 
var buff_add_counts = new JitterObject("jit.gpu.buffer");
var buff_face_locks = new JitterObject("jit.gpu.buffer");
var buff_valence    = new JitterObject("jit.gpu.buffer");

var buff_halfedges_size 	= new JitterObject("jit.gpu.buffer");
var buff_edges_size 		= new JitterObject("jit.gpu.buffer");
var buff_faces_size 		= new JitterObject("jit.gpu.buffer");
var buff_vertices_size 		= new JitterObject("jit.gpu.buffer");

var img_out = new JitterObject("jit.gpu.image");
img_out.format = "rgba32_float";
img_out.dim = [2000, 2000];

var img_nor = new JitterObject("jit.gpu.image");
img_nor.format = "rgba32_float";
img_nor.dim = [2000, 2000];

var comp_init_counters        = new JitterObject("jit.gpu.compute"); comp_init_counters.shader        = "comp_init_counters.comp";
var comp_init_hash            = new JitterObject("jit.gpu.compute"); comp_init_hash.shader            = "comp_init_hash.comp";
var comp_sort_keys            = new JitterObject("jit.gpu.compute"); comp_sort_keys.shader            = "comp_sort_keys.comp";
var comp_find_key_start       = new JitterObject("jit.gpu.compute"); comp_find_key_start.shader       = "comp_find_key_start.comp";
var comp_calc_repulsive_force = new JitterObject("jit.gpu.compute"); comp_calc_repulsive_force.shader = "comp_calc_repulsive_force.comp";
var comp_calc_spring_force    = new JitterObject("jit.gpu.compute"); comp_calc_spring_force.shader    = "comp_calc_spring_force.comp";
var comp_apply_forces         = new JitterObject("jit.gpu.compute"); comp_apply_forces.shader         = "comp_apply_forces.comp";
var comp_init_neighbors_count = new JitterObject("jit.gpu.compute"); comp_init_neighbors_count.shader = "comp_init_neighbors_count.comp";
var comp_calc_smoothing       = new JitterObject("jit.gpu.compute"); comp_calc_smoothing.shader       = "comp_calc_smoothing.comp";
var comp_apply_smoothing      = new JitterObject("jit.gpu.compute"); comp_apply_smoothing.shader      = "comp_apply_smoothing.comp";
var comp_init_add_counts      = new JitterObject("jit.gpu.compute"); comp_init_add_counts.shader      = "comp_init_add_counts.comp";
var comp_split_edges          = new JitterObject("jit.gpu.compute"); comp_split_edges.shader          = "comp_split_edges.comp";
var comp_commit_sizes         = new JitterObject("jit.gpu.compute"); comp_commit_sizes.shader         = "comp_commit_sizes.comp";
var comp_init_face_locks      = new JitterObject("jit.gpu.compute"); comp_init_face_locks.shader      = "comp_init_face_locks.comp";
var comp_init_valence         = new JitterObject("jit.gpu.compute"); comp_init_valence.shader         = "comp_init_valence.comp";
var comp_calc_valence         = new JitterObject("jit.gpu.compute"); comp_calc_valence.shader         = "comp_calc_valence.comp";
var comp_remesh_flip          = new JitterObject("jit.gpu.compute"); comp_remesh_flip.shader          = "comp_remesh_flip.comp";
var comp_triangulate          = new JitterObject("jit.gpu.compute"); comp_triangulate.shader          = "comp_triangulate.comp";  

comp_init_counters.bind("buff_halfedges_size", buff_halfedges_size.name);
comp_init_counters.bind("buff_edges_size", buff_edges_size.name);
comp_init_counters.bind("buff_faces_size", buff_faces_size.name);
comp_init_counters.bind("buff_vertices_size", buff_vertices_size.name);

comp_init_hash.bind("buff_vertices", buff_vertices.name);
comp_init_hash.bind("buff_keys", buff_keys.name);
comp_init_hash.bind("buff_vertices_size", buff_vertices_size.name);

comp_sort_keys.bind("buff_keys", buff_keys.name);

comp_find_key_start.bind("buff_keys", buff_keys.name);
comp_find_key_start.bind("buff_vertices_size", buff_vertices_size.name);

comp_calc_repulsive_force.bind("buff_vertices", buff_vertices.name);
comp_calc_repulsive_force.bind("buff_keys", buff_keys.name);
comp_calc_repulsive_force.bind("buff_forces", buff_forces.name);
comp_calc_repulsive_force.bind("buff_vertices_size", buff_vertices_size.name);

comp_calc_spring_force.bind("buff_vertices", buff_vertices.name);
comp_calc_spring_force.bind("buff_halfedges", buff_halfedges.name);
comp_calc_spring_force.bind("buff_forces", buff_forces.name);
comp_calc_spring_force.bind("buff_halfedges_size", buff_halfedges_size.name);

comp_apply_forces.bind("buff_vertices", buff_vertices.name);
comp_apply_forces.bind("buff_forces", buff_forces.name);
comp_apply_forces.bind("buff_vertices_size", buff_vertices_size.name);

comp_init_neighbors_count.bind("buff_neighbors", buff_neighbors.name);
comp_init_neighbors_count.bind("buff_forces", buff_forces.name);
comp_init_neighbors_count.bind("buff_vertices_size", buff_vertices_size.name);

comp_calc_smoothing.bind("buff_vertices", buff_vertices.name);
comp_calc_smoothing.bind("buff_halfedges", buff_halfedges.name);
comp_calc_smoothing.bind("buff_neighbors", buff_neighbors.name);
comp_calc_smoothing.bind("buff_forces", buff_forces.name);
comp_calc_smoothing.bind("buff_halfedges_size", buff_halfedges_size.name);

comp_apply_smoothing.bind("buff_vertices", buff_vertices.name);
comp_apply_smoothing.bind("buff_neighbors", buff_neighbors.name);
comp_apply_smoothing.bind("buff_forces", buff_forces.name);
comp_apply_smoothing.bind("buff_vertices_size", buff_vertices_size.name);

comp_init_add_counts.bind("buff_add_counts", buff_add_counts.name);

comp_commit_sizes.bind("buff_vertices_size",  buff_vertices_size.name);
comp_commit_sizes.bind("buff_faces_size",     buff_faces_size.name);
comp_commit_sizes.bind("buff_halfedges_size", buff_halfedges_size.name);
comp_commit_sizes.bind("buff_edges_size",     buff_edges_size.name);
comp_commit_sizes.bind("buff_add_counts",     buff_add_counts.name);

comp_init_face_locks.bind("buff_face_locks", buff_face_locks.name);

comp_split_edges.bind("buff_vertices",       buff_vertices.name);
comp_split_edges.bind("buff_halfedges",      buff_halfedges.name);
comp_split_edges.bind("buff_edges",          buff_edges.name);
comp_split_edges.bind("buff_faces",          buff_faces.name);
comp_split_edges.bind("buff_vertices_size",  buff_vertices_size.name);
comp_split_edges.bind("buff_faces_size",     buff_faces_size.name);
comp_split_edges.bind("buff_halfedges_size", buff_halfedges_size.name);
comp_split_edges.bind("buff_edges_size",     buff_edges_size.name);
comp_split_edges.bind("buff_add_counts",     buff_add_counts.name);
comp_split_edges.bind("buff_face_locks",     buff_face_locks.name);

comp_init_valence.bind("buff_valence", buff_valence.name);
comp_init_valence.bind("buff_vertices_size", buff_vertices_size.name);

comp_calc_valence.bind("buff_halfedges", buff_halfedges.name);
comp_calc_valence.bind("buff_valence", buff_valence.name);
comp_calc_valence.bind("buff_halfedges_size", buff_halfedges_size.name);
comp_calc_valence.bind("buff_vertices_size", buff_vertices_size.name);

comp_remesh_flip.bind("buff_halfedges", buff_halfedges.name);
comp_remesh_flip.bind("buff_edges", buff_edges.name);
comp_remesh_flip.bind("buff_faces", buff_faces.name);
comp_remesh_flip.bind("buff_valence", buff_valence.name);
comp_remesh_flip.bind("buff_vertices_size", buff_vertices_size.name);
comp_remesh_flip.bind("buff_faces_size", buff_faces_size.name);
comp_remesh_flip.bind("buff_halfedges_size", buff_halfedges_size.name);
comp_remesh_flip.bind("buff_edges_size", buff_edges_size.name);
comp_remesh_flip.bind("buff_face_locks", buff_face_locks.name);

comp_triangulate.bind("buff_halfedges",     buff_halfedges.name);
comp_triangulate.bind("buff_faces",         buff_faces.name);
comp_triangulate.bind("buff_vertices",      buff_vertices.name);
comp_triangulate.bind("buff_faces_size",    buff_faces_size.name);
comp_triangulate.bind("img_out",            img_out.name);
comp_triangulate.bind("img_nor",            img_nor.name);

function set_radius(x){
    radius = x;
    radius2 = x*x;
}

function set_force_strength(x){
    force_strength = x*0.0000001;;
}

function set_workgroups(){
	comp_init_counters.workgroups 			= [1, 1, 1];
	comp_init_hash.workgroups  	 			= [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
	comp_find_key_start.workgroups  		= [Math.ceil(MAX_VERTEX_COUNT / 128), 1, 1];
	comp_calc_repulsive_force.workgroups 	= [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
	comp_calc_spring_force.workgroups 		= [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
	comp_apply_forces.workgroups 	        = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
    comp_init_neighbors_count.workgroups    = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
    comp_calc_smoothing.workgroups          = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
    comp_apply_smoothing.workgroups         = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
    comp_init_add_counts.workgroups         = [1, 1, 1];
    comp_split_edges.workgroups             = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
    comp_commit_sizes.workgroups            = [1, 1, 1];
    comp_init_valence.workgroups            = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
    comp_calc_valence.workgroups            = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
    comp_remesh_flip.workgroups             = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
    comp_triangulate.workgroups             = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
}

function set_params(){
	comp_init_counters.param("halfedges_size", halfedges_size);
	comp_init_counters.param("edges_size", edges_size);
	comp_init_counters.param("faces_size", faces_size);
	comp_init_counters.param("vertices_size", vertices_size);

	comp_calc_spring_force.param("target_length", target_length);

    comp_apply_smoothing.param("smoothing_strength", smoothing_strength);

    comp_split_edges.param("split_length", split_length);

    // capacities (must match what you allocated!)
    comp_split_edges.param("max_vertices", MAX_VERTEX_COUNT);
    comp_split_edges.param("max_faces", MAX_VERTEX_COUNT);
    comp_split_edges.param("max_edges", MAX_VERTEX_COUNT);
    //comp_split_edges.param("max_faces", face_capacity);
    //comp_split_edges.param("max_edges", edge_capacity);

    comp_remesh_flip.param("remesh_enable", remesh_enable); // 0 disables
}

function set_dim(){
	buff_keys.bytecount 		= MAX_VERTEX_COUNT * 4 * 3;
	buff_forces.bytecount 		= MAX_VERTEX_COUNT * 4 * 3;	
    buff_neighbors.bytecount    = MAX_VERTEX_COUNT * 4;
    buff_valence.bytecount      = MAX_VERTEX_COUNT * 4; 
}

function set_counters_bytecount(){
	//counters only store a 32bits uint
	buff_halfedges_size.bytecount 	= 4; 	
	buff_edges_size.bytecount 		= 4; 		
	buff_faces_size.bytecount 		= 4; 		
	buff_vertices_size.bytecount 	= 4; 
}

function set_passnames_and_blocknames(){
	buff_halfedges.passname = comp_split_edges.name; 	
	buff_edges.passname 	= comp_split_edges.name; 		
	buff_faces.passname 	= comp_split_edges.name; 		
	buff_vertices.passname 	= comp_split_edges.name; 	
	buff_halfedges.blockname 	= "buff_halfedges"; 		
	buff_edges.blockname 		= "buff_edges"; 				
	buff_faces.blockname 		= "buff_faces"; 				
	buff_vertices.blockname 	= "buff_vertices"; 		
}

function resize_buffers(vertices_size){

    buff_halfedges.bytecount    = MAX_VERTEX_COUNT * 4 * 8;   
    buff_edges.bytecount        = MAX_VERTEX_COUNT * 4 * 2;   
    buff_faces.bytecount        = MAX_VERTEX_COUNT * 4;   
    buff_vertices.bytecount     = MAX_VERTEX_COUNT * 4 * 3;
}

function nextPowerOfTwo(N){ //bit-twiddling
    if (N <= 1){ return 1; }
    N--;
    N |= N >> 1; N |= N >> 2; N |= N >> 4; N |= N >> 8; N |= N >> 16;
    return N + 1;
}

function dictionary(dictName) {

	//reference dictionary
    const src = new Dict(dictName);
    const root = JSON.parse(src.stringify());
    const geom = root.geomlist[0];

    halfedges_size 	= geom.halfedges_size;
    edges_size 		= geom.edges_size;
    vertices_size 	= geom.vertices_size;
    faces_size 		= geom.faces_size;
    closed 			= geom.closed;

    //set constants
    set_workgroups();
    set_params();
    set_dim();
    set_passnames_and_blocknames();

    //parse dictionary
    halfedgesOnly 	= new Dict();
    edgesOnly 		= new Dict();
    facesOnly 		= new Dict();
    verticesOnly 	= new Dict();

    halfedgesOnly.set("halfedges", geom.halfedges);
    edgesOnly.set("edges", geom.edges);
    facesOnly.set("faces", geom.faces);
    verticesOnly.set("vertices", geom.vertices.map(v => ({ point: v.point })));

    //fill buffers
    buff_halfedges.dictionary(halfedgesOnly.name);
    buff_edges.dictionary(edgesOnly.name);
    buff_faces.dictionary(facesOnly.name);
    buff_vertices.dictionary(verticesOnly.name);

    resize_buffers(vertices_size);

    face_capacity = Math.floor(buff_faces.bytecount / 4);
    edge_capacity = Math.floor(buff_edges.bytecount / 8);

    // 1) allocate add counters
    buff_add_counts.bytecount = 16; // 4 uints

    // 2) allocate face locks to face CAPACITY (derived from buffer bytecount)
    //buff_face_locks.bytecount = face_capacity * 4;
    buff_face_locks.bytecount = MAX_VERTEX_COUNT * 4;

    // 4) set workgroups for split/draw based on capacities
    comp_split_edges.workgroups = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];

    comp_init_face_locks.workgroups = [Math.ceil(MAX_VERTEX_COUNT / 256), 1, 1];
    //comp_init_face_locks.param("face_capacity", face_capacity);
    comp_init_face_locks.param("face_capacity", MAX_VERTEX_COUNT);
    //comp_split_edges.param("max_halfedges", Math.floor(buff_halfedges.bytecount / 32));
    comp_split_edges.param("max_halfedges", MAX_VERTEX_COUNT);

    set_counters_bytecount();

    //init counters
    comp_init_counters.bang();

    comp_init_face_locks.bang();
}

function bang(){

    for(let i = 0; i < 1; i++){

        //compute hash key
        comp_init_hash.param("radius", radius);
        comp_init_hash.param("MAX_VERTEX_COUNT", MAX_VERTEX_COUNT);
        comp_init_hash.bang();

        //Sort by ascending key
        const np2 = nextPowerOfTwo(MAX_VERTEX_COUNT);
        const numPairs = np2 / 2;
        const numStages = Math.log2(np2);
        
        comp_sort_keys.workgroups = [Math.ceil(numPairs / 128), 1, 1];
        comp_sort_keys.param("pc.numValues", MAX_VERTEX_COUNT);

        for(let stageIndex = 0; stageIndex < numStages; stageIndex++){
            for(let stepIndex = 0; stepIndex < stageIndex + 1; stepIndex++){
                
                let groupWidth = 1 << (stageIndex - stepIndex);
                let groupHeight = 2 * groupWidth - 1;
                comp_sort_keys.param("pc.groupWidth", groupWidth);
                comp_sort_keys.param("pc.groupHeight", groupHeight);
                comp_sort_keys.param("pc.stepIndex", stepIndex);
                comp_sort_keys.bang();
            }
        }

        //Find key start
        comp_find_key_start.bang();

        // Smoothing
        comp_init_neighbors_count.bang();
        comp_calc_smoothing.bang();
        comp_apply_smoothing.bang();

        //compute the repulsive force
        comp_calc_repulsive_force.param("radius", radius);
        comp_calc_repulsive_force.param("radius2", radius2);
        comp_calc_repulsive_force.param("MAX_VERTEX_COUNT", MAX_VERTEX_COUNT);
        comp_calc_repulsive_force.param("force_strength", force_strength);
        comp_calc_repulsive_force.bang();

        //compute the spring force
        comp_calc_spring_force.bang();

        //apply forces
        comp_apply_forces.param("force_strength", force_strength);
        comp_apply_forces.param("split_length", split_length);
        comp_apply_forces.bang();

        // Edge split
        comp_init_add_counts.bang();
        comp_split_edges.param("frame", frame);
        comp_split_edges.bang();
        comp_commit_sizes.bang();       

/*
        // Remesh (edge flip)
        //for(let i = 0; i < 4; i++){
            //comp_init_face_locks.bang();
            comp_init_valence.bang();
            comp_calc_valence.bang();
            comp_remesh_flip.bang();               
        //}
*/
        frame++;

    }

    //triangulate and output
    comp_triangulate.bang();

    outlet(2, "source", buff_faces_size.name);
    outlet(2, "bang");

    outlet(1, "source", img_nor.name);
    outlet(1, "bang");

    outlet(0, "source", img_out.name);
    outlet(0, "bang");
}