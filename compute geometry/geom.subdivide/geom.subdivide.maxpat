{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 100.0, 1660.0, 893.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 288.0, 382.0, 160.0, 20.0 ],
                    "text": "3) Enable/disable smoothing"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 161.0, 223.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_geometry", "" ],
                    "patching_rect": [ 161.0, 293.0, 94.0, 22.0 ],
                    "text": "jit.geom.togeom"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 161.0, 258.0, 318.0, 22.0 ],
                    "text": "jit.gl.model @file duck.dae @matrixoutput 1 @automatic 0"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "dictionary", "" ],
                    "patching_rect": [ 161.0, 325.0, 83.0, 22.0 ],
                    "text": "jit.geom.todict"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 55.0, 361.0, 125.0, 22.0 ],
                    "text": "zl.reg"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 55.0, 152.0, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-4",
                    "maxclass": "jit.fpsgui",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 115.5, 666.0, 80.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 262.0, 346.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 262.0, 380.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 262.0, 413.0, 81.0, 22.0 ],
                    "text": "smoothing $1"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 55.0, 325.0, 60.0, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 55.0, 214.0, 67.0, 22.0 ],
                    "text": "minimum 5"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 322.0, 104.0, 290.0, 22.0 ],
                    "text": "jit.gl.environment @file photo_studio_loft_hall_2k.exr"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 110.0, 187.0, 185.0, 20.0 ],
                    "text": "2) set the number of subdivisions"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 157.0, 45.0, 59.0, 20.0 ],
                    "text": "1) enable"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 157.0, 635.0, 284.0, 22.0 ],
                    "text": "jit.gl.mesh @draw_mode triangles @poly_mode 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 279.0, 523.0, 92.5, 22.0 ],
                    "text": "jit.gl.pbr"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 55.0, 186.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 55.0, 242.0, 74.0, 22.0 ],
                    "text": "iterations $1"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 322.0, 44.0, 145.0, 22.0 ],
                    "text": "jit.anim.drive @ui_listen 1"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 322.0, 71.0, 198.0, 22.0 ],
                    "text": "jit.gl.camera @locklook 1 @tripod 1"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_matrix", "bang", "" ],
                    "patching_rect": [ 57.0, 76.0, 197.0, 22.0 ],
                    "text": "jit.world @floating 1 @size 960 540"
                }
            },
            {
                "box": {
                    "attr": "enable",
                    "id": "obj-20",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 57.0, 44.0, 91.0, 22.0 ],
                    "text_width": 61.0
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 55.0, 523.0, 79.0, 22.0 ],
                    "text": "jit.gpu.submit"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 177.0, 572.0, 365.0, 22.0 ],
                    "text": "jit.gl.mesh @draw_mode triangles @auto_normals 1 @scale 0.999"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 157.0, 523.0, 106.0, 22.0 ],
                    "text": "jit.coerce 4 float32"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_matrix", "" ],
                    "patching_rect": [ 55.0, 492.0, 224.0, 22.0 ],
                    "text": "jit.gpu.tomatrix"
                }
            },
            {
                "box": {
                    "filename": "geom.subdivide.js",
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 55.0, 454.0, 121.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "parameter_enable": 0
                    },
                    "text": "v8 geom.subdivide.js",
                    "textfile": {
                        "text": "autowhatch = 1;\n\nvar halfedgesOnly, edgesOnly, facesOnly, verticesOnly;\nvar halfedges_size, edges_size, vertices_size, faces_size, closed;\nvar prev_halfedges_size, prev_edges_size, prev_vertices_size, prev_faces_size;\nvar num_iterations = 1;\nvar use_smoothing = true;\n\nvar SIZE_HALFEDGE = 32;\nvar SIZE_EDGE = 8;\nvar SIZE_FACE = 4;\nvar SIZE_VERTEX = 16;\nvar SIZE_VEC4 = 16;\nvar SIZE_UINT = 4;\n\nvar buff_halfedges = new JitterObject(\"jit.gpu.buffer\");\nvar buff_edges     = new JitterObject(\"jit.gpu.buffer\");\nvar buff_faces     = new JitterObject(\"jit.gpu.buffer\");\nvar buff_vertices  = new JitterObject(\"jit.gpu.buffer\");\nvar buff_out       = new JitterObject(\"jit.gpu.buffer\");\nvar buff_forces    = new JitterObject(\"jit.gpu.buffer\");\nvar buff_valence   = new JitterObject(\"jit.gpu.buffer\");\n\nvar comp_calc_middle_point  = new JitterObject(\"jit.gpu.compute\");  comp_calc_middle_point.shader   = \"comp_calc_middle_point.comp\"; \nvar comp_update_geometry    = new JitterObject(\"jit.gpu.compute\");  comp_update_geometry.shader     = \"comp_update_geometry.comp\";  \nvar comp_init_valence       = new JitterObject(\"jit.gpu.compute\");  comp_init_valence.shader        = \"comp_init_valence.comp\";\nvar comp_init_forces        = new JitterObject(\"jit.gpu.compute\");  comp_init_forces.shader         = \"comp_init_forces.comp\";\nvar comp_calc_smoothing     = new JitterObject(\"jit.gpu.compute\");  comp_calc_smoothing.shader      = \"comp_calc_smoothing.comp\"; \nvar comp_apply_smoothing    = new JitterObject(\"jit.gpu.compute\");  comp_apply_smoothing.shader     = \"comp_apply_smoothing.comp\"; \nvar comp_triangulate        = new JitterObject(\"jit.gpu.compute\");  comp_triangulate.shader         = \"comp_triangulate.comp\";\n\n// static bindings\ncomp_calc_middle_point.bind(\"buff_vertices\",  buff_vertices.name);\ncomp_calc_middle_point.bind(\"buff_halfedges\", buff_halfedges.name);\ncomp_calc_middle_point.bind(\"buff_edges\",     buff_edges.name);\n\ncomp_update_geometry.bind(\"buff_vertices\",  buff_vertices.name);\ncomp_update_geometry.bind(\"buff_halfedges\", buff_halfedges.name);\ncomp_update_geometry.bind(\"buff_edges\",     buff_edges.name);\ncomp_update_geometry.bind(\"buff_faces\",     buff_faces.name);\n\ncomp_init_valence.bind(\"buff_valence\", buff_valence.name);\n\ncomp_init_forces.bind(\"buff_forces\", buff_forces.name);\n\ncomp_calc_smoothing.bind(\"buff_valence\",    buff_valence.name);\ncomp_calc_smoothing.bind(\"buff_halfedges\",  buff_halfedges.name);\ncomp_calc_smoothing.bind(\"buff_vertices\",   buff_vertices.name);\ncomp_calc_smoothing.bind(\"buff_forces\",     buff_forces.name);\n\ncomp_apply_smoothing.bind(\"buff_valence\",   buff_valence.name);\ncomp_apply_smoothing.bind(\"buff_vertices\",  buff_vertices.name);\ncomp_apply_smoothing.bind(\"buff_forces\",    buff_forces.name);\n\ncomp_triangulate.bind(\"buff_halfedges\", buff_halfedges.name);\ncomp_triangulate.bind(\"buff_faces\",     buff_faces.name);\ncomp_triangulate.bind(\"buff_vertices\",  buff_vertices.name);\ncomp_triangulate.bind(\"buff_out\",       buff_out.name);\n\n// one logical region is [offset, offset + edge_region_stride)\nvar edge_region_stride = 0;\nvar edge_read_offset = 0;\nvar edge_write_offset = 0;\n\nfunction iterations(x) { num_iterations = x; }\nfunction smoothing(x) { use_smoothing = x > 0; }\n\nfunction set_passnames_and_blocknames() {\n    buff_halfedges.passname = comp_update_geometry.name;\n    buff_edges.passname     = comp_update_geometry.name;\n    buff_faces.passname     = comp_update_geometry.name;\n    buff_vertices.passname  = comp_update_geometry.name;\n    buff_out.passname       = comp_triangulate.name;\n\n    buff_halfedges.blockname = \"buff_halfedges\";\n    buff_edges.blockname     = \"buff_edges\";\n    buff_faces.blockname     = \"buff_faces\";\n    buff_vertices.blockname  = \"buff_vertices\";\n    buff_out.blockname       = \"buff_out\";\n}\n\nfunction edge_count_after_iteration(e, f) { return e * 2 + f * 3; }\nfunction face_count_after_iteration(f) { return f * 4; }\n\nfunction compute_edge_region_stride(startEdges, startFaces, iters) {\n    var e = startEdges;\n    var f = startFaces;\n    var maxE = Math.max(1, e);\n\n    for (var i = 0; i < iters; i++) {\n        e = edge_count_after_iteration(e, f);\n        f = face_count_after_iteration(f);\n        if (e > maxE) maxE = e;\n    }\n    return maxE;\n}\n\nfunction prepare_edge_buffer_for_run() {\n    edge_region_stride = compute_edge_region_stride(edges_size, faces_size, num_iterations);\n    buff_edges.bytecount = 2 * edge_region_stride * SIZE_EDGE;\n}\n\nfunction dictionary(dictName) {\n    const src = new Dict(dictName);\n    const root = JSON.parse(src.stringify());\n    const geom = root.geomlist[0];\n\n    halfedges_size = geom.halfedges_size;\n    edges_size     = geom.edges_size;\n    vertices_size  = geom.vertices_size;\n    faces_size     = geom.faces_size;\n    closed         = geom.closed;\n\n    set_passnames_and_blocknames();\n\n    halfedgesOnly = new Dict();\n    edgesOnly     = new Dict();\n    facesOnly     = new Dict();\n    verticesOnly  = new Dict();\n\n    halfedgesOnly.set(\"halfedges\", geom.halfedges);\n    edgesOnly.set(\"edges\", geom.edges);\n    facesOnly.set(\"faces\", geom.faces);\n    verticesOnly.set(\"vertices\", geom.vertices.map(v => ({ point: v.point })));\n\n    // allocate the edge buffer big enough for the current num_iterations\n    prepare_edge_buffer_for_run();\n\n    buff_halfedges.dictionary(halfedgesOnly.name);\n    buff_edges.dictionary(edgesOnly.name);\n    buff_faces.dictionary(facesOnly.name);\n    buff_vertices.dictionary(verticesOnly.name);\n\n    buff_out.bytecount = faces_size * 3 * SIZE_VEC4;\n\n    edge_read_offset = 0;\n    edge_write_offset = edge_region_stride;\n\n    bang();\n}\n\nfunction update_buffer_size() {\n    prev_halfedges_size = halfedges_size;\n    prev_edges_size     = edges_size;\n    prev_faces_size     = faces_size;\n    prev_vertices_size  = vertices_size;\n\n    vertices_size  = prev_vertices_size + prev_edges_size;\n    faces_size     = prev_faces_size * 4;\n    edges_size     = prev_edges_size * 2 + prev_faces_size * 3;\n    halfedges_size = prev_halfedges_size * 2 + prev_faces_size * 6;\n\n    buff_vertices.bytecount  = vertices_size * SIZE_VERTEX;\n    buff_faces.bytecount     = faces_size * SIZE_FACE;\n    buff_halfedges.bytecount = halfedges_size * SIZE_HALFEDGE;\n    buff_out.bytecount       = faces_size * 3 * SIZE_VEC4;\n}\n\nfunction swap_edge_offsets() {\n    var tmp = edge_read_offset;\n    edge_read_offset = edge_write_offset;\n    edge_write_offset = tmp;\n}\n\nfunction bang() {\n\n    if (!closed) {\n        error(\"GPU subdivision currently assumes a closed triangular mesh.\\n\");\n        return;\n    }\n\n    prepare_edge_buffer_for_run();\n\n    edge_read_offset = 0;\n    edge_write_offset = edge_region_stride;\n\n    if(num_iterations > 0){\n        for (let i = 0; i < num_iterations; i++) {\n            update_buffer_size();\n\n            comp_calc_middle_point.param(\"prev_edges_size\", prev_edges_size);\n            comp_calc_middle_point.param(\"prev_vertices_size\", prev_vertices_size);\n            comp_calc_middle_point.param(\"prev_halfedges_size\", prev_halfedges_size);\n            comp_calc_middle_point.param(\"edge_read_offset\", edge_read_offset);\n            comp_calc_middle_point.param(\"edge_write_offset\", edge_write_offset);\n            comp_calc_middle_point.workgroups = [Math.ceil(prev_edges_size / 256), 1, 1];\n            comp_calc_middle_point.bang();\n\n            comp_update_geometry.param(\"prev_edges_size\", prev_edges_size);\n            comp_update_geometry.param(\"prev_vertices_size\", prev_vertices_size);\n            comp_update_geometry.param(\"prev_faces_size\", prev_faces_size);\n            comp_update_geometry.param(\"prev_halfedges_size\", prev_halfedges_size);\n            comp_update_geometry.param(\"edge_read_offset\", edge_read_offset);\n            comp_update_geometry.param(\"edge_write_offset\", edge_write_offset);\n            comp_update_geometry.workgroups = [Math.ceil(prev_faces_size / 256), 1, 1];\n            comp_update_geometry.bang();\n\n            swap_edge_offsets();\n\n            if(use_smoothing == true){\n\n                buff_valence.bytecount = vertices_size * SIZE_UINT;\n                buff_forces.bytecount = vertices_size * SIZE_VERTEX;\n\n                comp_init_valence.workgroups = [Math.ceil(vertices_size / 256), 1, 1];\n                comp_init_valence.param(\"vertices_size\", vertices_size);\n                comp_init_valence.bang();\n\n                comp_init_forces.workgroups = [Math.ceil(vertices_size / 256), 1, 1];\n                comp_init_forces.param(\"vertices_size\", vertices_size);\n                comp_init_forces.bang();\n\n                comp_calc_smoothing.workgroups = [Math.ceil(halfedges_size / 256), 1, 1];\n                comp_calc_smoothing.param(\"halfedges_size\", halfedges_size);\n                comp_calc_smoothing.bang();\n\n                comp_apply_smoothing.workgroups = [Math.ceil(vertices_size / 256), 1, 1];\n                comp_apply_smoothing.param(\"vertices_size\", vertices_size); \n                comp_apply_smoothing.bang();\n            }\n        }        \n    }\n\n    comp_triangulate.param(\"faces_size\", faces_size);\n    comp_triangulate.workgroups = [Math.ceil(faces_size / 256), 1, 1];\n    comp_triangulate.bang();\n\n    outlet(0, \"source\", buff_out.name);\n    outlet(0, \"bang\");\n}",
                        "filename": "geom.subdivide.js",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "attr": "enable",
                    "id": "obj-25",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 177.0, 602.0, 91.0, 22.0 ],
                    "text_width": 60.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 2,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 1 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}