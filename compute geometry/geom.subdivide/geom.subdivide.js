autowhatch = 1;

var halfedgesOnly, edgesOnly, facesOnly, verticesOnly;
var halfedges_size, edges_size, vertices_size, faces_size, closed;
var prev_halfedges_size, prev_edges_size, prev_vertices_size, prev_faces_size;
var num_iterations = 1;
var use_smoothing = true;

var SIZE_HALFEDGE = 32;
var SIZE_EDGE = 8;
var SIZE_FACE = 4;
var SIZE_VERTEX = 16;
var SIZE_VEC4 = 16;
var SIZE_UINT = 4;

var buff_halfedges = new JitterObject("jit.gpu.buffer");
var buff_edges     = new JitterObject("jit.gpu.buffer");
var buff_faces     = new JitterObject("jit.gpu.buffer");
var buff_vertices  = new JitterObject("jit.gpu.buffer");
var buff_out       = new JitterObject("jit.gpu.buffer");
var buff_forces    = new JitterObject("jit.gpu.buffer");
var buff_valence   = new JitterObject("jit.gpu.buffer");

var comp_calc_middle_point  = new JitterObject("jit.gpu.compute");  comp_calc_middle_point.shader   = "comp_calc_middle_point.comp"; 
var comp_update_geometry    = new JitterObject("jit.gpu.compute");  comp_update_geometry.shader     = "comp_update_geometry.comp";  
var comp_init_valence       = new JitterObject("jit.gpu.compute");  comp_init_valence.shader        = "comp_init_valence.comp";
var comp_init_forces        = new JitterObject("jit.gpu.compute");  comp_init_forces.shader         = "comp_init_forces.comp";
var comp_calc_smoothing     = new JitterObject("jit.gpu.compute");  comp_calc_smoothing.shader      = "comp_calc_smoothing.comp"; 
var comp_apply_smoothing    = new JitterObject("jit.gpu.compute");  comp_apply_smoothing.shader     = "comp_apply_smoothing.comp"; 
var comp_triangulate        = new JitterObject("jit.gpu.compute");  comp_triangulate.shader         = "comp_triangulate.comp";

// static bindings
comp_calc_middle_point.bind("buff_vertices",  buff_vertices.name);
comp_calc_middle_point.bind("buff_halfedges", buff_halfedges.name);
comp_calc_middle_point.bind("buff_edges",     buff_edges.name);

comp_update_geometry.bind("buff_vertices",  buff_vertices.name);
comp_update_geometry.bind("buff_halfedges", buff_halfedges.name);
comp_update_geometry.bind("buff_edges",     buff_edges.name);
comp_update_geometry.bind("buff_faces",     buff_faces.name);

comp_init_valence.bind("buff_valence", buff_valence.name);

comp_init_forces.bind("buff_forces", buff_forces.name);

comp_calc_smoothing.bind("buff_valence",    buff_valence.name);
comp_calc_smoothing.bind("buff_halfedges",  buff_halfedges.name);
comp_calc_smoothing.bind("buff_vertices",   buff_vertices.name);
comp_calc_smoothing.bind("buff_forces",     buff_forces.name);

comp_apply_smoothing.bind("buff_valence",   buff_valence.name);
comp_apply_smoothing.bind("buff_vertices",  buff_vertices.name);
comp_apply_smoothing.bind("buff_forces",    buff_forces.name);

comp_triangulate.bind("buff_halfedges", buff_halfedges.name);
comp_triangulate.bind("buff_faces",     buff_faces.name);
comp_triangulate.bind("buff_vertices",  buff_vertices.name);
comp_triangulate.bind("buff_out",       buff_out.name);

// one logical region is [offset, offset + edge_region_stride)
var edge_region_stride = 0;
var edge_read_offset = 0;
var edge_write_offset = 0;

function iterations(x) { num_iterations = x; }
function smoothing(x) { use_smoothing = x > 0; }

function set_passnames_and_blocknames() {
    buff_halfedges.passname = comp_update_geometry.name;
    buff_edges.passname     = comp_update_geometry.name;
    buff_faces.passname     = comp_update_geometry.name;
    buff_vertices.passname  = comp_update_geometry.name;
    buff_out.passname       = comp_triangulate.name;

    buff_halfedges.blockname = "buff_halfedges";
    buff_edges.blockname     = "buff_edges";
    buff_faces.blockname     = "buff_faces";
    buff_vertices.blockname  = "buff_vertices";
    buff_out.blockname       = "buff_out";
}

function edge_count_after_iteration(e, f) { return e * 2 + f * 3; }
function face_count_after_iteration(f) { return f * 4; }

function compute_edge_region_stride(startEdges, startFaces, iters) {
    var e = startEdges;
    var f = startFaces;
    var maxE = Math.max(1, e);

    for (var i = 0; i < iters; i++) {
        e = edge_count_after_iteration(e, f);
        f = face_count_after_iteration(f);
        if (e > maxE) maxE = e;
    }
    return maxE;
}

function prepare_edge_buffer_for_run() {
    edge_region_stride = compute_edge_region_stride(edges_size, faces_size, num_iterations);
    buff_edges.bytecount = 2 * edge_region_stride * SIZE_EDGE;
}

