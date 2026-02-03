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
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 987.0, 432.0, 74.0, 20.0 ],
                    "presentation_linecount": 2,
                    "text": "GPU sorting"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 987.0, 189.0, 73.0, 20.0 ],
                    "text": "CPU sorting"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 59.0, 39.0, 103.0, 20.0 ],
                    "text": "1) Sort this matrix"
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
                    "patching_rect": [ 654.0, 493.0, 105.0, 22.0 ],
                    "text": "r start_timer_GPU"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.611764705882353, 0.2784313725490196, 0.2784313725490196, 1.0 ],
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.0, 248.0, 105.0, 22.0 ],
                    "text": "r start_timer_CPU"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.17254901960784313, 0.4, 0.5176470588235295, 1.0 ],
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 342.0, 138.0, 107.0, 22.0 ],
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
                    "patching_rect": [ 966.0, 138.0, 107.0, 22.0 ],
                    "text": "s start_timer_CPU"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 734.0, 550.0, 24.0, 20.0 ],
                    "text": "ms"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 767.0, 309.0, 24.0, 20.0 ],
                    "text": "ms"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.173, 0.4, 0.518, 1.0 ],
                    "format": 6,
                    "id": "obj-22",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 654.0, 549.0, 78.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "float", "" ],
                    "patching_rect": [ 654.0, 522.0, 122.0, 22.0 ],
                    "text": "timer"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "bang", "", "bang" ],
                    "patching_rect": [ 30.0, 104.0, 955.0, 22.0 ],
                    "text": "t l b l b"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.612, 0.278, 0.278, 1.0 ],
                    "format": 6,
                    "id": "obj-19",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 671.0, 308.0, 94.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 654.0, 222.0, 137.0, 22.0 ],
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
                    "patching_rect": [ 671.0, 278.0, 120.0, 22.0 ],
                    "text": "timer"
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
                    "patching_rect": [ 654.0, 341.0, 389.0, 39.0 ],
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
                    "patching_rect": [ 654.0, 188.0, 47.0, 22.0 ],
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
                    "patching_rect": [ 654.0, 585.0, 389.0, 39.0 ],
                    "stereo": 0,
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 832.0, 513.0, 53.0, 22.0 ],
                    "text": "jit.matrix"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 832.0, 489.0, 106.0, 22.0 ],
                    "text": "jit.coerce 1 float32"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 832.0, 465.0, 53.0, 22.0 ],
                    "text": "jit.matrix"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 727.0, 465.0, 79.0, 22.0 ],
                    "text": "jit.gpu.submit"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_matrix", "" ],
                    "patching_rect": [ 727.0, 431.0, 229.0, 22.0 ],
                    "text": "jit.gpu.tomatrix"
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
                    "patching_rect": [ 30.0, 37.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 30.0, 70.0, 135.0, 22.0 ],
                    "text": "jit.noise 1 float32 35000"
                }
            },
            {
                "box": {
                    "code": "// Bitonic Mergesort\r\n// https://en.wikipedia.org/wiki/Bitonic_sorter\r\n\r\nvar buff_values = new JitterObject(\"jit.gpu.buffer\");\r\nvar pass_sort = new JitterObject(\"jit.gpu.compute\");\r\npass_sort.shader = \"bitonicMergeSort.comp\";\r\npass_sort.bind(\"buff_values\", buff_values.name);\r\n\r\nvar inMat = new JitterMatrix(1, \"float32\", 1);\r\n\r\nfunction nextPowerOfTwo(N){ //bit-twiddling\n    if (N <= 1){ return 1; }\n    N--;\n    N |= N >> 1; N |= N >> 2; N |= N >> 4; N |= N >> 8; N |= N >> 16;\n    return N + 1;\n}\r\n\r\nfunction jit_matrix(inname){\r\n \r\n    buff_values.jit_matrix(inname);\r\n    let inMat = new JitterMatrix(inname);\r\n    const N = inMat.dim;  \r\n    const np2 = nextPowerOfTwo(N);\r\n    const numPairs = np2 / 2;\r\n    const numStages = Math.log2(np2);\r\n    \r\n    pass_sort.workgroups = [Math.ceil(numPairs / 128), 1, 1];\r\n    pass_sort.param(\"pc.numValues\", N);\r\n\r\n    for(let stageIndex = 0; stageIndex < numStages; stageIndex++){\r\n        for(let stepIndex = 0; stepIndex < stageIndex + 1; stepIndex++){\r\n            \r\n            let groupWidth = 1 << (stageIndex - stepIndex);\r\n            let groupHeight = 2 * groupWidth - 1;\r\n            pass_sort.param(\"pc.groupWidth\", groupWidth);\r\n            pass_sort.param(\"pc.groupHeight\", groupHeight);\r\n            pass_sort.param(\"pc.stepIndex\", stepIndex);\r\n            pass_sort.bang();\r\n        }\r\n    }\r\n    \r\n    outlet(0, \"source\", buff_values.name);\r\n    outlet(0, \"bang\");\r\n}",
                    "filename": "none",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "v8.codebox",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 172.0, 586.0, 665.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    }
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
                    "patching_rect": [ 637.0, 178.0, 430.0, 223.0 ],
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
                    "patching_rect": [ 637.0, 417.0, 430.0, 223.0 ],
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
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 1 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-17", 0 ]
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
                    "destination": [ "obj-11", 0 ],
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
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-21", 0 ]
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
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 39.5, 852.3828125, 629.90625, 852.3828125, 629.90625, 429.0, 736.5, 429.0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "midpoints": [ 841.5, 576.875, 663.5, 576.875 ],
                    "source": [ "obj-6", 0 ]
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
        "autosave": 0
    }
}