{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 3,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 608.0, 160.0, 1000.0, 780.0 ],
        "boxes": [
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-59",
                    "maxclass": "jit.fpsgui",
                    "mode": 3,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 129.0, 490.0, 80.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 231.0, 436.0, 503.0612196922302, 263.26530361175537 ],
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 167.0, 52.0, 59.0, 20.0 ],
                    "text": "1) enable"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 51.0, 96.0, 22.0 ],
                    "text": "loadmess loop 1"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 462.0, 171.0, 80.0, 22.0 ],
                    "text": "loadmess 1.5"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 462.0, 293.0, 109.0, 22.0 ],
                    "text": "prepend line_width"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 462.0, 261.0, 74.0, 22.0 ],
                    "text": "maximum 0."
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 462.0, 232.0, 29.5, 22.0 ],
                    "text": "- 1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-43",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 462.0, 202.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-41",
                    "maxclass": "jit.fpsgui",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 129.0, 445.0, 80.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 30.0, 231.0, 90.0, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_matrix", "" ],
                    "patching_rect": [ 30.0, 384.0, 264.2857117652893, 22.0 ],
                    "text": "jit.gpu.tomatrix"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 30.0, 421.0, 79.0, 22.0 ],
                    "text": "jit.gpu.submit"
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 348.0, 231.0, 22.0 ],
                    "text": "jit.gpu.compute @autoworkgroups outImg",
                    "textfile": {
                        "text": "#version 460\n\nlayout(r32f, binding = 0) uniform readonly image1D currInImg;\nlayout(r32f, binding = 1) uniform writeonly image2D outImg;\nlayout(binding = 2) uniform Cfg {\n    float line_width;         \n};\n\nlayout(local_size_x = 8, local_size_y = 128) in;\n\nfloat sdSegmentSquared( in vec2 p, in vec2 a, in vec2 ba, in float invDotBa){\n    vec2 pa = p-a;\n    float h = clamp( dot(pa,ba)*invDotBa, 0.0, 1.0 );\n    vec2 d = pa - ba*h;\n    return dot(d,d);\n}\n\nint contain(int x, int size){\n    return clamp(x, 0, size-1);\n}\n\nconst uint halo = 3;\nconst uint arraySize = gl_WorkGroupSize.x + halo;\nshared vec2 p[arraySize];\nshared vec2 ba[arraySize-1];\nshared float invDotBa[arraySize-1];\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 outImgSize = imageSize(outImg);\n\n    if(coord.x >= outImgSize.x || coord.y >= outImgSize.y) return;\n\n    int inImgSize = imageSize(currInImg);\n    float inOutDimRatio = float(inImgSize) / float(outImgSize.x);\n    float screenRatio = float(outImgSize.x) / float(outImgSize.y);\n\n    vec2 snormCoord = vec2(screenRatio, 1.0)*2*(vec2(coord)+0.5) / vec2(outImgSize) - 1.0;\n    float scaler = 1.0 / float(inImgSize);\n    float doubleScreenRatio = 2*screenRatio;\n\n    int firstCell = int(floor(float(gl_WorkGroupID.x * gl_WorkGroupSize.x) * inOutDimRatio));\n    int lid = int(gl_LocalInvocationIndex);\n\n    //cooperatively read the input image\n    if(gl_LocalInvocationIndex < arraySize){\n        int id = contain(firstCell + lid - 1, inImgSize);\n        float amp = imageLoad(currInImg, id).r;\n        p[lid] = vec2(doubleScreenRatio*(float(id)+0.5)*scaler - 1.0, amp);\n    }\n    barrier();\n\n    //precompute ba and 1/dot(ba,ba)\n    if(gl_LocalInvocationIndex < (arraySize - 1u)){\n        vec2 diff = p[lid+1] - p[lid];\n        ba[lid] = diff;\n        invDotBa[lid] = 1.0 / dot(diff,diff);\n    }\n    barrier();\n\n    int id0 = int(floor(float(gl_LocalInvocationID.x)*inOutDimRatio));\n    int id1 = id0+1;\n    int id2 = id0+2;\n    int id3 = id0+3;\n\n    float dist = sdSegmentSquared(snormCoord, p[id0], ba[id0], invDotBa[id0]);\n    dist = min(dist, sdSegmentSquared(snormCoord, p[id1], ba[id1], invDotBa[id1]));\n    dist = min(dist, sdSegmentSquared(snormCoord, p[id2], ba[id2], invDotBa[id2]));\n    dist = min(dist, sdSegmentSquared(snormCoord, p[id3], ba[id3], invDotBa[id3]));\n    dist = sqrt(dist);\n    dist *= float(outImgSize.x)*0.25;\n\n    float col = clamp(1-dist + line_width, 0, 1);\n\n    imageStore(outImg, coord, vec4(col));\n}",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 171.0, 293.0, 271.0, 22.0 ],
                    "text": "jit.gpu.image @dim 1920 1080 @format r32_float"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 101.0, 269.0, 176.0, 22.0 ],
                    "text": "jit.gpu.image @format r32_float"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 98.0, 152.0, 56.0, 22.0 ],
                    "text": "qmetro 2"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 30.0, 200.0, 213.0, 22.0 ],
                    "text": "jit.catch~ 1 @framesize 320 @mode 2"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 143.0, 50.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 56.0, 152.0, 35.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "prim.loop.aif",
                                "filename": "prim.loop.aif",
                                "filekind": "audiofile",
                                "id": "u521007374",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-1",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 30.0, 86.0, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "attr": "framesize",
                    "id": "obj-2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 167.0, 133.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "mode",
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 167.0, 157.0, 150.0, 22.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 2 ],
                    "order": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "order": 0,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "order": 2,
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "order": 0,
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "order": 1,
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-16", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
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
                    "destination": [ "obj-1", 0 ],
                    "order": 2,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 1,
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}