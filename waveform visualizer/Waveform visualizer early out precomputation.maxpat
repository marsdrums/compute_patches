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
        "rect": [ 34.0, 100.0, 1340.0, 893.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 449.0, 48.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 447.0, 98.0, 122.0, 22.0 ],
                    "text": "jit.noise 1 float32 320"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 393.0, 511.0, 109.0, 22.0 ],
                    "text": "prepend allocitems"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 529.0, 449.0, 133.0, 22.0 ],
                    "text": "expr int(ceil($f1/8.))*$i2"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 394.0, 487.0, 48.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 394.0, 449.0, 112.0, 22.0 ],
                    "text": "expr int(ceil($f1/8.))"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 394.0, 542.0, 74.0, 22.0 ],
                    "text": "jit.gpu.buffer"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 279.0, 332.0, 29.5, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 244.0, 479.0, 48.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 244.0, 404.0, 54.0, 22.0 ],
                    "text": "gate 2"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 244.0, 372.0, 37.0, 22.0 ],
                    "text": "zl.len"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 279.0, 449.0, 102.0, 22.0 ],
                    "text": "expr $i1 + $i1*$i2"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 244.0, 511.0, 109.0, 22.0 ],
                    "text": "prepend allocitems"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 279.0, 299.0, 59.0, 22.0 ],
                    "text": "route dim"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 279.0, 268.0, 73.0, 22.0 ],
                    "text": "jit.matrixinfo"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 244.0, 542.0, 74.0, 22.0 ],
                    "text": "jit.gpu.buffer"
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 583.0, 484.0, 22.0 ],
                    "text": "jit.gpu.compute @autoworkgroups currInImg",
                    "textfile": {
                        "text": "// Precompute bounding box for groups of 11 amplitude values,\n// and precompute the function's slope\n#version 460\n\n// Particle data structure (must match simulation pass)\nstruct partData {\n    vec2 p;\n    vec2 ba;\n    float invDotBa;\n};\n\nstruct minMax{\n    float mm;\n    float MM;\n};\n\n\nlayout(r32f, binding = 0) uniform readonly image1D currInImg;\n\nlayout(std430, binding = 1) buffer dataBuff {\n    partData data[];\n};\nlayout(std430, binding = 2) buffer minMaxBuff {\n    minMax mmMM[];\n};\nlayout(binding = 3) uniform Cfg {\n    float line_width;         \n};\n\nlayout(local_size_x = 512, local_size_y = 1) in;\n\nconst uint halo = 3;\nconst uint arraySize = gl_WorkGroupSize.x + halo;\nshared vec2 p[arraySize];\nshared vec2 ba[arraySize-1];\nshared float invDotBa[arraySize-1];\nshared float workgroupMin[64];\nshared float workgroupMax[64];\n\nvoid main() {\n    int coord = int(gl_GlobalInvocationID.x);\n    int size = imageSize(currInImg);\n\n    if(coord >= size) return;\n\n    uint lid = gl_LocalInvocationIndex;\n\n    const float screenRatio = 1920.0 / 1080.0; //***pass this as uniform\n\n    //cooperatively load data into shared memory \n    float amp = imageLoad(currInImg, coord).r;\n    float snormCoord = screenRatio*(2.0 * float(coord) / float(size)-1); \n    p[lid] = vec2(snormCoord, amp);\n    barrier();\n\n    //compute ba, invDotBa\n    if(coord < (size - 1)){\n        vec2 diff = p[lid+1u] - p[lid];\n        ba[lid] = diff;\n        invDotBa[lid] = 1.0 / dot(diff, diff);\n    }\n    //no need for barrier here\n\n    bool oneOutOfEight = coord % 8 == 0;\n    if(oneOutOfEight){\n        float mm = 1e30;\n        float MM = -1e30;\n        //from coord-1 to coord+10\n        int start = max(0, coord-1);\n        int end = min(size-1, coord+10);\n        for(int i = start; i < end; i++){\n            float amp = p[i].y;\n            mm = min(mm, amp);\n            MM = max(MM, amp);\n        }\n        float halfLineWidth = line_width*0.5;\n        workgroupMin[coord/8] = mm - halfLineWidth; \n        workgroupMax[coord/8] = MM + halfLineWidth; \n    }\n    barrier();\n\n    data[coord].p = p[lid];\n    data[coord].ba = ba[lid];\n    data[coord].invDotBa = invDotBa[lid];\n    if(oneOutOfEight){\n        int id = coord/8;\n        int id2 = int(lid)/8;\n        mmMM[id].mm = workgroupMin[id2];\n        mmMM[id].MM = workgroupMax[id2];\n    }\n}",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_matrix", "bang", "" ],
                    "patching_rect": [ 234.0, 797.0, 361.0, 22.0 ],
                    "text": "jit.world @enable 1 @displaylink 0 @fps 400 @sync 0 @floating 1"
                }
            },
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
                    "patching_rect": [ 129.0, 842.0, 80.0, 35.0 ]
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
                    "patching_rect": [ 30.0, 39.0, 96.0, 22.0 ],
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
                    "patching_rect": [ -104.0, 369.0, 80.0, 22.0 ],
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
                    "patching_rect": [ -104.0, 491.0, 109.0, 22.0 ],
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
                    "patching_rect": [ -104.0, 459.0, 74.0, 22.0 ],
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
                    "patching_rect": [ -104.0, 430.0, 29.5, 22.0 ],
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
                    "patching_rect": [ -104.0, 400.0, 50.0, 22.0 ]
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
                    "patching_rect": [ 124.0, 797.0, 80.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "", "" ],
                    "patching_rect": [ 30.0, 231.0, 268.0, 22.0 ],
                    "text": "t b l l"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_gl_texture", "" ],
                    "patching_rect": [ 30.0, 717.0, 254.0, 22.0 ],
                    "text": "jit.gpu.totexture"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 30.0, 773.0, 79.0, 22.0 ],
                    "text": "jit.gpu.submit"
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 679.0, 576.0, 22.0 ],
                    "text": "jit.gpu.compute @autoworkgroups outImg",
                    "textfile": {
                        "text": "#version 460\n\nstruct partData {\n    vec2 p;\n    vec2 ba;\n    float invDotBa;\n};\n\nstruct minMax{\n    float mm;\n    float MM;\n};\n\nlayout(r32f, binding = 0) uniform readonly image1D currInImg;\n\nlayout(std430, binding = 1) buffer dataBuff {\n    partData data[];\n};\nlayout(std430, binding = 2) buffer minMaxBuff {\n    minMax mmMM[];\n};\nlayout(r32f, binding = 3) uniform writeonly image2D outImg;\nlayout(binding = 4) uniform Cfg {\n    float line_width;         \n};\n\nlayout(local_size_x = 8, local_size_y = 128) in;\n\nfloat sdSegmentSquared( in vec2 p, in vec2 a, in vec2 ba, in float invDotBa){\n    vec2 pa = p-a;\n    float h = clamp( dot(pa,ba)*invDotBa, 0.0, 1.0 );\n    vec2 d = pa - ba*h;\n    return dot(d,d);\n}\n\nint contain(int x, int size){\n    return clamp(x, 0, size-1);\n}\n\nconst uint halo = 3;\nconst uint arraySize = gl_WorkGroupSize.x + halo;\nshared vec2 p[arraySize];\nshared vec2 ba[arraySize-1];\nshared float invDotBa[arraySize-1];\nshared float minAmp;\nshared float maxAmp;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 outImgSize = imageSize(outImg);\n\n    if(coord.x >= outImgSize.x || coord.y >= outImgSize.y) return;\n\n    int inImgSize = imageSize(currInImg);\n    float inOutDimRatio = float(inImgSize) / float(outImgSize.x);\n    float screenRatio = float(outImgSize.x) / float(outImgSize.y);\n\n    vec2 snormCoord = vec2(screenRatio, 1.0)*2*(vec2(coord)+0.5) / vec2(outImgSize) - 1.0;\n    float scaler = 1.0 / float(inImgSize);\n    float doubleScreenRatio = 2*screenRatio;\n\n    int firstCell = int(floor(float(gl_WorkGroupID.x * gl_WorkGroupSize.x) * inOutDimRatio));\n    int lid = int(gl_LocalInvocationIndex);\n\n    //cooperatively read the input image\n    if(gl_LocalInvocationIndex < arraySize){\n        int id = contain(firstCell + lid - 1, inImgSize);\n        p[lid] = data[id].p;\n        //float amp = imageLoad(currInImg, id).r;\n        //p[lid] = vec2(doubleScreenRatio*(float(id)+0.5)*scaler - 1.0, amp);\n    }\n    barrier();\n\n    //compute the min and max amp for this workgroup\n    if(gl_LocalInvocationIndex == 0){\n        float thisMin = 999;\n        float thisMax = -999;\n        for(uint i = 0u; i < arraySize; i++){\n            float thisAmp = p[i].y;\n            thisMin = min(thisMin, thisAmp);\n            thisMax = max(thisMax, thisAmp);\n        }\n        float halfLineWidth = line_width*0.5;\n        minAmp = thisMin - halfLineWidth;\n        maxAmp = thisMax + halfLineWidth;\n    }\n    barrier();\n\n    //return if this thread isn't covered by the line\n    if(snormCoord.y < minAmp || snormCoord.y > maxAmp){\n        imageStore(outImg, coord, vec4(1.0));\n        return;\n    }\n\n    //precompute ba and 1/dot(ba,ba)\n    if(gl_LocalInvocationIndex < (arraySize - 1u)){\n        int id = contain(firstCell + lid - 1, inImgSize-1);\n        ba[lid] = data[id].ba;\n        invDotBa[lid] = data[id].invDotBa;\n    }\n    barrier();\n\n    int id0 = int(floor(float(gl_LocalInvocationID.x)*inOutDimRatio));\n    int id1 = id0+1;\n    int id2 = id0+2;\n    int id3 = id0+3;\n\n    float dist = sdSegmentSquared(snormCoord, p[id0], ba[id0], invDotBa[id0]);\n    dist = min(dist, sdSegmentSquared(snormCoord, p[id1], ba[id1], invDotBa[id1]));\n    dist = min(dist, sdSegmentSquared(snormCoord, p[id2], ba[id2], invDotBa[id2]));\n    dist = min(dist, sdSegmentSquared(snormCoord, p[id3], ba[id3], invDotBa[id3]));\n    dist = sqrt(dist);\n    dist *= float(outImgSize.x)*0.25;\n\n    float col = clamp(1-dist + line_width, 0, 1);\n\n    imageStore(outImg, coord, vec4(col));\n}",
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
                    "patching_rect": [ 475.6, 626.0, 271.0, 22.0 ],
                    "text": "jit.gpu.image @dim 1920 1080 @format r32_float"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 92.0, 309.0, 107.0, 35.0 ],
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
                    "patching_rect": [ 98.0, 152.0, 63.0, 22.0 ],
                    "text": "qmetro 50"
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
                    "destination": [ "obj-6", 0 ],
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
                    "destination": [ "obj-13", 4 ],
                    "order": 0,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "order": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-12", 0 ]
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
                    "destination": [ "obj-4", 0 ],
                    "order": 0,
                    "source": [ "obj-15", 1 ]
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
                    "destination": [ "obj-59", 0 ],
                    "order": 1,
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-16", 2 ]
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
                    "destination": [ "obj-26", 0 ],
                    "order": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 0,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "order": 0,
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 1,
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 2 ],
                    "order": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 2 ],
                    "order": 0,
                    "source": [ "obj-19", 0 ]
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
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
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
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-30", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 1 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 3 ],
                    "order": 1,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 3 ],
                    "order": 0,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-35", 0 ]
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
                    "order": 0,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
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
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "order": 1,
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 1 ],
                    "order": 0,
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}