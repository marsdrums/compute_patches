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
        "rect": [ 34.0, 100.0, 1348.0, 893.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 668.0, 437.0, 57.0, 20.0 ],
                    "text": "Sorted in"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
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
                        "rect": [ 0.0, 0.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 50.0, 100.0, 137.0, 22.0 ],
                                    "text": "t l b"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.17254901960784313, 0.4, 0.5176470588235295, 1.0 ],
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 65.0, 127.0, 105.0, 22.0 ],
                                    "text": "r start_timer_GPU"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "" ],
                                    "patching_rect": [ 65.0, 156.0, 122.0, 22.0 ],
                                    "text": "timer"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-42",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-43",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 238.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-44",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 85.0, 238.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 1 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 653.5, 403.0, 92.0, 22.0 ],
                    "text": "p timer"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
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
                                    "bgcolor": [ 0.611764705882353, 0.2784313725490196, 0.2784313725490196, 1.0 ],
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 67.0, 126.0, 105.0, 22.0 ],
                                    "text": "r start_timer_CPU"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 50.0, 100.0, 137.0, 22.0 ],
                                    "text": "t l b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "" ],
                                    "patching_rect": [ 67.0, 156.0, 120.0, 22.0 ],
                                    "text": "timer"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-38",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-39",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 238.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-40",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 85.0, 238.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 1 ],
                                    "source": [ "obj-17", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 653.0, 269.0, 93.0, 22.0 ],
                    "text": "p timer"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 671.0, 303.0, 57.0, 20.0 ],
                    "text": "Sorted in"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 835.0, 152.0, 57.0, 20.0 ],
                    "text": "Unsorted"
                }
            },
            {
                "box": {
                    "depthbuffer": 1,
                    "doublebuffer": 1,
                    "fsaa": 0,
                    "id": "obj-34",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 677.0, 174.0, 389.0, 39.0 ],
                    "stereo": 0,
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 985.5, 391.0, 74.0, 20.0 ],
                    "text": "GPU sorting"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 986.0, 228.0, 73.0, 20.0 ],
                    "text": "CPU sorting"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 58.0, 14.0, 103.0, 20.0 ],
                    "text": "1) Sort this matrix"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.17254901960784313, 0.4, 0.5176470588235295, 1.0 ],
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 191.0, 99.0, 107.0, 22.0 ],
                    "text": "s start_timer_GPU"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.611764705882353, 0.2784313725490196, 0.2784313725490196, 1.0 ],
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 515.0, 99.0, 107.0, 22.0 ],
                    "text": "s start_timer_CPU"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "fontsize": 12.0,
                    "id": "obj-22",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 727.0, 438.0, 60.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_longname": "live.numbox[1]",
                            "parameter_mmax": 99999999.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.numbox",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "live.numbox[1]"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "bang", "", "bang", "" ],
                    "patching_rect": [ 29.0, 71.0, 667.0, 22.0 ],
                    "text": "t l b l b l"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.2, 0.2, 0.2, 0.0 ],
                    "fontsize": 12.0,
                    "id": "obj-19",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 727.0, 304.0, 60.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_longname": "live.numbox",
                            "parameter_mmax": 99999999.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.numbox",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "live.numbox"
                }
            },
            {
                "box": {
                    "depthbuffer": 1,
                    "doublebuffer": 1,
                    "fsaa": 0,
                    "id": "obj-12",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 653.0, 325.0, 389.0, 39.0 ],
                    "stereo": 0,
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 653.0, 235.0, 47.0, 22.0 ],
                    "text": "jit.bsort"
                }
            },
            {
                "box": {
                    "depthbuffer": 1,
                    "doublebuffer": 1,
                    "fsaa": 0,
                    "id": "obj-16",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 654.0, 458.0, 389.0, 39.0 ],
                    "stereo": 0,
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 134.0, 789.0, 106.0, 22.0 ],
                    "text": "jit.coerce 1 float32"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 29.0, 789.0, 79.0, 22.0 ],
                    "text": "jit.gpu.submit",
                    "varname": "jit.gpu.submit_AA"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_matrix", "" ],
                    "patching_rect": [ 29.0, 759.0, 229.0, 22.0 ],
                    "text": "jit.gpu.tomatrix",
                    "varname": "jit.gpu.tomatrix_AA"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 29.0, 12.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 29.0, 42.0, 135.0, 22.0 ],
                    "text": "jit.noise 1 float32 35000"
                }
            },
            {
                "box": {
                    "code": "// Bitonic Mergesort - https://en.wikipedia.org/wiki/Bitonic_sorter\r\n\r\nvar inMat = new JitterMatrix(1, \"float32\", 1);\r\nvar buff_values = new JitterObject(\"jit.gpu.buffer\");\r\nvar pass_sort = new JitterObject(\"jit.gpu.compute\");\r\npass_sort.shader = \"bitonicMergeSort.comp\";\r\npass_sort.bind(\"buff_values\", buff_values.name);\r\n\r\nfunction nextPowerOfTwo(N){ //bit-twiddling\n    if (N <= 1){ return 1; }\n    N--;\n    N |= N >> 1; N |= N >> 2; N |= N >> 4; N |= N >> 8; N |= N >> 16;\n    return N + 1;\n}\r\n\r\nfunction jit_matrix(inname){\r\n \r\n    buff_values.jit_matrix(inname);\r\n    let inMat = new JitterMatrix(inname);\r\n    const N = inMat.dim;  \r\n    const np2 = nextPowerOfTwo(N);\r\n    const numPairs = np2 / 2;\r\n    const numStages = Math.log2(np2);\r\n    \r\n    pass_sort.workgroups = [Math.ceil(numPairs / 128), 1, 1];\r\n    pass_sort.param(\"pc.numValues\", N);\r\n\r\n    for(let stageIndex = 0; stageIndex < numStages; stageIndex++){\r\n        for(let stepIndex = 0; stepIndex < stageIndex + 1; stepIndex++){\r\n            \r\n            let groupWidth = 1 << (stageIndex - stepIndex);\r\n            let groupHeight = 2 * groupWidth - 1;\r\n            pass_sort.param(\"pc.groupWidth\", groupWidth);\r\n            pass_sort.param(\"pc.groupHeight\", groupHeight);\r\n            pass_sort.param(\"pc.stepIndex\", stepIndex);\r\n            pass_sort.bang();\r\n        }\r\n    }\r\n    outlet(0, \"source\", buff_values.name);\r\n    outlet(0, \"bang\");\r\n}",
                    "filename": "none",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "v8.codebox",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 29.0, 130.0, 586.0, 623.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "varname": "v8_AA"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.24313725490196078, 0.10980392156862745, 0.10980392156862745, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 636.0, 225.0, 430.0, 158.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.06666666666666667, 0.1568627450980392, 0.20392156862745098, 1.0 ],
                    "id": "obj-2",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 636.0, 384.0, 430.0, 132.0 ],
                    "proportion": 0.5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 362.5, 126.765625, 662.5, 126.765625 ],
                    "source": [ "obj-20", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-20", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-20", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "midpoints": [ 143.5, 821.0, 624.0859375, 821.0, 624.0859375, 393.0, 663.0, 393.0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-41", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-45", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-19": [ "live.numbox", "live.numbox", 0 ],
            "obj-22": [ "live.numbox[1]", "live.numbox", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}