function dictionary(dictName) {
    const src = new Dict(dictName);
    const root = JSON.parse(src.stringify());
    const geom = root.geomlist[0];

    halfedges_size = geom.halfedges_size;
    edges_size     = geom.edges_size;
    vertices_size  = geom.vertices_size;
    faces_size     = geom.faces_size;
    closed         = geom.closed;

    set_passnames_and_blocknames();

    halfedgesOnly = new Dict();
    edgesOnly     = new Dict();
    facesOnly     = new Dict();
    verticesOnly  = new Dict();

    halfedgesOnly.set("halfedges", geom.halfedges);
    edgesOnly.set("edges", geom.edges);
    facesOnly.set("faces", geom.faces);
    verticesOnly.set("vertices", geom.vertices.map(v => ({ point: v.point })));

    // allocate the edge buffer big enough for the current num_iterations
    prepare_edge_buffer_for_run();

    buff_halfedges.dictionary(halfedgesOnly.name);
    buff_edges.dictionary(edgesOnly.name);
    buff_faces.dictionary(facesOnly.name);
    buff_vertices.dictionary(verticesOnly.name);

    buff_out.bytecount = faces_size * 3 * SIZE_VEC4;

    edge_read_offset = 0;
    edge_write_offset = edge_region_stride;

    bang();
}

function update_buffer_size() {
    prev_halfedges_size = halfedges_size;
    prev_edges_size     = edges_size;
    prev_faces_size     = faces_size;
    prev_vertices_size  = vertices_size;

    vertices_size  = prev_vertices_size + prev_edges_size;
    faces_size     = prev_faces_size * 4;
    edges_size     = prev_edges_size * 2 + prev_faces_size * 3;
    halfedges_size = prev_halfedges_size * 2 + prev_faces_size * 6;

    buff_vertices.bytecount  = vertices_size * SIZE_VERTEX;
    buff_faces.bytecount     = faces_size * SIZE_FACE;
    buff_halfedges.bytecount = halfedges_size * SIZE_HALFEDGE;
    buff_out.bytecount       = faces_size * 3 * SIZE_VEC4;
}

function swap_edge_offsets() {
    var tmp = edge_read_offset;
    edge_read_offset = edge_write_offset;
    edge_write_offset = tmp;
}

function bang() {

    if (!closed) {
        error("GPU subdivision currently assumes a closed triangular mesh.\n");
        return;
    }

    prepare_edge_buffer_for_run();

    edge_read_offset = 0;
    edge_write_offset = edge_region_stride;

    if(num_iterations > 0){
        for (let i = 0; i < num_iterations; i++) {
            update_buffer_size();

            comp_calc_middle_point.param("prev_edges_size", prev_edges_size);
            comp_calc_middle_point.param("prev_vertices_size", prev_vertices_size);
            comp_calc_middle_point.param("prev_halfedges_size", prev_halfedges_size);
            comp_calc_middle_point.param("edge_read_offset", edge_read_offset);
            comp_calc_middle_point.param("edge_write_offset", edge_write_offset);
            comp_calc_middle_point.workgroups = [Math.ceil(prev_edges_size / 256), 1, 1];
            comp_calc_middle_point.bang();

            comp_update_geometry.param("prev_edges_size", prev_edges_size);
            comp_update_geometry.param("prev_vertices_size", prev_vertices_size);
            comp_update_geometry.param("prev_faces_size", prev_faces_size);
            comp_update_geometry.param("prev_halfedges_size", prev_halfedges_size);
            comp_update_geometry.param("edge_read_offset", edge_read_offset);
            comp_update_geometry.param("edge_write_offset", edge_write_offset);
            comp_update_geometry.workgroups = [Math.ceil(prev_faces_size / 256), 1, 1];
            comp_update_geometry.bang();

            swap_edge_offsets();

            if(use_smoothing == true){

                buff_valence.bytecount = vertices_size * SIZE_UINT;
                buff_forces.bytecount = vertices_size * SIZE_VERTEX;

                comp_init_valence.workgroups = [Math.ceil(vertices_size / 256), 1, 1];
                comp_init_valence.param("vertices_size", vertices_size);
                comp_init_valence.bang();

                comp_init_forces.workgroups = [Math.ceil(vertices_size / 256), 1, 1];
                comp_init_forces.param("vertices_size", vertices_size);
                comp_init_forces.bang();

                comp_calc_smoothing.workgroups = [Math.ceil(halfedges_size / 256), 1, 1];
                comp_calc_smoothing.param("halfedges_size", halfedges_size);
                comp_calc_smoothing.bang();

                comp_apply_smoothing.workgroups = [Math.ceil(vertices_size / 256), 1, 1];
                comp_apply_smoothing.param("vertices_size", vertices_size); 
                comp_apply_smoothing.bang();
            }
        }        
    }

    comp_triangulate.param("faces_size", faces_size);
    comp_triangulate.workgroups = [Math.ceil(faces_size / 256), 1, 1];
    comp_triangulate.bang();

    outlet(0, "source", buff_out.name);
    outlet(0, "bang");
}