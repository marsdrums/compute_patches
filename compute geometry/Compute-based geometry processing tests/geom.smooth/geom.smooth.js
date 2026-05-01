autowhatch = 1;

var halfedgesOnly, edgesOnly, facesOnly, verticesOnly;
var halfedges_size, edges_size, vertices_size, faces_size, closed;
var num_iterations = 1;

var buff_halfedges  = new JitterObject("jit.gpu.buffer");
//var buff_edges      = new JitterObject("jit.gpu.buffer"); //unused here, but left for reference
var buff_faces      = new JitterObject("jit.gpu.buffer");
var buff_vertices   = new JitterObject("jit.gpu.buffer");

var buff_forces     = new JitterObject("jit.gpu.buffer");
var buff_valence    = new JitterObject("jit.gpu.buffer");
var buff_out        = new JitterObject("jit.gpu.buffer");

// create compute passes
var comp_init_valence = new JitterObject("jit.gpu.compute"); comp_init_valence.shader = "comp_init_valence.comp";  
var comp_init_forces = new JitterObject("jit.gpu.compute"); comp_init_forces.shader = "comp_init_forces.comp";  
var comp_calc_valence = new JitterObject("jit.gpu.compute"); comp_calc_valence.shader = "comp_calc_valence.comp";  
var comp_calc_smoothing = new JitterObject("jit.gpu.compute"); comp_calc_smoothing.shader = "comp_calc_smoothing.comp";  
var comp_apply_smoothing = new JitterObject("jit.gpu.compute"); comp_apply_smoothing.shader = "comp_apply_smoothing.comp";  
var comp_triangulate = new JitterObject("jit.gpu.compute"); comp_triangulate.shader = "comp_triangulate.comp";  

// Bindings
comp_init_valence.bind("buff_valence", buff_valence.name);

comp_init_forces.bind("buff_forces", buff_forces.name);

comp_calc_valence.bind("buff_halfedges", buff_halfedges.name);
comp_calc_valence.bind("buff_valence", buff_valence.name);

comp_calc_smoothing.bind("buff_halfedges", buff_halfedges.name);
comp_calc_smoothing.bind("buff_vertices", buff_vertices.name);
comp_calc_smoothing.bind("buff_forces", buff_forces.name);

comp_apply_smoothing.bind("buff_vertices", buff_vertices.name);
comp_apply_smoothing.bind("buff_forces", buff_forces.name);
comp_apply_smoothing.bind("buff_valence", buff_valence.name);

comp_triangulate.bind("buff_halfedges", buff_halfedges.name);
comp_triangulate.bind("buff_vertices", buff_vertices.name);
comp_triangulate.bind("buff_faces", buff_faces.name);
comp_triangulate.bind("buff_out", buff_out.name);

function iterations(x){ num_iterations = x; }

function set_workgroups(){

    comp_init_valence.workgroups = [Math.ceil(vertices_size / 256), 1, 1];
    comp_calc_valence.workgroups = [Math.ceil(halfedges_size / 256), 1, 1];
    comp_init_forces.workgroups = [Math.ceil(vertices_size / 256), 1, 1];
    comp_calc_smoothing.workgroups = [Math.ceil(halfedges_size / 256), 1, 1];
    comp_apply_smoothing.workgroups = [Math.ceil(vertices_size / 256), 1, 1];
    comp_triangulate.workgroups = [Math.ceil(faces_size / 256), 1, 1];
}

function set_params(){
    comp_init_valence.param("vertices_size", vertices_size);
    comp_init_forces.param("vertices_size", vertices_size);
    comp_calc_valence.param("halfedges_size", halfedges_size);
    comp_calc_smoothing.param("halfedges_size", halfedges_size);
    comp_apply_smoothing.param("vertices_size", vertices_size);
    comp_triangulate.param("faces_size", faces_size);
}

function set_passnames_and_blocknames(){
    buff_halfedges.passname = comp_triangulate.name;    
    //buff_edges.passname     = comp_triangulate.name;        
    buff_faces.passname     = comp_triangulate.name;        
    buff_vertices.passname  = comp_triangulate.name;    
    buff_halfedges.blockname    = "buff_halfedges";         
    //buff_edges.blockname        = "buff_edges";                 
    buff_faces.blockname        = "buff_faces";                 
    buff_vertices.blockname     = "buff_vertices";  
}

function dictionary(dictName) {

	//reference dictionary
    const src = new Dict(dictName);
    const root = JSON.parse(src.stringify());
    const geom = root.geomlist[0];

    halfedges_size 	= geom.halfedges_size;
    //edges_size 		= geom.edges_size;
    vertices_size 	= geom.vertices_size;
    faces_size 		= geom.faces_size;
    closed 			= geom.closed;

    //set constants
    set_workgroups();
    set_params();
    set_passnames_and_blocknames();

    //parse dictionary
    halfedgesOnly 	= new Dict();
    //edgesOnly 		= new Dict();
    facesOnly 		= new Dict();
    verticesOnly 	= new Dict();

    halfedgesOnly.set("halfedges", geom.halfedges);
    //edgesOnly.set("edges", geom.edges);
    facesOnly.set("faces", geom.faces);
    verticesOnly.set("vertices", geom.vertices.map(v => ({ point: v.point })));

    //fill buffers
    buff_halfedges.dictionary(halfedgesOnly.name);
    //buff_edges.dictionary(edgesOnly.name);
    buff_faces.dictionary(facesOnly.name);
    buff_vertices.dictionary(verticesOnly.name);

    //set buff_forces size
    buff_forces.bytecount = vertices_size * 4 * 4;
    buff_valence.bytecount = vertices_size * 4;
    buff_out.bytecount = faces_size * 3 * 4 * 4;

    bang();
}

function bang(){

    comp_init_valence.bang();
    comp_calc_valence.bang();

    for(let i = 0; i < num_iterations; i++){
        comp_init_forces.bang();
        comp_calc_smoothing.bang();
        comp_apply_smoothing.bang();        
    }

    comp_triangulate.bang();

    outlet(0, "source", buff_out.name);
    outlet(0, "bang");
}