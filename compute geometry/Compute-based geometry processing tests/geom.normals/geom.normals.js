autowhatch = 1; outlets = 2;

var halfedgesOnly, edgesOnly, facesOnly, verticesOnly;
var halfedges_size, edges_size, vertices_size, faces_size, closed;

var SIZE_HALFEDGE = 32;
var SIZE_EDGE = 8;
var SIZE_FACE = 4;
var SIZE_VERTEX = 16;
var SIZE_VEC4 = 16;
var SIZE_UINT = 4;

var buff_halfedges      = new JitterObject("jit.gpu.buffer");
//var buff_edges          = new JitterObject("jit.gpu.buffer");
var buff_faces          = new JitterObject("jit.gpu.buffer");
var buff_vertices       = new JitterObject("jit.gpu.buffer");
var buff_out            = new JitterObject("jit.gpu.buffer");
var buff_valence        = new JitterObject("jit.gpu.buffer");
var buff_face_normals   = new JitterObject("jit.gpu.buffer");
var buff_vertex_normals = new JitterObject("jit.gpu.buffer");
var buff_normals_out    = new JitterObject("jit.gpu.buffer");

var comp_init_valence           = new JitterObject("jit.gpu.compute");  comp_init_valence.shader            = "comp_init_valence.comp";
var comp_calc_face_normals      = new JitterObject("jit.gpu.compute");  comp_calc_face_normals.shader       = "comp_calc_face_normals.comp";
var comp_calc_vertex_normals    = new JitterObject("jit.gpu.compute");  comp_calc_vertex_normals.shader     = "comp_calc_vertex_normals.comp";
var comp_triangulate            = new JitterObject("jit.gpu.compute");  comp_triangulate.shader             = "comp_triangulate.comp";

// static bindings
comp_init_valence.bind("buff_valence", buff_valence.name);

comp_calc_face_normals.bind("buff_halfedges",       buff_halfedges.name);
comp_calc_face_normals.bind("buff_faces",           buff_faces.name);
comp_calc_face_normals.bind("buff_vertices",        buff_vertices.name);
comp_calc_face_normals.bind("buff_face_normals",    buff_face_normals.name);

comp_calc_vertex_normals.bind("buff_halfedges",       buff_halfedges.name);
comp_calc_vertex_normals.bind("buff_faces",           buff_faces.name);
comp_calc_vertex_normals.bind("buff_vertices",        buff_vertices.name);
comp_calc_vertex_normals.bind("buff_face_normals",    buff_face_normals.name);
comp_calc_vertex_normals.bind("buff_vertex_normals",  buff_vertex_normals.name);

comp_triangulate.bind("buff_halfedges",         buff_halfedges.name);
comp_triangulate.bind("buff_faces",             buff_faces.name);
comp_triangulate.bind("buff_vertices",          buff_vertices.name);
comp_triangulate.bind("buff_out",               buff_out.name);
comp_triangulate.bind("buff_vertex_normals",    buff_vertex_normals.name);
comp_triangulate.bind("buff_normals_out",       buff_normals_out.name);


function set_passnames_and_blocknames() {
    buff_halfedges.passname = comp_triangulate.name;
    //buff_edges.passname     = comp_triangulate.name;
    buff_faces.passname     = comp_triangulate.name;
    buff_vertices.passname  = comp_triangulate.name;
    buff_out.passname       = comp_triangulate.name;

    buff_halfedges.blockname = "buff_halfedges";
    //buff_edges.blockname     = "buff_edges";
    buff_faces.blockname     = "buff_faces";
    buff_vertices.blockname  = "buff_vertices";
    buff_out.blockname       = "buff_out";
}

function dictionary(dictName) {

    const src = new Dict(dictName);
    const root = JSON.parse(src.stringify());
    const geom = root.geomlist[0];

    halfedges_size = geom.halfedges_size;
    //edges_size     = geom.edges_size;
    vertices_size  = geom.vertices_size;
    faces_size     = geom.faces_size;
    closed         = geom.closed;

    set_passnames_and_blocknames();

    halfedgesOnly = new Dict();
    //edgesOnly     = new Dict();
    facesOnly     = new Dict();
    verticesOnly  = new Dict();

    halfedgesOnly.set("halfedges", geom.halfedges);
    //edgesOnly.set("edges", geom.edges);
    facesOnly.set("faces", geom.faces);
    verticesOnly.set("vertices", geom.vertices.map(v => ({ point: v.point })));

    buff_halfedges.dictionary(halfedgesOnly.name);
    //buff_edges.dictionary(edgesOnly.name);
    buff_faces.dictionary(facesOnly.name);
    buff_vertices.dictionary(verticesOnly.name);

    buff_face_normals.bytecount = faces_size * SIZE_VEC4;
    buff_vertex_normals.bytecount = vertices_size * SIZE_VEC4;
    buff_out.bytecount = faces_size * 3 * SIZE_VEC4;
    buff_normals_out.bytecount = faces_size * 3 * SIZE_VEC4;

    bang();
}

function bang() {

    comp_calc_face_normals.workgroups = [Math.ceil(faces_size / 256), 1, 1];
    comp_calc_face_normals.param("faces_size", faces_size);
    comp_calc_face_normals.bang();

    comp_calc_vertex_normals.workgroups = [Math.ceil(halfedges_size / 256), 1, 1];
    comp_calc_vertex_normals.param("halfedges_size", halfedges_size);
    comp_calc_vertex_normals.bang();

    comp_triangulate.workgroups = [Math.ceil(faces_size / 256), 1, 1];
    comp_triangulate.param("faces_size", faces_size);
    comp_triangulate.bang();

    outlet(1, "source", buff_normals_out.name);
    outlet(1, "bang");

    outlet(0, "source", buff_out.name);
    outlet(0, "bang");
}