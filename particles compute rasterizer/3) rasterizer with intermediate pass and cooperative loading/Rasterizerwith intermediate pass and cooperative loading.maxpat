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
        "rect": [ 34.0, 100.0, 1340.0, 893.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1055.0, 155.0, 29.5, 22.0 ],
                    "text": "* 2."
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 998.0, 155.0, 29.5, 22.0 ],
                    "text": "* 3."
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1033.0, 24.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 997.0, 211.0, 97.0, 22.0 ],
                    "text": "prepend position"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 997.0, 187.0, 61.0, 22.0 ],
                    "text": "pack f 1. f"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1062.0, 121.0, 24.0, 22.0 ],
                    "text": "sin"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 997.0, 121.0, 27.0, 22.0 ],
                    "text": "cos"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1033.0, 86.0, 173.0, 22.0 ],
                    "text": "jit.time @enable 0 @speed 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 537.0, 56.0, 135.0, 22.0 ],
                    "text": "loadmess position 1 1 1"
                }
            },
            {
                "box": {
                    "filename": "jit.fx.lin2srgb.jxs",
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 55.0, 1171.0, 75.0, 22.0 ],
                    "text": "jit.fx.lin2srgb",
                    "textfile": {
                        "filename": "jit.fx.lin2srgb.jxs",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 182.0, 647.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 597.0, 487.0, 513.0, 47.0 ],
                    "text": "to do:\n- precompute in a buffer the offsets\n- use shared memory to cooperatively load the particles from levels larger than 16 px"
                }
            },
            {
                "box": {
                    "filename": "copyOriginalPosition.jxs",
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 87.0, 845.0, 1028.0, 22.0 ],
                    "text": "jit.gpu.compute @name copyOriginalPosition @file copyOriginalPosition.jxs @threads 125 125 1 @automatic 0 @posImg posImg @originalPosImg originalPosImg @depends_on clearCounter",
                    "textfile": {
                        "filename": "copyOriginalPosition.jxs",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 610.0, 232.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 610.0, 271.0, 163.0, 22.0 ],
                    "text": "jit.matrix 4 float32 2000 2000"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 699.0, 239.0, 444.0, 22.0 ],
                    "text": "jit.gpu.image @dim 2000 2000 @format RGBA32_FLOAT @name originalPosImg"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1223.0, 755.0, 155.0, 22.0 ],
                    "text": "prepend param counterDim"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1391.0, 541.0, 29.5, 22.0 ],
                    "text": "int"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 267.0, 54.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 990.0, 616.0, 29.5, 22.0 ],
                    "text": "int"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1467.0, 612.0, 29.5, 22.0 ],
                    "text": "int"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1333.0, 34.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 990.0, 643.0, 85.0, 22.0 ],
                    "text": "threads $1 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 990.0, 582.0, 101.0, 22.0 ],
                    "text": "expr ceil($i1 / 32)"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1467.0, 652.0, 151.0, 22.0 ],
                    "text": "prepend param numLevels"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1121.75, 603.0, 115.0, 22.0 ],
                    "text": "prepend item_count"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1193.0, 541.0, 29.5, 22.0 ],
                    "text": "int"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1349.0, 57.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1484.0, 160.0, 35.0, 22.0 ],
                    "text": "1080"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1193.0, 160.0, 35.0, 22.0 ],
                    "text": "1920"
                }
            },
            {
                "box": {
                    "code": "dimX = in1;\r\ndimY = in2;\r\nlevels = floor(log2(min(dimX, dimY))) + 1;\r\nmaxParticles = 1024;\r\n\r\ncountBufferSize = 0;\r\ndiv = 1;\r\nfor(i = 0; i < levels; i+=1){\r\n    countBufferSize += ceil(dimX/div) * ceil(dimY/div);\r\n    div *= 2;\r\n}\r\nout1 = countBufferSize;\r\nout2 = countBufferSize * maxParticles;\r\nout3 = levels;",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 12.0,
                    "id": "obj-50",
                    "maxclass": "gen.codebox",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 1193.0, 206.0, 481.0, 308.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1121.75, 643.0, 174.0, 22.0 ],
                    "text": "jit.gpu.buffer @name countBuff"
                }
            },
            {
                "box": {
                    "filename": "renderParticles.jxs",
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 56.0, 956.0, 1125.0, 22.0 ],
                    "text": "jit.gpu.compute @name renderParticles @file renderParticles.jxs @automatic 0 @threads 120 68 1 @countBuff countBuff @posImg posImg @canvasImg canvasImg @grid grid @depends_on transformPosition",
                    "textfile": {
                        "filename": "renderParticles.jxs",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "filename": "clearCounter.jxs",
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 87.0, 749.0, 525.0, 22.0 ],
                    "text": "jit.gpu.compute @name clearCounter @file clearCounter.jxs @automatic 0 @countBuff countBuff",
                    "textfile": {
                        "filename": "clearCounter.jxs",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1308.0, 609.0, 115.0, 22.0 ],
                    "text": "prepend item_count"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1308.0, 643.0, 143.0, 22.0 ],
                    "text": "jit.gpu.buffer @name grid"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-14",
                    "maxclass": "jit.fpsgui",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 128.0, 1130.0, 80.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 699.0, 200.0, 70.0, 22.0 ],
                    "text": "jit.gl.texture"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 699.0, 134.0, 97.0, 22.0 ],
                    "text": "jit.geom.tomatrix"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_geometry", "" ],
                    "patching_rect": [ 699.0, 105.0, 197.0, 22.0 ],
                    "text": "jit.geom.distribute @count 4000000"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_geometry", "" ],
                    "patching_rect": [ 699.0, 79.0, 94.0, 22.0 ],
                    "text": "jit.geom.togeom"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 699.0, 162.0, 181.0, 22.0 ],
                    "text": "jit.scanwrap 3 float32 2000 2000"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 699.0, 25.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 699.0, 52.0, 318.0, 22.0 ],
                    "text": "jit.gl.model @file duck.dae @matrixoutput 1 @automatic 0"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 352.0, 152.0, 84.0, 22.0 ],
                    "text": "routepass dim"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 86.0, 597.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 56.0, 1207.0, 201.0, 22.0 ],
                    "text": "jit.gl.videoplane @transform_reset 2"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 56.0, 1083.0, 369.0, 22.0 ],
                    "text": "jit.gpu.totexture @source canvasImg @depends_on renderParticles"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 86.0, 635.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "filename": "transformPosition.jxs",
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 56.0, 906.0, 1038.0, 22.0 ],
                    "text": "jit.gpu.compute @name transformPosition @file transformPosition.jxs @automatic 0 @threads 125 125 1 @countBuff countBuff @posImg posImg @grid grid @depends_on copyOriginalPosition",
                    "textfile": {
                        "filename": "transformPosition.jxs",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 699.0, 358.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 699.0, 385.0, 163.0, 22.0 ],
                    "text": "jit.matrix 4 float32 1920 1080"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 87.0, 675.0, 47.0, 22.0 ],
                    "text": "jit.bang"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 699.0, 411.0, 423.0, 22.0 ],
                    "text": "jit.gpu.image @dim 1920 1080 @format RGBA32_FLOAT @name canvasImg"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 610.0, 301.0, 404.0, 22.0 ],
                    "text": "jit.gpu.image @dim 2000 2000 @format RGBA32_FLOAT @name posImg"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 56.0, 239.0, 50.0, 22.0 ],
                    "text": "r param"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 615.0, 152.0, 52.0, 22.0 ],
                    "text": "s param"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 352.0, 187.0, 52.0, 22.0 ],
                    "text": "s param"
                }
            },
            {
                "box": {
                    "code": "//Break transformation matrices into vec4\r\nfunction view_matrix(){\r\n    let m = arrayfromargs(arguments);\r\n    for(let i = 0; i < 16; i+=4){\r\n        outlet(0, \"param\", \"v\"+i/4, m.slice(i, i+4));\r\n    }\r\n}\r\n\r\nfunction proj_matrix(){\r\n    let m = arrayfromargs(arguments);\r\n    for(let i = 0; i < 16; i+=4){\r\n        outlet(0, \"param\", \"p\"+i/4, m.slice(i, i+4));\r\n    }\r\n}\r\n\r\nfunction dim(){ \r\n    outlet(0, \"param\", \"viewPort\", arrayfromargs(arguments));\r\n}",
                    "filename": "none",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 12.0,
                    "id": "obj-11",
                    "maxclass": "v8.codebox",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 56.0, 275.0, 509.0, 301.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    }
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 463.0, 56.0, 47.0, 22.0 ],
                    "text": "jit.bang"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 463.0, 86.0, 171.0, 22.0 ],
                    "text": "getview_matrix, getproj_matrix"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 61.0, 86.0, 45.0, 22.0 ],
                    "text": "getdim"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 61.0, 55.0, 47.0, 22.0 ],
                    "text": "jit.bang"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 436.0, 25.0, 145.0, 22.0 ],
                    "text": "jit.anim.drive @ui_listen 1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 436.0, 117.0, 198.0, 22.0 ],
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
                    "patching_rect": [ 38.0, 117.0, 333.0, 22.0 ],
                    "text": "jit.world @floating 1 @size 960 540 @displaylink 0 @fps 300"
                }
            },
            {
                "box": {
                    "attr": "enable",
                    "id": "obj-4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 38.0, 25.0, 150.0, 22.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-1", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 0,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 1,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "order": 0,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "order": 1,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "order": 2,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "order": 0,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "order": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 1 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-50", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-50", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 1,
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "order": 0,
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "order": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "order": 0,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 2 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}