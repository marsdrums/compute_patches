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
        "rect": [ 59.0, 119.0, 1000.0, 780.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 433.0, 424.0, 29.5, 22.0 ],
                    "text": "* 4"
                }
            },
            {
                "box": {
                    "depthbuffer": 1,
                    "doublebuffer": 1,
                    "fsaa": 0,
                    "id": "obj-37",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 225.0, 610.0, 659.0, 400.0 ],
                    "stereo": 0,
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 92.0, 739.0, 79.0, 22.0 ],
                    "text": "jit.gpu.submit"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 141.5, 428.0, 291.0, 22.0 ],
                    "text": "jit.gpu.image @format rgba32_float @dim 1920 1080"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_gl_texture", "" ],
                    "patching_rect": [ 92.25, 584.0, 91.0, 22.0 ],
                    "text": "jit.gpu.totexture"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 47.0, 497.0, 47.0, 22.0 ],
                    "text": "jit.bang"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 68.0, 230.0, 147.0, 22.0 ],
                    "text": "jit.gl.texture @type float32"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 68.0, 259.0, 375.0, 22.0 ],
                    "text": "jit.gpu.image @format rgba32_float @dim 1920 1080 @name img_in"
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 92.25, 548.0, 229.0, 22.0 ],
                    "text": "jit.gpu.compute @autoworkgroups img_in",
                    "textfile": {
                        "text": "// Perform gaussian blur (horizontally)\n#version 460\nlayout(local_size_x = 256, local_size_y = 1, local_size_z = 1) in;\n\nlayout(rgba32f, binding = 0) uniform readonly image2D img_in;\nlayout(rgba32f, binding = 1) uniform writeonly image2D img_out;\n\n// Half-kernel weights: k[0..radius], where k[0] is center weight.\n// Must already be normalized such that: k[0] + 2*sum_{i=1..radius} k[i] == 1.\nlayout(std430, binding = 2) buffer buff_kernel { float k[]; };\n\nlayout(binding = 3) uniform cfg { uint radius; uint halfKernelSize; };\n\nshared ivec2 gSize;\n\n// NOTE: In GLSL, shared arrays need compile-time constant size.\n// So we allocate a maximum. Ensure your dispatch never uses radius > MAX_RADIUS.\nconst uint MAX_RADIUS = 128u;\nconst uint MAX_SHARED = uint(gl_WorkGroupSize.x) + 2u * MAX_RADIUS;\nshared vec4  c[MAX_SHARED];\nshared float localK[MAX_RADIUS + 1u];\n\nvoid main()\n{\n    // Cache image size once per workgroup\n    if (gl_LocalInvocationIndex == 0u) {\n        gSize = imageSize(img_in);\n    }\n    barrier();\n\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    if (gid.x >= gSize.x || gid.y >= gSize.y) {\n        return; // in case you dispatched a padded grid\n    }\n\n    // Clamp runtime radius to our static storage (safety)\n    uint R  = min(radius, MAX_RADIUS);\n    uint KS = min(halfKernelSize, MAX_RADIUS + 1u); // should be R+1\n\n    // Workgroup X span in global coordinates\n    int wgBaseX = int(gl_WorkGroupID.x * gl_WorkGroupSize.x);\n\n    // Fill shared color cache for this row, including halo on both sides:\n    // shared index s in [0 .. (WG + 2R - 1)] maps to global x = wgBaseX + (s - R)\n    uint sharedSize = uint(gl_WorkGroupSize.x) + 2u * R;\n\n    for (uint s = gl_LocalInvocationIndex; s < sharedSize; s += uint(gl_WorkGroupSize.x)) {\n        int gx = wgBaseX + int(s) - int(R);\n        gx = clamp(gx, 0, gSize.x - 1);\n        c[s] = imageLoad(img_in, ivec2(gx, gid.y));\n    }\n    barrier();\n\n    // Copy half-kernel to shared for fast access\n    for (uint i = gl_LocalInvocationIndex; i < KS; i += uint(gl_WorkGroupSize.x)) {\n        localK[i] = k[i];\n    }\n    barrier();\n\n    // Compute blur for this pixel using symmetry and the cached row data\n    // Our pixel's shared index is localX + R\n    int localX = int(gl_LocalInvocationID.x);\n    uint center = uint(localX) + R;\n\n    vec4 acc = c[center] * localK[0];\n\n    // If halfKernelSize is R+1, this loop is correct.\n    // If you ever pass a bigger/smaller halfKernelSize, we clamp KS above.\n    for (uint o = 1u; o <= R && o < KS; ++o) {\n        vec4 a = c[center - o];\n        vec4 b = c[center + o];\n        acc += (a + b) * localK[o];\n    }\n\n    imageStore(img_out, gid, acc);\n}\n",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 659.5, 476.0, 133.0, 22.0 ],
                    "text": "prepend halfKernelSize"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 660.0, 440.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 564.5, 476.0, 89.0, 22.0 ],
                    "text": "prepend radius"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "int", "int" ],
                    "patching_rect": [ 353.0, 367.0, 182.0, 22.0 ],
                    "text": "t b i i"
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 353.0, 548.0, 197.0, 22.0 ],
                    "text": "jit.gpu.compute @workgroups 1 1 1",
                    "textfile": {
                        "text": "//Compute Gaussian Kernel\n#version 460\n\nlayout(local_size_x = 1) in;\n\nlayout(std430, binding = 0) buffer buff_kernel { float k[]; };\nlayout(binding = 1) uniform cfg{ uint radius; uint halfKernelSize; };\n\n// Compute HALF of a symmetric 1D Gaussian kernel for separable blur.\n// Stores weights for offsets [0..R]. Use symmetry for negative offsets.\n// - R is the blur radius (kernel size = 2*R + 1).\n// - sigma controls blur spread.\n\nfloat gaussianWeight(int x, float invTwoSigma2){\n    float xf = float(x);\n    return exp(-(xf * xf) * invTwoSigma2);\n}\n\nvoid main() {\n\n    // Unnormalized weights\n    k[0] = 1.0;\n    float sum = 1.0;\n\n    const float sigma = 1.0;\n    float invTwoSigma2 = 0.5 / (sigma * sigma);\n\n    for (int i = 1; i <= int(radius); i++){\n        float w = gaussianWeight(i, invTwoSigma2);\n        k[i] = w;\n        sum += 2.0 * w; // account for +/-i symmetry\n    }\n\n    // Normalize so total energy == 1\n    float invSum = 1.0 / sum;\n    for (uint i = 0u; i <= radius; i++){\n        k[i] *= invSum;\n    }\n}",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 514.5, 477.0, 43.0, 20.0 ],
                    "text": "Kernel"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 434.5, 476.0, 74.0, 22.0 ],
                    "text": "jit.gpu.buffer"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 433.0, 452.0, 108.0, 22.0 ],
                    "text": "prepend bytecount"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 434.5, 397.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 192.0, 360.0, 29.5, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 248.0, 325.0, 66.0, 20.0 ],
                    "text": "Blur radius"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 192.0, 324.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68.0, 283.0, 84.0, 20.0 ],
                    "text": "Gaussian Blur"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 68.0, 127.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 68.0, 159.0, 233.0, 22.0 ],
                    "text": "output_texture 1, loop 1, unique 1, vol 0, 1"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "chickens.mp4",
                                "filename": "chickens.mp4",
                                "filekind": "moviefile",
                                "id": "u739001401",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1,
                                    "unique": 1,
                                    "vol": 0
                                }
                            }
                        ]
                    },
                    "drawto": "",
                    "id": "obj-3",
                    "loop": 1,
                    "maxclass": "jit.playlist",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_gl_texture", "", "dictionary" ],
                    "output_texture": 1,
                    "parameter_enable": 0,
                    "patching_rect": [ 68.0, 191.0, 150.0, 30.0 ],
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
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_matrix", "bang", "" ],
                    "patching_rect": [ 68.0, 58.0, 197.0, 22.0 ],
                    "text": "jit.world @floating 1 @size 960 540"
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
                    "patching_rect": [ 68.0, 28.0, 150.0, 22.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "order": 0,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 1 ],
                    "order": 0,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 3 ],
                    "order": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 1,
                    "source": [ "obj-22", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-22", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "order": 0,
                    "source": [ "obj-22", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "order": 0,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "order": 1,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 1 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-34", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 2 ],
                    "order": 0,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 1 ],
                    "order": 1,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
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
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}