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
        "rect": [ 34.0, 100.0, 1337.0, 893.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 439.0, 492.0, 100.0, 20.0 ],
                    "text": "<- scene building"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 110.0, 22.0, 133.0, 20.0 ],
                    "text": "1) enable the rendering"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.25882352941176473, 0.14901960784313725, 0.38823529411764707, 1.0 ],
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 94.0, 626.0, 50.0, 22.0 ],
                    "text": "r param"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 678.0, 75.0, 60.0, 20.0 ],
                    "text": "Focal dist"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 427.0, 75.0, 55.0, 20.0 ],
                    "text": "Aperture"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 834.0, 86.0, 47.0, 22.0 ],
                    "text": "jit.bang"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.25882352941176473, 0.14901960784313725, 0.38823529411764707, 1.0 ],
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 959.0, 221.0, 52.0, 22.0 ],
                    "text": "s param"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.25882352941176473, 0.14901960784313725, 0.38823529411764707, 1.0 ],
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 834.0, 221.0, 52.0, 22.0 ],
                    "text": "s param"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.25882352941176473, 0.14901960784313725, 0.38823529411764707, 1.0 ],
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 101.0, 405.0, 52.0, 22.0 ],
                    "text": "s param"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.25882352941176473, 0.14901960784313725, 0.38823529411764707, 1.0 ],
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 495.0, 221.0, 52.0, 22.0 ],
                    "text": "s param"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.25882352941176473, 0.14901960784313725, 0.38823529411764707, 1.0 ],
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 639.0, 221.0, 52.0, 22.0 ],
                    "text": "s param"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.2, 0.38823529411764707, 0.14901960784313725, 1.0 ],
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 484.0, 157.0, 45.0, 22.0 ],
                    "text": "s reset"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.2, 0.38823529411764707, 0.14901960784313725, 1.0 ],
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 628.0, 157.0, 45.0, 22.0 ],
                    "text": "s reset"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.2, 0.38823529411764707, 0.14901960784313725, 1.0 ],
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 300.0, 460.0, 45.0, 22.0 ],
                    "text": "s reset"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.2, 0.38823529411764707, 0.14901960784313725, 1.0 ],
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 145.0, 315.0, 45.0, 22.0 ],
                    "text": "s reset"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.2, 0.38823529411764707, 0.14901960784313725, 1.0 ],
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 890.0, 19.0, 43.0, 22.0 ],
                    "text": "r reset"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1099.0, 231.0, 133.0, 20.0 ],
                    "text": "number of samples ppx"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 495.0, 187.0, 127.0, 22.0 ],
                    "text": "prepend cam.aperture"
                }
            },
            {
                "box": {
                    "attr": "render.samples_per_frame",
                    "id": "obj-51",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 102.0, 491.0, 230.0, 22.0 ],
                    "text_width": 171.0
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 628.0, 44.0, 70.0, 22.0 ],
                    "text": "loadmess 2"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 484.0, 44.0, 80.0, 22.0 ],
                    "text": "loadmess 0.2"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "float" ],
                    "patching_rect": [ 484.0, 115.0, 29.5, 22.0 ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "float" ],
                    "patching_rect": [ 628.0, 121.0, 29.5, 22.0 ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-27",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 628.0, 74.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 639.0, 187.0, 133.0, 22.0 ],
                    "text": "prepend cam.focal_dist"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-23",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 484.0, 74.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 442.0, 368.0, 109.0, 20.0 ],
                    "text": "number of spheres"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 386.0, 305.0, 229.0, 20.0 ],
                    "text": "<- bang to generate new random spheres"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 158.0, 184.0, 61.0, 22.0 ],
                                    "text": "change 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 135.0, 212.0, 61.0, 22.0 ],
                                    "text": "change 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 118.0, 241.0, 61.0, 22.0 ],
                                    "text": "change 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 91.0, 184.0, 61.0, 22.0 ],
                                    "text": "change 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 67.0, 212.0, 61.0, 22.0 ],
                                    "text": "change 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 50.0, 241.0, 61.0, 22.0 ],
                                    "text": "change 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "float", "float", "float" ],
                                    "patching_rect": [ 125.0, 145.0, 67.0, 22.0 ],
                                    "text": "unpack f f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "float", "float", "float" ],
                                    "patching_rect": [ 50.0, 145.0, 67.0, 22.0 ],
                                    "text": "unpack f f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 50.0, 100.0, 129.0, 22.0 ],
                                    "text": "route position direction"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-71",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-72",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 97.16668700000002, 323.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-26", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-27", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-27", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-28", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-28", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 145.0, 286.0, 137.0, 22.0 ],
                    "text": "p bang if camera moved"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 916.0, 56.0, 109.0, 20.0 ],
                    "text": "reset accumulation"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "jit_matrix" ],
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
                        "rect": [ 84.0, 144.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "embedstate": [
                                        [ "adapt", 1 ],
                                        [ "bypass", 0 ],
                                        [ "enable", 1 ]
                                    ],
                                    "filename": "jit.fx.cf.gaussian.js",
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_gl_texture" ],
                                    "patching_rect": [ 119.0, 288.0, 109.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0
                                    },
                                    "text": "jit.fx.blur @amt 0.2",
                                    "textfile": {
                                        "filename": "jit.fx.cf.gaussian.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 50.0, 321.5, 149.0, 22.0 ],
                                    "text": "jit.matrix 4 float32 500 500"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-78",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 2,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "jit.gen",
                                        "rect": [ 149.0, 298.0, 600.0, 450.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 76.0, 269.0, 33.0, 22.0 ],
                                                    "text": "* 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 76.0, 200.0, 41.0, 22.0 ],
                                                    "text": "max 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 76.0, 161.0, 33.0, 22.0 ],
                                                    "text": "- 0.3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 177.0, 197.0, 39.0, 22.0 ],
                                                    "text": "swiz r"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 177.0, 226.0, 36.0, 22.0 ],
                                                    "text": "> 0.3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 76.0, 354.0, 36.0, 22.0 ],
                                                    "text": "+ 0.6"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 329.0, 271.0, 36.0, 22.0 ],
                                                    "text": "+ 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 329.0, 233.0, 33.0, 22.0 ],
                                                    "text": "* 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 329.0, 200.0, 65.0, 22.0 ],
                                                    "text": "clamp -1 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 329.0, 161.0, 37.0, 22.0 ],
                                                    "text": "* -2 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 329.0, 129.0, 42.0, 22.0 ],
                                                    "text": "snorm"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                                    "text": "in 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 176.0, 149.0, 47.0, 22.0 ],
                                                    "text": "sample"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 176.0, 418.0, 35.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 1 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 256.0, 41.0, 22.0 ],
                                    "text": "jit.gen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 50.0, 100.0, 58.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "autofit": 1,
                                    "data": [ 27288, "png", "IBkSG0fBZn....PCIgDQRA..APO..D.8HX....vxV+sh....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ceGdTTs9G.+6ta5cBjdnFZI.oQWADEgqP.jlMPP.Qf.hbsRyq0edUubscEIIDPQDP.on.A7ZAPPJJsDHz6sPBsPHj5lr6u+Xu6JnPxL6NyN6N62OOO7nPNy47FH69tmYNm2ild26daDDQDQjSMsJc.PDQDQ1NlPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.2T5.PsPiFCXxS94QG6XmfGd3A..dtm6YwEtvEU3HqlcwKdAL4I+7nO8o2ve+C...ETPAXBSXBJbjUyNxQNDF4HGEdhmXnHpnhB..kVZoXUqZkXkqbUJbzUypacCFSZRSBsoMwa4O6W9kMgYNyYBO8zKELxpcSdxOG5V2tOK+98u+8gO8S+Tb0qdMELppcm9zmDaYKaE93iO..37m+7XgK7qvBVvWhXisUJbzUy5XG6.dkWYJ..n3huAV25VG93O9iQjQFkBGY0rHiLb7rO6j..PSZRLXG6XG3i+3O..5T1.SESCKrL1tt0sthINwmE95qu+ku1O+y+LF4HGARHgjTfHq1kYlYhHhHh+xe9gNzgvi7HCFMpQMQAhpZ2+2+2+GRLwDuiesANvA.85qxNGQByQNxgvwN1Itqe89129ZGiFw4dtmNioO8YbG+ZKXAeIV1x9F6bDIL94mOXNyISDP.A9W9Z+1usCL4IOY..Tu5Eh8NzpQm+7mCKe4q.MsoM8N90lwLlN..t5UKzdGZ0n8surw7m+BvC7.Ove4qUbwEiO9i+HLm4jA.fC66K5rh2xchHhHU.NCcaP94mG..10t1SM1tBKrPL3AOP3iO9YOBqZU1YuG7Vu0aC.fQO5m9t1NCFLfm64lDN8oOi8JzpU0u9QC.fzRK8ZrcKdwKBKdwes8HjDjBJHe..rks7qvKut62V8byMWL0oNU6UXIXyd1yFMnAMnFaSKaYK..PSaZyrGgjfLwINAz6d2GA0VGo6NRRIkHdq25sgFMZp019QezGhe9m2fcHpDhpwBW3WifBJnZrU+7O+S..3i9nO1dDTtL3yP2FT+5WeA0Nu7xK7fOXOw1111k4HRX7yO+tsmC5ciFMZPe5SevrmcZ1gnRX5Uu9aBpcOzC0aGpD58rm8D.nFSlC.z5V2ZTPAlV2EgE1e8QgXuoWek..0Zxb.f669L8yTW3B4IqwjPjc1l9P1cu62uBGIVmTRIEAkLG.nac69bXRn+.OvCVq+LN.P6aeGrCQiqGlP2FDbv0UPsyM2zgF1vF5vjPWmN2P8pW8p01oQiFz3F2X6PDIbgFZnBpcAFXf3nG8v..n4MukxYHIHgGd3BtsMqYllg6MtwMkqvQvhJpHEbaiIlX.fiQB85Tm5..XYAp5rIzPCSvs07csxQPngFJzps1eRtADP.1gnw0CSnaCzoSnqVSMB5SsZunQCDzK5..7xKuk4nQbzoS3K6CGoXWqVguxd81aSqDaGgD5VSb6HPLwsiHg95S.3PsyHzpUqfuyBjziKJNhHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREfIzIhHhTAXBchHhHU.lPmHhHREvMkN.blYznQA0NsZ0hF23lfXhoIxbDILcric.d5omBpsAFXfNLwsmd5ABMzvDTa0nQCdzG8QA.vku7kkyvRPZcqasfaa26d2A.vt10tjonQ3ZW6ZufaaaZiouGO9wOlbENBVm5TGAfoeNPnhM1VhJqrR4JjDk.BH.A2Vu7xKGlWi1rl0LnUKmmnRQSu6cuEVVIxhhKtHz111N7POTuA.Pu5Uup0qo7xKGEUTQxcnIH5zoC0qd0SPs0fACNDIDAL8ly0oN0A..t6t60Z6uxUtB..pt5pk03RH72e+A.fO93Ss1Vy+bR4kWtrFSBgWd4E.L8A6pMkVZo..n3hKVViIgPmNc..B9myA.tzktjf+P5xsPBIDQkXrfBJPFiFgKf.B.d4kWB9CR8bO2jvd1ytQPAErLGYtFXBcAH6r2CRIkT..Pe6a+Q8qezHrvB2xaVHjjKDQDc6xKuKfBJn.blybF7se6p..vUtx0T3nx4Eu2HDQDQp.bF5BvTm5TPLwzT..DZngZ414QDQjsq5pqF4me9..3XG6XX9y+y4L0sBLg9cg2d6IlwL9GnMsoMLANQDYmsicrc7Zu1qAO7PXKfWh2x8+hniNRDczQhYMqOCIlXhLYNQDo.5Tm5Ll8rmM72eeg+96qRGNNE3LzuEwEWKwLlw+..BaU8RDQj7x7sh+e7OdUbwKluBGMN13Lz+eBO7Pw+3e75Hv.CjIyIhHGDgGd3H7vCGuwa7lvau8RoCGGZLgNQDQjJ.Sn++75u9aZo3ePDQjiknhJJ7FuwahhJ55Jcn3vhIzAvYNyoP8qe8U5vfHhnZPqZUqvLlwLT5vvgEqk6.XZSa5V00YtLQt+8uOb1ydVbsqcMbiabCTUUUIkgGQD4TyM2bC96e.nN0IHT+52.DSLw..wUy5MqW85ugYMqOSpCQUAW9D5MpQMDCYHOhnutadyahMrgM..f4N2LwYNyoQgEVHhO9Dk5PjHhb5kSN6EAETPngMrAnYMqE..3Mey2RzI00pUKzoSKptZCxQX5Tykcaq0rlYpxu8Nuy+TPGXFlsyc96XJSYJvGe39hjHhrUkTRw3+6+6cv8ducQvWy0t10vS+ziB..50q7G9RNJ3yPmHhHREvk8VtOrg8j.3ONdHqM+9u+a..X7iebHxHiV1hKhHxUhu95Od1mchHiLlC..5PG5XsdMADP.Xjibz..HyLyTViOmItjIz0pEHxHi3+8+W62jhyblyfW3EdA..lLmHhjXQEU8wK7BOO..V3BWDZTiZbM1d2byMzl1zZ..bwKlGhHhHk8XzYfK4sb+du2t.+8O.3u+BawX7lu4affBpNHnfpiLGYDQjqofBJXDTPAi29seaK6fnZt8ldO4t28tK+AmSBWtD56aeYiN24NC+7yO3me9Inqw7samHhH40u+6+F15V+0ZscADP.Hf.B.8nG8vNDUNGj7U49PG5Sf9129h.BPcTOzqpppv.Fv.T5vfHhbYDSLMAexm7eT5vPRbsqcMr5U+cHiLRG0stgHqikK2LzIhHhTijzD5QEUDXnCcXplYmC.bhSbBkNDHhHWJG3.GPoCAISvAGLF4HGEV1xVtrOVRVB8abihvLm4GHUcmCi8su8ozg.QD4RofBJPoCAIW8qe8wQO5Qj0wPxRn+ce2psp5xqitibjCqzg.QD4RogMrQJcHHKV9xk2YoKYIzUiIyA.JqrxT5PfHhHUfPBITYs+4hhiHhHREPxRne3CqNu0zBo.GPDQDUaN5QOpr1+RVB84Mu4JUcEQDQjpSFYjlr1+RVB8idzigssssJUcGQDQjpxMtwMk09WReF5SbhSPJ6NGB7VtSDQjs569tuU1GCI8zVKpnpO5W+5KdvG7AQbwEG..7wGekxgvl07l2bDRHxa42iHhH6ipqtZje9WDm9zmQoCkayMtwM..v91WN36+90Ce80eYeL4pbmHhHREPxOOzMZD3G+weB+3O9SRcWKId3Gt+XDi3ofmd5oRGJhV1YuGDZngA.fjRJIDarwB2c2c..TYkUB.Skp1cu6cgKdwKhDSLYEKVIhTdYm8dPjQFIZaaaGZRSZB..7vCO..fd85wAO3AQ1YuW..TPAWBIkjy26YTd4kiku7k6vlyA.1kYmCHCIzcz4r7LwKoDSKdhG5gdHLjg7HHlXhwp5myctyA.SO+lku7kC+7y97CVDQ1O6cu6FsnEsDO1i8Xn+8+gA.PDQDgU0WG+3GCKYIKA+3O9C..ve+c7OaNbVdec4lKWBcMZznzgPM57m+r3gdndiQNxQA.fV1xVZS8W8qe8A.vy9rSBCbfCDYjQFXsqcsHxHixliUhHGCSXBSDOyyLVDZn1dkHqoMsY3Ue0+gkiM54O+4i0strPSZRSs49ljWtbIzcz8Fuwah9zmTrbawjRQEUz30dsWGsu8c.ewW74..nxJ0K4iCQj7au6cO..39u+6GScpSC5zoSR6+V251..f+u+u2AIkTxXQKZgPqVocLjJN5STydgIzqE1yePoEsn4X.CXfx5X3latg9zm9fl0rlA.fd1ydfDRHIYcLIhjVG5PG.idziF..iZTiVxSleq7xKuvvF1vPqacqvLlwqJaiCY63pbmHhHREfyP2AP6ZWaA.v3F23sKimNc5PKZQK.foOc+7m+Wf3iOQ6xXSDYaNxQNDF6XGGdpmZj..HrvBytLtwGeBn4M2zc16nG8X1kwjDGlPWgEWbwhm4YFK..BO7vsaiq4Gkvy7LiEEUTQ3Dm3j1swlHx5r28ta7zO8XvHG4nraIxMSiFMXhSbh..3e8u9W3BWHO653S0NdK2UP0st0AidzOMhHhHPDQDghrvNhJpnv3F23f2d6kcerIhDmd269fwLlmQRVM6ViF0nFiF0nF++lDhAEIFn6NWtD5he6JJO6uwhJpPLpQMZzrl0LnUqVnUqx7OEZ0pEsnEsDiabiGW4JWBW4JWRQhChn6tRJ4lnjRtIlvDl.pe8quhspt0oSGzoSGRHgDvXFyXwYNyoTj33Oi6CcSbAuk6FE0+3KW+bx7l2Wfl27lK5qybre3CeXrt0kEN9wONppppr7Lw6YO6EhO93AfvWg95zoCO3C9fV5im7IGpSQwjfHWEqYMqE..94meh55L+9EYmc13m9oeD.lNStuxUtB5RW5B5W+5GZVyL89Ph4CI3t6tiALfAfHhHBL8oOM3s29Hp3RZwj4l4xMCchHhH0HWvYnq7EgfCbf8K5YmavfA78e+5wrl0mB..sZu8+o6hWLe..roM8Kn7xKCO6y9r39tuti5Tm5H3wvbUkaPCZvNz0EYhbkbnCc.QOyb.SmBYqXEKGyd1eF7yu.9Ke8MtwMgMtwMAc5L89gol5DPW5RWE0XkbxIit28tie629cQGeRGVTYLyEbF5J++3Ge7IHp1WYkUhbyMWL6YmFzp0s+Rx7+Lu7xaL24NOLko7xPud8PudwUM3djG4QDU6IhjOwEWrhp8UVYknxJqD6bm+NVvB9p6Xx7aU0UaDUWsQLqY8YXZSaph58Kb2c2wC9fOnnhOR93xkP2QnBA1912dA21pppJr28tWL0oNEQON4kW9H6r2KxN68hpqtZAecrNuSjiiAMngH31VUUUgsu8sgsu8sg+9eexhdrN0oNMxM28Kp2uHwDU9JMoReWWcT3xcK2UxUCYd4cA..zktzEAeMm+7mCYlYFVcMT9e+umI..9fO3CQzQWeqpOHhTFG5PGD+s+1bDTaMZzHN4IOAd228eB.f5UOqaqs84e9mioLkoH32uvau8FG8nGA..Mu4svpFSaEWk6l3xMCchHhH0HWtD5h8VyHk2JmvBKTDVXgZ4TLplTZokhRKsT7S+zOg7y252a3kTRYnjRJCqYMqQT2FsSeZV43HRo0pV0JDYjQJn1Vc0UiErfE.2byC3laV+o03pV0Jwl27lQ4kWNJu7xEz0Tu5UOTu5UOqdLsU7VtahKWBckTCaXiPCaXiDzO3egKbAbgKbArzktDIYrmybx.EVXgBt8B4CcPDIu5bm6rfa6oN0ovhVzBs4wLwDSFe629snfBJ.ETPAB5ZpW8pKpW8pqMO1jsgIzsSNvAxEcsqcCcsqcqVa6MtwMv7m+Wf4O+u.d5o2Rx3GUT0GSaZSUvsu+8u+Rx3RDY85W+D9qCG+3GKZUqjlOHdokVFV0pVIV0pVIJszRp012t10dzt1I7E6qTiOCcSXBc6DsZ0Bu81a3s20dBZ850iKbgyiKbgyKowvAO3ADbaiJJtR2IRoIl8D9oO8okzw9Tm5T3Tm5TnxJqrVaq4a4991W1RZLHT7VtahK3pbWzWgjLtZz.nUqv9gtpqtZTTQEIIi6s5bm6bBts0qdgH4iOQj3HlDUwFaqjzwtfBLUrpzqupZsslKfUt4lxjRgyP2DNCchHhHU.WtD5h+NyHM2JGCFLfJpnRTQE09suRqVMvKu7Fd4kz77yMyc2E9JeUn2MAhH4SEUHrUYN.Pt4tOIcrcyM2gat4tftKAZznQQus27VtahK2sbWoXvfATVYkJn1pSmaVVI7EW7MkrXHpnD11eQpGWhHqyMuovecnP2daBUHgX5wtIjaidIkXZgyIlsFKI8XBc6D850iqd0qJn15kWdg3hKN.XpTLJU5XG6jfaad4kmjMtDQVGgtsw..Ze66.NwIjt5GQqZkomIuWd4Us11qbkq..f1zFwcNUPRKWta4tRIojZqk8VdswKu7BsqcsCsqcsCYm8djrXne8qeBtsG+3GSxFWhHqyINwIDbaSIkTjrwce6KajTRIgjRJIAkP+bm6bhZQ2RxCWtD5J4hg7rm8r3rm8rnhJpnFamFMZPjQFEhLxnvC8P8VRF6JqrBzoNI7hTw91mz973HhDuCb.guUSum64dQIkTrjLt8qe82x6AIDm+7mGm+7R61rUL3pb2DWtD5DQDQpQtfIzE2mjSJ+je4l69Qt4terhUrhZssQEUTHpnhBevG7gn289gvgO7Aspwr6c+9P2698gUspuEd3gvWk6W6ZBuLwRDION24NO18t2kfZqe94GVyZxBctycBctyBe8x7mMfA7v38du2GQDQDHhHhPPWSt4lKxM2bs5wjjFbQwYG0zl1b..r8suMLzgNTAcMAFXfXfCbPnnhJBaaaaWTiWt4tOLu4MO..3qu9JtfkHxgvpV0pPaaa6DTa80WewnF0nAfoRH8ANf3lHvINwwP+5W+g+96ufulhJ55nksLVQMNj7vEbF5Ju8t28Jp1GYjQhQMpQiqcMgsJ4A.t10tJlxTlJBMzPQngJtyE4CcnCIp1SDIe1vF9YA2VMZzXYl0SZRSBETvEE70VRIEiW4UlBBKrvDU7sqcIr6f.I+3LzU.AETcPYkUlfpq6lEQDQfYMqYgst0sB.f8rmciCdvChKcoKCiFMhHhHb..zhVzRz111VzwN1QDarwYUEbgksrkJ5qgHRdblybFQ0dyulOpnhFe7G+evu8a6.6YO6FG8nl14JETP9nMsIAbsqcEzpV0ZjbxIC.f64dtGDSLMUTi0MtwMvO9i+nntFR93xkPWIOOzuU6ZW6BcsqcUTWSxI2Vz7l2B..L3AOXbyady+WkmyH7zSSasDe80WDXfABe7wGnUq3tALl+j1+vO7CnN0IXQcsDQxijRpsVtqYwFqvu01ZznActycFwGe7nnhJxRweohJp.50qG96u+ve+8GADP..v5drb6XG6.+7O+SHrvD1yZWtvJEmI7VtSDQDoB3xMCck5zV6OacqKKDWbwg5V25Jpqy7wonXNVEEhxJqLrvEt...N6bhbvrnE8U..3Mdi2RTmnYZ0p0xLwkZ4k2EvZW6pU7YmCv8gtYRdB8G3Ate7nO5ihfC1wLofGd3ondAgb8yIKdwKBIlXhXvCdHJ1QN3sZIK4qQVYkE..ZQK3JVkHGIqd0qA.ldraCZPCVgiFfxKubrt0sNbxSdZkNTfu95Kl3DeVL1wNVkNTtitxUtJVxR9Z7oe5+AIjPRx5Xoo28t2RVJqhKtH7K+xVjptygvzl1Tw92u7r+JyO+7vrl0mYoFqqDOGHCFLfMu4Mi+w+XFHv.qiccraXCa.dxmb310wjHoR4kWN9fO3CrqiY0UqGuy67tHojRRQd+ByG9JaZSaDSZROKZRSD2hnSLV6ZWqr02Jgicrigm+4edYcLjrD5csqcESYJSQJ5JGJxYBcypScBD..ScpS2xAhfbSud8..XLiYz3pW09UDYbyMc3C9fODMoIMgKjExomQiFwwN1wvK7B+cXOWRRMsowfINwmE..MoIMA5zoS1GSiFMhTRoO..PqV4e7TaIzA.d4W9kvgNzgks9Wx9IvAMnAJUckCE6QRmBKrHTXgEgoO8ogxKW3m+wVqRJoDroMsIroMsI6Vxbu81K3s2dg24c9mnwMtwLYNoJnQiFzzl1T7tu66AO7vM3gG1mGe1wO9IvLm46iYNy2G6bm+trOdEWbwXSaZiPqVc1kj4pUCYHCQV6etJ2IhHhTAjrONYngJtpKD8WUc0FvW9kyG8rm8BMoIMQVFiyblyf0rlUaojvFUTQKKiye1LlwL.fo8QqX2e7D4HSqVsHt3ZElwL9G..38du+IJqrZ9DUTJjWd4C.foMsogktzkI5JBYswfAC..3vG9vXcqKK7Ye1rPqZUajzwvUSiZTij09WxRneoKU.BLv.kptyk0ZVyZwN24ui91WSmc4IjPhnAMnA17yH6Dm3DH2b2OV6ZWCt3EKvtkHG.HnfB.wGeB..LYNoJoSmNjXhIB.fW4UlJdy27Msaisu95Gd228ehd26di1zl1fHhHRap+zqWON0oNE18t2M..9tuaU3l2rTlLWBH2G5URVB80st0gIO4lKUcmCCkX+Mle9WBu5qZZFsIkTRnCcni39u+6Gst0h6ET50qGok1rAfoJ5z91WNnQMRdl4+cSPAEHdgW3EYhbR0y7G5N4jSF95qOnjRJ0tM1G6XGG+5uNcjPBIhN1wNB.ft28til0Lw8dxkUVY3+7e9OX26dWH6rMclSz7l2RIOdcUsl0rZYs+krU49oO8ovZWaVx9sTvdydrJ2qM6aeYi3hKNL3AODzfFz...T25VO3u+9YYwkUc0lt8X27lEiqbkqfyblyhCe3Cgu4aVF.LU9Hs272eewTlxzP7wGOSnStT18t2Ed228ehxKuR69XefCX58qhO93w.Fv.PzQWeT25VWK0Fj5Tm5f.BH.bricTTXgEhKcoKA.SONtibjifScpSa2i46D03pbO1XaAhIllIa8OeWVhHhHU.IsvxDRH0EewW7kRU24PvQXF5lcnCcPDP.lJgid6s2vc28.l28Wlez.UVYknrxJC23FEi3hy9rm1+y71aSGTLu9q+FHt3hiyNmb4Tc0Ui8u+8iW+0es+2u2fhDGG4HGB96u+vKu7Fd4koWW5kWdBO8zKTXgWCkWd4nzRM8nAtwMJVzOVO4jZaF5m6bmEol5Dj0wPR2zjW9xWEyadyEcricBwDSL..h5HBkpYwFabJcHTqzoSKd2288.foBdASlSthzoSGhO93wLm4+F..O2yMI3lata2ii6VYbVu9pfe9E.7yu.ryQjqCymtcG6XGC6XGaGKcoKA95qzWS8uURdUPXUq5awpV02J0cqj4Aevdfm4YFqUcTAR0rEtvEhfBJHq5Zu5UMUui+ge3Gj3nhHow.Fv.vfG7PrbbiVazpUKZdyMsnz99u++hqd0qh9129f5V2PjyvzkSwEWLRO8zvu7KaVoCkZjbmLGvE7zVSiFwMiQVQyDF85qvpRlWXgWC..Yl4bvu9qaUpCKhjLqXEqDkVZoX3CeD..BNwtY0st0EYk05wHFwHjiviHWuD5jzSmNsHyLst0NQlYlI..SlSNEV+5+dKOFogMrgg.BPb0difCNXnWekvc28PNBOxEGe.mDQDQp.bF5jUy7pY+8du2GgGdDh95KrvBwl2r5531kT+xJq0A.S6rjILgIJ5q+S9j+ClxTdY..Tc01+BWEodwD5jUwe+8Cu5qZp1UaMGEpW8pWEyYNYHGgFQ1EqacqGCaXOonK40Mu4MGu4a91..3se62DUTgd4H7HWP7VtShVfAF.lxTlJhM1XQrwFqnSleoKcI7Ye1rvV251joHjH6i4Mu4hBKTb0masZ0h3iOdDe7wioMsY.e7gasWRZvD5jn8hu3KYobtJ18Yd94mOl0r9T76+9NkoniH6mMrgMh4LmLvUu5UE00Y90NIkTR3Udko.+7iaiVx1wD5jnDP.9gDSLQQmH+hW7h3hW7hXVy5Sw7l2bkoniH6uYO6OCYjQ53pW8phNwtNc5PxImLdoW5kkonibkvD5DQDQp.LgNUq71auf2d6El4LmIVzh9ZQO677xKOzgNzNzgNzNjc14nHm7aDIWZSaR.aaaaGsu8sEsu8sEuy67+IpqWqVsncsqc38du2CZ0pAZ0xhYEYc3pbmpQZ0pA+6+so5QcCZPCE8BfK+7yGyd1eFRHgjjiviHGFwEWqA.PFYjARM0TQvAWWQd8wgO7C+P..jZpiGd5IWrbj3vYnS2UUTQ4Xdy6yQCZPCspj4W9xWFok1rQ1YmiLEgD43I93S.yctyEW+5WWTWmVsZQLwzTDSLMEe4W9U35W+ZxTDRpULgNcGUd4kg0rl0hPBIDnQiFQkL+5WuPb8qWHlybx.6d26QFiRhbLs4MuE7ke47QwEWLJt3hE70Y90ZQFYjX8q++hBKTbKxNx0Fuk6zczxV12X47SVLJrvBQFYjN..1912gTGVD4z3G+weBt4lo2hc3CeDh9vbwe+8GqbkeKFwHdR3t6dJGgHoxvYnSDQDoBvYnS+Ed5o6H3fCVzW20u904wfJQ2h0u9uG.ld93O4SNb3u+h6LwNzPCEYjwbvy9rSRNBORkgIzIK7yOe..rTmoEqLxHcrks7qRYHQjpPVYsNXznQL7gOBQkTWiFMngMrQvKuLcbqVd4UJWgHoBvD5DBJn.wK9huDRLwDA.rpslVFYjN14N2kbDdDoJrt0sdrt0sdrfE7khZKsoQiFrrksb..r28tWLyY9uvMuYIxUXRNwbASnyiqvaUfA5Od4W9kQ7wmfnSjetycN..jd5ogbxYexQ3I4zpUKdrG6w..PPAEzs80h8jMmK...H.jDQAQUKszThPhbwjQFYfwLlw..fPBITAcMlKlSIkTR3kdoWFu268O4r0o+Btn3HhHhTAb4lgtQihaF5hs8Nal3DeVjPBIJ5q6rm8rXVy5SA.vAO3gj5vR1LxQNR3om24s.TpolJ.3L0I4UFYjNpt5pA.vXG63PngJrYoCXZl5ImbxXBSXhXpScp..HzPCSVhSx4iKWBc510111NQeMm6bmCyZVeJV7hWD..RLwjk5vR1b2Rleqdlm4YPlYlocHZHWQst0wiO+ymmkeu0jTuyc9dP26d2Afy0GnljW7Vt6h5zm9T3zm9TBJA2e1rl0mhEsnEhDSLYmpj4O4S9jBpct4laVlsNQxg3hq0Ht3ZMl27lGxLy4fKe4KKpq2au8FcpScBcpScBG+3GUlhRxYiKWBcwtvuTq7xKOgWdI9j4W7hWDG3.Gzo7DSSr6A3TSMU3iO9.e7wGYJhHWcspUsFae66vR0UTLhLxnPjQFE71adHtPl3xkPGPbIzUqe..MZzBMZD2+7ekqbELm4jgLEQNldpm5ovS8TOkn+v.DIF6XG+FJpHwcXt3t6tC2c2cQ+5XR8h+j.QDQjJ.SnS0phJpHTTQEg4LmLbYKdLB84uSj0ZAKXA3l27l3l27lBp8Zz7G+hH.lPmDfBJn.TPAEfEsnEpzghUyc2c2l6iTSMUq5DniHgXIKYI3RW5R3RW5RJcnPNoXBcxkPDQDgjzOiZTixRU6hHhbjv8gN4RPpRnC.LtwMNjSN4..fssssIY8KQDYK3TMHWBR8sJOgDR.IjPBRZeRDQ1BlPmHhHREfIzIWBgGd3xR+N9wOdYoeIhHwhOCcxkPvAGrrzuZznAO8S+zXdyad0diIEyvF1vP.ADvs8mkWd4gu669NEJhHR5wD5DYi7vCOvPG5PwhW7hU5Pg9SpoZxejQFIRM0Tgd85A.vbm6bsWgEQxBIOgdYkUB5cu6CBHf.k5tVRzwN1Q3gGdnzggC.08wBq8VfAFH5W+5GVyZViRGJt7D6Aqi4ZTPpolJl6bmqkD7N5LexNqxOgmqUd4kmnG83AQfAFjRGJ2QEV30v5VWVve+k+bhRZB8INwIfd269HkcohSsednS+Uomd5V0yFO5ni1Rs+m+bixn28t21z0OlwLFjVZoIQQCYO3t6dfjSNYjbxNtm7iSYJSE50qGCbfCTVGGtn3HhHhTAjrD5AGbcTcyNGP8dZqY5TmSs98lswnQiV8hba7ie7X7ie7bOpq.F1vFFZTiZjM2OMnAMv1CF6.VK2ct3t6tihJpPYcLjrD5icriSp5JhTbUVYk3F23FV80eO2y83zjXPMnScpS+kUwt0pm8rmRR+Pze13G+Dj09WxdF5st0sVp5JhbHrnEsHDRHg..fgLjgH5qOkTRAe0W8UB9zyhDuwN1wB..c5zIY8oGd3AznQiC+5fvAO7n6f10t1hu9q+ZYq+krYnWQEUHUckCEG8WTa8LBtR2qcW9xWFW9xWFFLXvpt9gO7gKwQDA.3u+9iTSMUnSmNIMYtYwDSLRdeJWTsuEkJjNcx6NEmKJNhHhHU.IKg9d26djpthrK3hhSLxHiLr5qUr6KZplMzgNT7jO4SJqiQSaZSk09WJvEEmymcsqcJq8ujkPOyLyDkTRIRU2QjCmzRKMbjibDq5ZMu52IaSpolJBLP4u.cTu5UOYeLHWOYl4bj09WBeF5UhEsnEJUcGQNj1vF1.xO+7E80oQiFnQiFLxQNRoOnT4ZUqZERM0Tsq2oCmkpEG47n7xKGd6sux5XHoOg9Uu50fkrjuF0oNACsZcLe77iXDi.8rm8RvmO1p28gNYsV0pVEBJHSkYxm3IdBQcsd6s2H0TSkUiLAPiFMXbiabRxqASKszD0GH3RW5R17XJ2Xoe0jxJqLr90uNYc0iaKpt5pvUu5Uc9J8q..93ienhJpTp6VIyIO4oP0UWsRGFjStqe8qC..CFLXUe30t28tiMsoMIwQk5hT8HJrlhDz4N24jjwVNY9y43pOmipppJbhSbBTVYkqzgxck8HYN.Wk6DQDQpBLgNQ1.qc0uGarwJwQh5gT97xyJqrPkUVIBN3fE004LLCch9y34gNQ1Hq8zYybRK97zM4we7GG0oN0wl6GiFMhzSO8a6OqacqahpOTqEJKRciyPmHajQiFw7m+7s5qO0TSUvKRS0nPBIDjZpoJIIy2zl1zeIYN.PDQDgM22D4niIzIRBTVYkYSypaTiZTNr6LD4l0Tm7uSxImbvgNzgr49Iu7xSBhFhr+bMeGDhjAe9m+41z0Otw45bhEVu5UOI8Ykmd5oissssII805V25jj9gH6MlPmHhHREfKJNhjPlWfaOvC7.nEsnEh95cEJ5L8nG8.Mu4M2l6me3G9AbhSbhZschcAwwpDG4rhIzIRFrgMrAr0stUL5QOZQesp4U+tTbK1KszRwW9keofaeqZUqr4wjHmA7VtSjLohJp.kWt0W8pTKmRaMrgMDMrgMTR99wfAChJYt0z+D4rhIzIRF8EewWXSWepolpnKJJNJhLxHQpolJ5Se5C5Se5ijzm1xwXqPr0stUYs+IRNwa4NQxLwdvf7m8XO1ica+9u9q+ZK0RdGIwGe7..3du26UR62CcnCY0089G9geXQ09byMWqZbHxQ.mgNQDQjJ.mgNQ1AyYNyA..icri0l6qa8Ha0fACH6ryF..+1u8a1beWab2c2QrwFqkEZl4iQV4x7l27PkUZ8mdiQFYjBtsG3.GvpGGhbDvD5DYGX9H6cQKZQXXCaXRV+pUqVjbxIC.X4+9mUVYkgyblyfKe4Kiqbkq..fqbkqfpppJnSmN3qu9B+7yO..DbvAiF1vFhPBID3s2dKYwoXXth6YqEpGwZyady10wiHoFSnSjczMtwMv28cemne1t1Bu81azxV1RzxV1R61XZKjhD4coKcQBhDhbtvD5DYmkWd4gMtwMh6+9uekNTbnrl0rFb9yedIouZSaZifaaIkThjLlDoz3hhiHhHREfyPmHEvgO7gwgO7gAf5o.xXsJt3hwBW3Bkr9aDiXDhp8KXAKPxFahTRbF5Dovl27lmRGBJh7yOeje94KoIyA.70Wekz9iHmEbF5DovprxJsT21ejG4QP8pW8T3HRds+8ue7q+5upzgA.fMsk3HxQCSnSjCju4a9FDUTQA.f92+9qvQiz5RW5RXEqXEx5XzidzCQ09Uu5UKSQBQ1eLgNQNXtvEt..9iSasN0oNgjRJIkLjDsBKrPrpUsJK6ob6Ewdrrd4KeYYJRHx9iOCchHhHU.NCchbvsicrCricria6OKpnhBojRJPmNcJTT8G1111FxImbT5vPzJpnhT5PfHIESnSjSnKbgKXo9veqzpUKZQKZAhM1XQXgElMMFlKYr.lpy4W5RWxl5O4Ve6aeEU6W7hWrLEIDoLXBchTQLXv.NzgNDNzgNTM1NsZ0Bu7xKTZokZmhL4W8qe8U5PfHEEeF5D4BxfACppj4hkq726j5ESnSD4xYiabiJcHPjjiIzIhHhTAXBchHmd0oN0QTs+rm8rxTjPjxgKJNRUQqVsPiFMPiFM21elVsZgACFTvHijSB8nnUpNdVIxQDSnSNEznQC5YO6IRN4jA.PW6ZWkr9tpppBW+5W2x9R9du26EG8nGkUQLmHBcK5cvCdPYNRHR4vD5jCEMZzfQNxQhgLjgX2FS2byMTu5UOKGJJSe5SWz8w92+9wzl1zfQiFk5vijPm3DmPoCAhjMLgN4P3Ue0WEctycVoCCqVaZSavZW6Zus+rhJpHjZpoxJRFQjcAWTbDQDQp.R9LzG8nGEhIllBO8zCotqkDgFZnvau8Vvsm2BU4yTlxTP25V2T5vP1DXfAZo7hZ9miFzfFDOCtIRB4qu9hQMpQi90u9ozgxcT4kWAN5QOBV7hWDppJ4cg4JoIzaZSiA8u+OLbyMdm7c7orePkIMoIopSl+mYdU2uvEtP7pu5qhidzipvQj5fO93iRGBJFyy0vUeNGZ0p81VCLNhZUqZEZaaaKl7j+6x53HYYduvENGVvB9RUWx7ac6OotnLee4u+9ikrjknHisi.e80W7QezGA.fu5q9J..W5+9vVkPBIH31pV2xZp12hREwc2cGwDSSwAO3APbw0JYabjrruO2y82QvAWWop6bXnduk612uu5Uu5E..l7jmrccbcjM7gObK+2SbhSfm64dNENhb9De7wK315LdDuJDp12hRE5odpmB6bm6R15etn3HhHhTAjrYnmRJoHUcEoxDe7wyYlWKhIlXPVYkExN6rwLlwLT5vwogVsBeNIrbuRJs90u9KqyPWxRn6kWdIUcEohnQiF7tu66pzggSiDSLQjUVYA.WmOjbaZSaf6t6N7xKuf6t6tkcghmd5I7vCOfWd4kk2ewKu7Bd6s2VZaCaXCAfohCjNc5r7eMmnWmNc3ZW6Z3jm7jvc2cG50qWY9ljH.T25JuOVZIKg9YO6YQqacqkptiTIV1xVlr024latX+6e+Vp9WW5RWBm9zmFUWc02V6RM0TgFMZPPAEDBLv.QPAED..BJnffe94mrEe1pUu5Ui92+9qzggMyWe8E..sqcsC8pW8BIlXh10wO3fCFAGbv3a+1u819yO6YOKV0pVE9we7GAfy25kw7hgiKJNmGG5PxaoGVxRnurksTlPmtMKe4KWT64+6jKdwKhIMoIgxJqLapeLZzHJrvBQgEV3csMokVZBpu71auQDQDA.LcnfLnAMHaJ1tazoSGxJqrb5lodXgEF97O+yU5vnV0fFz.L4IO463iCp3hKFuy67N.vTY8kHofb+5BIKg9d1ydw.FP+wRW52.O8zSopaImXVax7W4UdEbfCb.ad7EyyWULJqrxvIO4IA.vIO4Iw7l27.foY7md5oC.SaOOohidR8fBJHrnEsHkNLjT96u+38du2619yJnfBvnG8nUnH5uh6CcmC50WIxKu7vV1xVPokZaSLo1vU4NQDQjJfjVEXppJC38du2C0u9QC2c2corqkLImbxnEsnkptBfiiDaoDLJkyDM5niVx5Kg35W+53we7G2xuOt3hCyblyTR56UtxUJa2Zeawa8VuEZaaaqRGF1EgEVXHqrxB+vO7C..3S9jOQgiHB.Pud83PG5PHmbxVoCkaS4kWN..xO+7wINwIvV1xlQrwJeEUF.YnVtuyctSL+4+4PmNGyDlScpSCMtwMQvIzYkhS7F+3GuUccR8sUtAMnARZ+IVG7fGDojRJXxSdxVJrNVKGoGikGd3gkZTustFIbFY9eK6Uu5Ed3G9gQUUUkBGQt1pnhJvu9q+J9vO7CT5P41TYkU..f3i2zh.UtSlCHSGepspUsQN5VIQIkThS2pY0Ufb7LhaUqj+W.IDexm7IVlM23F23r5Uttiv1YybLPl7ce22A.fCbfCfW4UdE65XyU4tIFMZDkTxMQKaYrJcnn33yPmjThcKIMm4LGLm4LGYIVzpUqfWXb0zpeWJkQFYfTRIEr0stUqtOThC0lV1xVxj40fV0pVgrxJK92Qjhxw79hSNsdy27MEU6MOCGk1UtxUrqi2+7e9OQvAGL.9iCoEgZJSYJXW6ZWnzRKUNBsayi8XOF..FwHFgrOVpEYkUV3Idhm.23F2PoCExECmgNQDQjJ.SnSRJwr6AbjVKCJwBa5ZW6Z3ZW6Z3QdjGQzW627MeC96+c48rUtG8nGXDiXDb14Vgu9q+ZDYjQpzgA4hg2xcRxH1hohiTwH4PG5PJ1XWZokh+9e+uiO9i+XQcc8rm8D8rm8zRoKUrWes4EdgWPR6ua0N24Nw+8+9eA.v1291E80OlwLFQs0XSO8zQ7wGOF3.GH..ZaaaqrU3gLKyLyD8su8E.NVe3UR8hIzIISaZi31cCqcsqUlhDwqfBJPQG+icrig8su8Ipy2ay5YO6ok+6l27lw6+9uuMEKMnAM.e1m8Y1Tebq17l2L..V5RWJN8oOsjzmhsNWXznQjSN4bGOSzGv.F...dlm4YjjX6Vs5UuZ.Xa0lAhDJlPmjLcsqcUTsu3hKVlhDmSSaZSylWkzcqacSQVE7+Yomd5XMqYMJcX.fZuVra9Pa4VO7VzpUqkOTisTOCLeW.5RW5B90e8Ws59gHgfIzIISW5RWT5PvpoQiFdaQsQlO3IVwJVgBGI2tctycJ5qwfACH0TS0xuOrvBComd5vCO7vphgoMso4PWO9I0Atn3HhHhTAXBcRxHlEYj8XOTKFMrgMToCA..K0IbmM8u+8GqXEqvga14.lJMn1pBJn.LvANP7K+xuX08QfAFnMGGDUSXBcRQrksrEkNDtM228ceJcH..myC7iTRIETc0Ua2FOkLw3+5e8uPe6aesr50ECy0+dhjKLgNoHrGKPHCFL.CFLHn15iO9HyQi5jR7bg6Tm5jceLuUFMZDFMZzp9d2YdclPN9XBcRQbxSdRYeL17l2rksLkyjyd1yhyd1ypzgQMZvCdvXvCdvJxX2jlzDEYbuSV5RWpnZ+zl1zjoHgHlPmTHW+5WW1GiCcnCIpBFiXNLWjS+5u9qNzawoQNxQhxKubKm2yNxN9wOtr1+KXAKf6NBxggx+tWDQDQjMiIzoZkFMl9kivrWkSgEVXHrvBSoCCb0qdUb0qdUkNLtqt7kurRGBB10t10j8w3NU84rFBc8dPzci59cnIRD5e+6O5e+6uRGF3zm9zRVIRUp8rO6ypzgfnrm8rGYeLlwLlgrOFDIDrRwQpdFMZDZznoVamixcfPud8JcHbWcpScJEc7CJnfDU6cDe91rpDRxEGi2AiHYjiRMEWnppppTjiyUmAO7C+vJcHbGkWd4I311gNzAYLRHWYLgNQDQjJ.SnSpdW3BWPTsWrGCrRspqtZ6ZkWSnLe9kqjbTK.PhY6Q1xV1RYLRHWYLgN4RPLq1YktZdYqIzqrxJkkil1zSOcIuOkKG9vGFG9vG1tMdhotAnz+7EodwEEGoH72e+sqmG5KcoK81NNLcjESLwH31d3CeX7hu3KJ5wve+8GCYHCACYHCQvWSkUVonGGohmd5onZ+F23FkoH4Na26d2BtsgGd3xXjPtxXBcRQDZngZWSnKVJ4JQtwMtwBtsV6pNu3hKFewW7EhJgtR5u829aJcHTiDycTwQY2TPpO7mrHEQHgDhRGB0nN1wNpXicLwDifmktRuMxrWhJpnPTQEkfZqi7GTjH4DSnSDQDoBvD5jhXPCZP18wTLmfYIkTRxXjTyZe6aOZe6aufZqXd1stJVxRVhRGBDoHXBcRQzpV0J69XlUVYY2GS4V94muRGBxtm3IdBQ0dVTdHWULgNIY99u+6EU6czWbPcsqcUoCABhqbuVVYkIiQBQN1breGUxoxW7EegnZuRbnVHlyg8V25VKiQxc13F23r6ioirm9oeZQ094O+4KOARsPLa0PmgyQdx4DSnSRladyaJp12oN0IYJRt6V+5WuceLECwbZuIlObhynniNZ3gGdnzggfHlp+1QNxQjwHgbkwD5DQDQp.LgNIoN+4OuRGB0HwNq13hKNDWbwISQis4YdlmQoCAYU+5W+DU6ES8TWpcO2y8H31t0stUYLRHWYxRkhqfBtH7xKujit1lEVXg5vuXrbTIjBm1hVzhvTlxTDbeFe7wC.f8su8Ysgkr59tu6C..G7fGT1GKwtZtKszRkoHQY83O9iaUW2l1zlj1.QDDysb+tWi44Yjt0PqVsHrvBGEUTgJcnbGUVYkgvCOR6xXI4Iz6RWtWjXhI4vdpH03F2XQ8b4Tpx+oij+3uBp8+tXyadyhJg969tuK..RIkTrhHy9wc2cG50qW15+fCNX7jO4SJa8uyB+82eTm5TGkNLDMwLAlSbhSTCeU99MhkWd4E5d2uOznF0HkNTtiJojah8rm8fu+6WOBLP48mskzD596ue34e9WPzGjBjRvw5MNTxZmtPLxQNRjYlYJa8+BVvBDU6Uh8Tu83ei3GpQ3L+OENvurwtPmNcnAMngnAMngJcnbW08te+nacqa38e++krNNR18d9Dm3X30e82P0kLWiFMJcHHSz7+9k.ZoFS+RnV8pWMV8pWsnhl0t10Jp1asBHf.rpqyM2juywnu669NQ+yYyd1yVRFawjfVtel8icriUV6e4hzV2+E9qKImGd6s2nqcsaXe6KaYcb3CSlHhHREPxRnO5Q+zhZggPJMiPn21ciFE2s0KiLx.YjQFhNhrlqQrrk89tTedp28t2cz8t2cQO6eo7HO8+7e9OBtsO7C+vR139mEVXgAc5zYS8gRTHf..dsW60Tjwkb9LvAJumgERVB8AOXmiyUYwxQ945ZuI1+t3BW3Bhp8QGcz3EdgWPTWiXIlJ50chXqbY2Md3gG3ke4WFu7K+xh9Zkxxa5O7C+fj0WVq1111JIGVOJQo50c2cWTsu1WXkB+CZSNej6CkJIKgti94aMY6D6y4cricrh9CAzidzCG5CQEonxkoQiFrpUsJQec8qe8Sz6MaoV25V2jr9J3fCFAGbvnCcnCRVeZushUrBQ0dwrCPpMlWaKp1k4iJTSZhsMghZijkP+ZW6pRUWQNnrl6Vg0tX2ZZSaJZZSapUcsxsvCOba55etm64rpqyfACvfAC1zXaqjxOPQJojhC+1Ur1H1GSvQO5Qkrw17iBi2DQmGEVn7tW44hhiHhHREPxRn2id7.3xW9xRU2QpDomd5V008IexmfO4S9DrxUtRIKVjpEs4.G3.gVsZspJNXVYkE5Uu5knutW4UdEQeMBUN4jifaabwEGBN3fs4wrm8rmvO+7C94me1becqRN4jkz9qlH1GAUUUUEWSNt3l9zmtr1+RVB8V1x3vTm5TPUUUkT0kjCGq6g0YK2VUO8zSjUVYII6S86+9ueatOLabiabB9nNsMsoMHqrxxpWa.Se5SGG3.GvptVg1+hwW8UekMMdcu6cW1dbJR6dBulI1elb3Ce3xTjPN5prxJwwN1wj8wQRqVFETvkvJVwxQ8qeCP.A3uoAPFKHGViPCMTDTP0g0ycqfsr3a9nO5i..vy+7OuUN1ZtsDhqbkqDyadyy5CHIRxImL1yd1yc8qaqKvuyblyHpYPauX96Kw9g0t268dQrwFqbDR1MV6GF4F23FRbjP.lVaIW6ZWCW4JNV2g3JqzzNZ3F2nHb5SeFr3EuHnUqss0LqMRd11u5qVHt3EyCQEkohQuiVkia3C+oPu5UuDbsWV8Vo3ru9oe5m.f0mP+OaPCZPXPCZPBNwtstc0ta5XG63skP27Ou7Vu0aII292ILgIXy8gPr28tW..jTRIIpqyWe8EkTRIBt8lOLdjSd5omnhJpP15+O4S9DQeMUWc0Brk78aDqJpnBr4M+K3q+5EqzgxsorxLc3IctycdT+52PYOYNfLcZqEQDQByKF2xJS9dgk03Tm5Th3EWpYB+MNL+YZjhObSJojhjtszLmX+VUZokhMrgMX4VCeyadSq54VKTcnCc.8nG8.coKcQR629129Jo8WM4Ue0WE.h+NJrrksrZcV5l+PBVaQ8YAKXAXDiXDBt8ibjiT1JRQhsl6aV+6e+EPqD2qu9iWWJ93QMopppBm3DmvgKWCfoD30u91uZLOuuyDQDQp.NVOfaxkPJojBF1vFFF5PGprz+93iOnu8su1sY3J0iy.Fv..fxTkB6ae6qnWrWYkUVnu8su2w30VKWt+7O+ynjRJwREsSH2oEsZ0Z4QpUd4kaSi+sJiLx.0st0UTWCWU6j8DSnSJhEsnEgEsnE4PWU3TB2sDi1KFMZDFMZTzOdk0t10hqe8qC.fgMrgA.aOYdFYjgkBoSMeFh+WMxQNR.X8aaxakVsZwZVyZrpq0d9XSHh2xcRQoFpVXRkoLko3PLiNqsdSGTPAgfBJHjYlYZSaKsSe5SiSe5SaSUEOMZzXyq4Cy8g0lLWpV.nDITLgN4PvUOo9i+3ONxM2bU5v..l1yrye9y2pu9HiLR7ge3GZ0W+5W+5w5W+5uiesJqrRqteECe7wGr10tVap9GHkk4UhDBlPmbXjRJoHqUDMGMe0W8U3q9puBojRJn3hKVoCmay27MeiMc85zoyx5Xn90u9n90u9050bwKdQjVZoUis4K9huPTwQaZSaDba0nQClzjlDxJqrr4u+4sZmTBLgNQDQjJ.WTbjCkCbfCfTRIEKO+y0rl0n5JtOFLXPwOFTEBoplAjPBIba+2JqrR7K+xubaE+kKe4Kiu8a+1ZsuD6yUuKcoKX+6e+2wul6t6N9nO5iPiabiEUeVal5TmpCwZgfb8vD5jCIyugn4acYjQFIxLyLUxPxlXNoxTm5TU3HQbLu1FjxcifGd3A5YO64e4O+QezGEacqa0xyOWud8vfACnpppxxYDQ0UWMLZzH7vCOrrh7ALkn+NkD0SO8DOwS7D3u829aHjPBQx9d3NwbgL5t8AHHRtwD5jSg7xKuaagyMyYNSDWbwofQjvMhQLBb0qdUkNLrICcnCEKdwxao0zWe8E8pW8RVqpexokrjknzg.4hiIzImRu7K+xV9+8vCO..v8ce2GFyXFijejbJF4me9..H6ry1xrJc1SlC.TTQEg90u9Y0agK0rW3EdAbjibDkNLHhIzImel2JS+3O9i3G+weD.2dQMwSO8Dd5omvGe7wxu..71augO93CzoSmk+LqQ94mOxImbfd85uiecu7xKIshkoTLXv.dxm7IwBW3BU5PwgQ+5W+ro8KOQRItJ2IhHhTA3LzIUuJpnBTQEUbWOOp26d2K1wN1gf5qHiLR7vO7CKpweTiZT059q1Ywi7HOBV6ZWKzp0zbA5Se5iBGQ1eEUTQ..x1YQ.QVKlPmTcZUqZkfaqACFvu+6+tfaed4kGJojRfu95qnhIyOB.m4D625iwv7sYdsqcsnwMtwh5uycl0+92ed7KSNr3sbmTcZdyatfa6wN1wD8y.0ZOSrA.F8nGsUesJo1111dW+Zm5TmBqacqCkVZonzRK0NFU1Oomd5HkLQzRsC...B.IQTPTURgIyIGZbF5jpS3gGtfaqPuU6+YlmosXOQw7zSOQpolpSyL06d26N..hM1Xqw1YvfArgMrAK+9HiLRjbxIKmglry7I11ku7kU1.gHAhyPmHhHREfyPmboYq2h3O+y+bq51n6LLK8G3Ad.zhVzBq5ZyKu7vxV1xtspl18e+2OdoW5kjpvSxM+4Oer7kubV1VImVLgNQ1fJpnBrksrEz0t1UQesNxKTtt28ta0IyA.99u+6woN0ots+rMtwMhMtwMZ426u+9C.fgMrggt10thfBJHqd7DJywTlYlIxImbj8wiH6IlPmHaTt4lqUkP2LGsYq2st0sZ8YlWSzqW+eIY9ch4iL1zSOcjd5oa0iG.vS8TOE7wGefVsZgVsZsbf9nQil63YnNSlSpQ7YnSjDXtyct1z0mZpoZYucqzr0sfls92EViUspUA.X4vbQud8Pud82wj4DoVwYnSjDPud8XEqXEXvCdvVceLtwMNr7kubEYUUeO2y8.f+3HNUrJpnhj8CukZxcqnAc2z111Vr6cuaYJZHRY3XLk.hHhHxlvYnSpJgFZnBtslOMzjJW5RWB+xu7K.vzI+l0XHCYH37m+7..1sS1rt10thV25Va0WeAET.V4JWoDFQxuNzgNvYnSpNbF5jpRyZVyDbaO1wNljO9G7fGDG7fGDokVZV8GXH5niFQGczhtn0XMFzfFjMkL+Tm5TNLIyUCGSsDYKXBcRUIhHhPvs07YWtbIyLyzl6C4LodPAEDBKrvro936+9uWhhFa2AO3AU5PfHEEuk6jpRHgDhfaqbLC8+rzRKMaNobpolJxImbv1111jnnx19fBm6bmCqcsqUxhEohst8AIxYGSnStrrWGzFRQR8DRHAK6M74Mu4YU8gVsZw3F23ro3HyLyTxW6ADQRCdK2IhHhTAXBchrCxHiLPFYjgM0Gd3gGvCO7.CcnCE5zoSTWqO93iMO677xKOU0ry8zSOU5PfHIESnSjcfACFfACFjjmCdfAFHF6XGKF0nFkkRb5che94G7yO+v8bO2Cdpm5or4w869tuyl6CGIhY8VPjy.9LzIxNJmbxA4jSNRxpW2Ku7Bie7iWBhpZmiTslWpznF0HK64ehTCb4lgtGd3dMNqF5timpjRmzRKMTXgEhBKrPkNTpQokVZpxj4..MrgMToCg+Dw8BLiF+ie4pyCO7PoCAGBR9Lzqt5pPrwFKBLv.k5tVRjPBI.2bS3eaqdOajE92Wl+q.iFMHSwhqokrjk..f.BH.LrgMLENZtcUUUURx9n2QV.ADfRGB2Ap02uQ93gGdfjSNYb8qeckNTtit90uNN3AO.NvAN.RLwjk0wxkaF5DQDQpQR5LzOyYNE91uc0HlXhQJ6VxAAeTExiabiafzRKM3t6tiwLlwnzgCxHiLfACNm2MlxKub3kWdozgAYG4omdht10tgt10tozgxc0QNxQvJVwxw1111k0wQRmg9zm9LXxbhrR50qG+2+6+UQigktzk5zlLGvzeGRjilVzhVfW7EeIYebjrYnGRH0CO5i9XRU2QjKoSdxSZY+paq6abgRoOKykRkWd4ve+8WoCCh9K7zSOQUUUIbyM4aA7IYyPezidzhtXWPJIM+ueQNZLum0m6bmqrOVm6bmS0jLGv0ZF5Zz7G+hbNL7gOBYs+4hhiHhHREPxtk61xYpLoDD+1iQ0tC9bPoWudjVZoAO8zSzqd0KDczQKY881111PN4jij0eNJbklg9ercRU13fDt10t1iu9qWhr0+RVB8ctycgd0qdIUcmCC06J6V3eeY9uBzpUs92EN1pnhJvZVyZr76GzfFjUcNlqWud6xswWI4bWe1E2iAy7qKUsuEkJjb+gnkrD5evGLSUYBchbzrxUtx63etWd4EpW8pG70WewYNyYP4kWtcNxTd94meJcHPzc0G7A+aDRHgJa8uj8Lzc2cOwW9keoT0cDQhT4kWNN+4OONxQNhKYxb..e80WkNDH5NpxJqTVSlCHwEVlu4a9F7fO3CBe7wGK25KGsaYs6t6NK8q.vZJ8qNy6OYx0fXd+lJpnBYLRrFFg3dcow+2+UlBGmHUUUUNbqeByueYEUTAJszRwxV1Rk8wjqxchHhHU.I+vYYHCYPnicrinwMtI..vau8QpGBaRG6XGQbwEGb2c2ET6cztCCDQRihKtXkNDtC362HV50WI1+9yE6ZW6RoCkayMuooe953G+3XG6X6HxHktcoxcijmPut0MDb7ieRb7ieRotqkDkUVYnoMsoBNgt5k0rJ2UW2PGMZznhejJTs4pW8pJcH7mHtj4lmrgq9bNJu7JvO+y+D9keYyJcnbWYORlCva4NoxHlmKZcqackwHgbzckqbEkNDHRRwD5jpxYO6YEbaaPCZfLFIjityctyozg.QRJlPmTUNyYNifaKOY.csUXgEpzg.QRJlPmHhHREfIzIUEw7bQqW8pmLFIDQj8ESnSpJ71n55RssKLHRr3q.HhTERHgDT5PfHEESnS0pvBKbDVXgigO7QnzgBQ2UcpScRoCAaR+5W+Pcqac41ojrZRdgkgTeBHf...vXFyy.850isu8cnvQjzwe+82AshgQtZF6XGGBLv.Eb644gN8mwYnSDQDoB3BlPWbebV0ZoA0nQCvnQwc5oEbvAiwLlmQlhHkQhIlnRGBjB3zm9zJcHbaRLwDD8ttnpppBUUUUh90wj5kKWBc0ZBZwp7xK2pNyrCKrvPaZSqQ1YuGYHpjFabiaTvss0st0ve+8WFiFxQz+8+9eU5P...6cu6Ast0sBol5DD80dwKlGt3EyCkUl3ecLoNwmgtKpF0HSmFd6XGaGcpScVTW669tuGl3DeVLqY8o..H2bOfjGe1hCe3Ci6+9ueA2d9bzc8X9rpVoz5VGG..RO8zPzQWeQcsFLX.+7O+y3cdm+O..zzl1LIO9HmStbIzE6wgpZ+3ScVy5Sg2d6MhO9DD02qQGczXRS54..vrm8mgbxYexUHZUJt3hEzLuO5QOJxKu7rCQD4HXaaaaJcHfDRHdKyHO5nE2ovkACFvd1ydPZoMaDVXQHGgG4Dyk6VtSDQDoF4BlPWcOiaw55W+FXlyblH6ryFFMZTTqwfnhJJDUTQgIMomCsu8sSFiRwaYKaYBpcaXCaPliDxQRN4jCxImbTzXXRS54PzQGsnlctACFfACFvd26dw+9eOSTYk5kwHjbV4BlPm9yt90KB+6+8+B4latH2byUzKbvvCObLgILQYJ5rNUVYk3zm9z03pY92+8emKRRUjzRKsZ7qu90ud6Tjb204N2IDd3gK5qa+6e+X+6e+3e8udebyaVhLDYjZfK2yPmtyJpnhw67NuM..dy27sQKZQKD00GRHgft10tfsrkeUNBOqxs9F3ImbxHgDR.m8rmE+7O+yJXTQxozRKMDd3gi1111B.f5Tm5fsrksHpiUW4RW6ZWvXG63D80YznQ71u8aB.fxKuRoNrHUDlPmr3l2rT..L8oOUrhUrJQe8iabiGt6t6XCaP3aaL6k8rm8f8rGG2sZGIcxO+7QVYkkRGF2lt0sthwN1wgfBJHQccFMZDm4LmlIxIAgIzo+hJpPOt10tFBN3fE00ETPAgQO5m1xswdiabSxPzQjyitzk6E..OyyLVQmLG.3RW5RXbiarvc28TpCMREhOCchHhHU.NCc5NZDiXDnhJJGKdweskRRoP1m5AETP3EewWB..ibjiByd1eF9se62k0XkHGMcric.SXBSTzmbZlu6VW7hWDO5iNDDTPAyYmSBFmgNcW4omdgm9oGMN6YOCN6YOinWQ30st0EiabiGsssIKSQHQNdxN68fwMtwK5j4FLX.m3DGGm3DGGO0SMbDTPh6QdQDmgNUiLXvHdoWxzLteq25sQKaYKEUEkKzPCEol5DPG5fo8od7wyCCERcZe6Ka.X5NSEZngJ5q+fG7fX5SeZ..vSO8VRiMx0.mgNUqJqrxQYkUNdi230v91m3KwqgGd3XDiXDXDiXDHmb1qLDgDorxIm8Z4mwm3DeVQe8FLX.u9q+ZvfAivfAVaDHqCmgNIXkTRY38e+2EKbgKFZ0JtOK3Dm3j9e+eZvW7EeNRJo1J8AHQJf8t2ciQMpQaIQdDQHtZrt45ydEUvslFYa3LzIhHhTA3LzIQ4F23lH6++169O9Z799+O9ijHhHDR7qjHIBAM9QITrPUTq61mg8oFcePaYyVUrpce2mO6yp1ttQo5OoaqZqNRYcjhR0YyOV6nU8q0VjDI9UIBRjHD4GjHIjbNmu+wYQ6mdibtNw04GNmm2+G2bKuttd+xQNWutd+958062YlIImbxNUuzquWKO9i+DDXfAR5oqgdW7M7HOxz3wdrY0nVRWsXwx0We1E4Vk5gt3zVzhVHYkUVWeCivYDUTQwi+3OACZPCzEkch39LnAMPd7G+Ib5h4eyMaEs9rKlEUPWbZW5RWlW9keIN5QOJG8nG0oec1Ze6aOyZVON28cODWTFJh6wrl0i6zyncqVsRVYkEYkUV7hu3Bnppp1Ekch+FMj6RiREUTIyd1yF.BJn.4se62lniNFCe7soMsgm9oeFdsWaQ.3Ut9uKxMxHG48B.+ze5OiHhHBm93G0n99DbvM0rSKQTAc4VmEKVYpS8mvG8Q+Sm9X+Y+rGAvduV1wN9LyN0DwTMhQL7q+6rMl0l8RKsTULWbYzPtKhHh3CvuqG51r4bShKm84C6uJ3fCgxKubmtWK0G+i7HSiV1xVxV1xVbEomH2xF8nGMSXBSrQ0yb.JojRXLiYzz111NSNyDwNSufdFYb.ZdyatSuvi3tL9wONmZoK0Yh0e23G+3XkqbUDSL1eV5NymcQDQDLiYLSlwLloqJ8Dwsq9NDb1ydVd3G9gTwbWf.BH.ZYKaIm3DekmNUtgrXwBIkTOcKsU.iZTixT6B5Tlxj46+8GEspUsxLOsdLO8S+Tjc1GxSmF21HnfBjEsnWC.5RW5hW6M1IhqlUqVImbxA.9E+hmflzjf8vYzsW1zl1jmNELEkVZor4MuIV9xWNgEVKbosko1C83hKVl3DmjYdJkukCeX62bQqacqnksLbBLP68Bt92G7pppZJqrRoG8nWdj7yhEq7TO0SB.yctyid1ydph5heGKVrP1YmMyYN+N.7nEyO1wNBst0QPyadyA3abMCaTQEWlxK+R.Pu5Uu8X4nurHiLRlxT9wL7gOBdrG6wbosktRqHhHhO.SqG5kTRw7W9KuqYc5jukhK9BLzgNTF8nGE.jXhIR7wGOAETP.Pc0Y45wc7iebN9wON4me9djUfpZpw9lLwBVv7Y1y9ooO8oOpW5hekLxHCdwW7EvhEmaR3ZlJqrR3tu66lwN1wR26d2ocsy9yuuIMw90LrXwB4kWdbxSdR.Hmbxg7yOept5Z7X4rur3iOdNwINNcqac2k0FlVA8oO8YPjQ1Fy5zI+aAFHjRJClAMnuC268duWu.9MWOY3CeD.PwE+02j0W7EeNUUk68KpUTwU3Ue0Wge0u5WQ+6u1c0D+CVrXgW4UdI29tmVlYlN2y8bO7c9No..8qe8mgO7g2fGSO5wWOYspqt5n3hu.uy67Nr28tWBLPGcsFwY8POzCw9129cYmeSaRwsxUtxF0plj2tm4YdZxJqrcasW26d23+5+ZBz+92e.HjPBwzN2VrXgCbfCvG7Aqm268RC.5ae6moc9aHKXAOO.bm2o5st36wpUqjYlYB.u3K9Bt0d4dzidXV+52.8su80T+tU0UaeIoc+6e+7duWZje9m0zN2Fguxjh6a5Tm5T7DOwS33.ajLsdnmWd44SVP2c9dne5SeJRM0kQTQ4b6mxFUPAEDCbfCjDRHA5W+rWHeUqJMWRa8ssfEr..34dtmijRpG50AT7YX0pUNxQNBKXAyG.t5Uq0sztUUk8Gm1BW3hH4jS1z+NUngFJ.bO2y8PBIj.+y+4GyF1vGZpsg+lydVW6MEYZ2N2ZW6ZLqSkemRJoXJojh4Mdi2zkULudADP.z912dF23FOiabi+5WTvUqppplpppZdlm4Y3zm9TZA6Q7IXylMxM2b4oe5mhqd0ZcaEyCJn.YdyadLu4MOFyX9At7aPNt3hiG7AeHN8oykSe5bcoskurUspU5RO+ZrOEQDQ7AXZEzyJqr4PGRK.KNqBK7r7Zu1efW609CLzgNT2V6FRHgPHgDBO0S8TTVYk31Z2ZqsNl1zdDNxQNhaqMEwUIyLyfe1O6mh6b.mpqtZY1y9oHkTFLojxfooM08rYuDZngxBW3hXgKbQbriou+1XTPAE5RO+l5BKyLlwzYO6Yul4ozm1gOb175u9av.Fv..flzD2+Rq+8ceeOJojR34dt4RW6pq60o3aJzPCiYO6YSDQzZl9zmNfmcg2PDmw0t1UAfrxJK9nO5iI7vceqJlEUTgLu4MeRIkT7HStzQLhQ..yYNyk0t122s292NK6ryxk2FlZEjHhHRl6bmCibjeW5QORB.BKrvLyl3VVvA2TBNXuihG+O+O+JF4HGoGMeBLv.Y7i+A3jm7j74e9W3Va6xJqbd4W9UbqsoH2N5PGx9aZyS9jylQO5w3wxil0L6STtwLlwPN4jCG3.o6wxk5UWc0Q94mO4l6I8zoxMTEUTI+q+0dYUqZUzu90eWZaY5cIb+6+.r+8e.y9zZZ9deu6ioMsG0v2ngqZtlzwNFCicri0q3FdBIjP3QdjowgO7gAr+KfhHdOF8nGMf88JCuAQFYaXBSXhbjibXpt5q5QykpqtZV+5WGe1msSOZd3Ht5h4fe31mpyy0TQ+9u+6m3iuSN8wUWc0A.kWd4TVYkRM0bUrYyFgFZy.fV25Hn0st0Ncu9iN5nYRS5AAfm8YeF5Tm5rSmahHtF+3e7OA.ZYKC2oO1qcsqQ4kWNkWd4.PM0TC0VasDd3gSjQF402NXc7hV0+W8nG8fwN1eHyYN+NO1dGg7+klk6hHhH9.TOz8.Jt3KvXFyOvoNlRJoD9u+u+kr8suM.ne86luTplYloyHFw8xC7.+HF23FmgaiwN1wB.srksjW60dMmJ+DQbMN+4OGojRJFN95WiGt3EuH+7e9LolZZ3gDOqrruB28e7e78Y7i+AXTiZTFpcBLv.4ge3ICD.qYMZcHwaf5gtC3JV.TpeUZynJnfyxJVwxozRKi90u6pAKlCPxI2eJu7KwblyukRKsDJsTm60RaHCYvNU7hHtNCaXM75w92jMa13bm6bbtycNV7hecGVLGf9zmjoO8IYN24Jhe6u82vEtvELb6EP.Av8bO2igiWbsTAc2nie7iwwO9wXHC4tM7wTVYkw5W+54sdq2zoau3iOARKszHszRipppJCeb0OSVEQ77lvDlngisxJqjktz+DKco+IRO8Lb51JpnhgMu4MSkUZ7IFabwEGYlY5jYld9Y7t+NMj6NfYtjJ1gNDE.LnAMHGFqEK12NTSO8zY4K+cnm8r2Mp17Mdi2..tq6Z.L3AOXC+umCdvLbaabKhH2Xm+7mijSNYCEqUqV4S+zOk+7edE.Pu6ceZTsYpotT5Uu5ICbf1uNkitlQfAF302ZVEOKUP2Mpicri.Pm6rimA40OrWaXCqm3hy4mM70q98d2krj2hANvAZ3Y+dW5RhM51TDwbjRJC1v63h0UWc7G+i+9Fcg75EQDsgMsoMQhI1U.nMswwaK1Zqy16fFxcQDQDe.pftaThIlHIlXhN7NtsYyF4medje94wF23FMk1trxJmu5q9JCGuQGlOQDWm65tZ3I.62zN1wNHzPMmEpp+5e8Cu9jqyHZe6aOsu8s2TZaowyOrftmYe3N6rOHIjPmIgDb7vsWUUUwd1ydXO6YOjbxl2pKze6uY7aN3NtijLs1UDowoG8nGFN12+8MuWcr3iOAN7gODG9vGhqcsq4v3iKt3Ht3hyzZeowwOrftmQSZRSHxHijHiLRGFaM0TCG5PGxz28510tL9RiXm6bBlZaKh37bld894e9maps8AO3A4fG7fTSMU6vXiN5nI5niVyzcOL+tIEmMaVc1ivs21VsZgKcoxMs1sdYmc1FN1tzktX5suHhywpUie8pDRvb+NaN4jC.b0q53dnW+D9soM0XSfOw0vuqfty+ZnYNCQuUqVM76BdPA0jq+Zfje9EXJsO70eoyHbl2CUQDWCm46gEUTgDUTwXZsc8iNfQ1Vmq+ZaVsZwzZew4ogbWDQDwGfeWOz8Tpqt53RW5RFJ1l1zlRm6r8gOyL6gdu68cZ3XKt3hMs1UDowojRJ0vw1yd1KJszxLs1tqc096gdHgzTGFaYkYucqe2fT7LTAc2j9129QgEVnghMzPC856ct6bm6xzxgQO5wX3XyM2bMs1UDow4zm9TFN1QMpQQZo8dlVaW+qLmQVJnKn.6c7vLeqbDmmFxc2n7yOexO+7c3cwFTPAc82Y8.CzbdF9EUTgLzgNTCG+QNxQLk1UDow6XG6XFN1gO7gS94eFSocCMzlQ7wGOwGe7DXfNtLwYO6Y4rm8rlRaKMdpftaTgEVHEVXgFZwZHlXhgXhIFdvG7A4vG9V+0W6W7K9+4Tq2xewW7E2xsoHxslu7K+RCGaG5PT7XO1ieK2lG+3GiINwIRTQEMQEUzF5XJpnyQQEYrEgFw0QEzEQDQ7A32UP2Y2eyMy8C8RJ4hTRIWzPuO3MqYMil0rlw8duijIMoI0naydzijnG8HIF8nGigF5r5U+NCmHhmyoNUtbpSYr4yRPAED+ve3XI93ii3iuwups8vO7jY3CeDDRHgX3MFlhKtXMQZ8B32UP2SJt35DwEWm3e8u1qgOl1291yTm5OkNzgF25j7zm9LX5SeFFZEpSDw6xcdm8kMu4Ma33aW6ZOyZVyhYMqYQKZQiacceJSYJz111VCGes0VKctyIRm6r1gF8zTAcOf28c+yFN1.CLPti63NH0TeGl4LmIAETfDTPM7+s0rl0TdrG6mSZokFcqacit0st4T8NeoK8OY3XEQbsVzhVjgiMv.Cjd0qdSu5Uu48duUyjm7CS0U2vKnUgEVyIrvZN+xe4uj0t10RW5RhN0Bv0e7O9GLbrhqke5qsl4ML5MF8oOIyQO5QcpMdg.BH.9A+fe.iYL1e0ytxUtB6e+6i8rm8fUqVYXCaX.PxI2OBO7vaDqHde8dv9pW8pIrvZgSe7hHlud0qdyku7kAfvCObCebAFXfLwINIl3DmDW7hEyAO3AAf8t28xwN1wXVyZVz+9eWzrl0LfFypnIjd5GfssssQSZRvN8wJlO+tB51+kVi+KtMleI2H9nO5ePhIlHMsoNdQa3FkOsnEsfQLh6kQLh60Txm5pqNVwJVN.jSNmf9129YJmWQjacu26kF.7nO5zInfBxvGW8Wuncsq8be222Cfq+m2pprxJYKaYKpXtWDMj6hHhH9.765gtyOq0cMCO+5V25nO8ouLrgMLCs4G3JYwhE1yd1Cabi12uzUuyEw6xZWq8857ANvAR+6+c4xF4Pip1ZqkcriOk0u90Srwp8AcuE9c8POf.b1+I6Z9hSDQDIqXEKmSbhSfUqVcpsIQyjUqVImbNAKYIuIQFYaHxHaiGIODQt4BKrVRXg0RVxRVB4medl5qSqyvhEKXwhExJqrH0TWlJl6kwuqftmdBw8MUVYkyJVwxonhJhhJpHOxWRKnfB3se6kPkUZrs1UQDOmst0sPpol50m.qtam4LmlyblSyRW5eh5pyyzID4lyuaH281bjibTV1xVF.LyYNC21B5R827vxV1R4C9fOf9zmjcKsqHRiW+52cwpW8poEsnE7S9ISE.5PG5faossYyFu0a8V.PAEXrMZJw8REzc.2Qul229120+yoO8oynG8ncYOW85pqN1zl96W+cgu1Zsnh4hbaj63NRhctycwhW7qC.ibjijku7+rSM62cFUWc0r90udRKsUoYztWN+vgbWDQDw2ieWOz8TSlDiZty82w92+9XJS4GC.cqacyzN24latjZpKkst0sRG6nlLKhb6r5eaTJojxXQKZgL0o9So8suwsDQeijUVYA.qXEKmst0sRW6p4csHw0vuqftm908vQhIlXI8zyfO6y9L.XPCZPLtwMNFv.FnSuHz.vm7IeB.7ge3FHiLxfV25HTwbQ7wr3E+5r0stUF1vtG9O+OGK.LfALfF045i+3OlMtwOjLxHC.HxHaqJleaB+tB52tnksz9R73QO5wXSa5QHkTRg4Lm4RrwFK.M3yXu1Zqkyblyv9129XtycN.P25V2o0sNBWehKh31Ueu0OvAxfMrgM..ojxfYdya9DczM7dZ90t10.fSdxb3y+7OmErfmmjRpmDYjFeCZQ7N32UP2aeH2uQRLwtRwEeQF5PGBspUsB.hJpnIlXhgN1wX.f7xKe.3bmqPJpnhnhJpfjSt+zst0cOVdKh390oN0Y.3bmqHFzfF.spUshN1wNRG6n8NCDUTQQqacqIiLRmBJn.JrvyA.UWcUzu9cWjTR8zik6xsl.F0nFkoVgq4MuYL4IOEZSa7Nu6tDRnSDUTQa3YD5S+zOEYm8gbwYkHhHeSaZSaxPwYwhEJrvBIu7xyEmQMNW3Bmm28ceWpqNKt71RyxcQDQDe.l5PtexSdBN5Q+Jy7TJhHhbSETPAQbwEGwEm26j8cbia7rwM9WYYKKUWZ6Xp8PekqLMy7z4UvKeRwKhHxsAF6X+gt71vzJn+7O+7azulDd2TEcQDQt0MyYNCW542zJnmPBIXVmJuJAFnJnKhHxstdzid3RO+ZRwIhHh3CvzJne9yedy5T4UIzPatmNEDQDwGPokVlK87aZEz+6+ci8NCd6l5WHWDQDw8HyLS2SmBtDe3GtAW542zJnmZpKkSdxSZVmNuFcriczSmBhHhekvCObOcJ3Rr5UuZW542zJn20t1cd1m82XVmNuF8su80SmBhHhekNzgN3oSASWN4bB5Uu5sKsML0EVlJpnRVxRdKFxPt6quse17le68yftScJAOcFICdsA..JrRRDEDUJHhH9URJIW6rA2cnhJp..9pu5qXW6Zmr5UuZZe6cs2nhlk6hHhH9.L8MmEucYjwAXEq3Oy286de.XnMokd26dQBIzYWcpIhH98N0oxkEu32fQNxQ1fwUas0B.aYKagksrk4NRMud9cEzA3xWt7quL01oN0IGF+oO8o3gdnGB.hLx13RyMQDweTokdQ.6Kg3IlXhNL9byMW.XBS3GQTQEiKM2tcge29gN.gGdq4Dm33.PrwFqC6kdBIzY98+9+..LiYLchMVu2MA.QD41METP971u8RAvPEyqqt53vG191ZsJl+07K6gN.snEgA.KYIuMQDQDF931yd1MO6y9aHrvZoqJ0DQD+FUUUkrfE7BL3AODCeLW7hWjoN0e7+9uooBV87a+jnxJuBUV4U3K+xuzoNt69tGJKdwuIcriwP94eFxO+y3hxPQDw2Vrw1Qdy2bINUwb.10t1I1Ke42VB6FReZHhHh3CvucH2q20tVMr10tNmZX2A3xW9xrsssM.H0TWF4kWdboKUN8su8yUjlhHxs0N3AyjHiLBhO93nac6N.fm64dNZYKc9UEtgMrgR3g2ZyNEusmeeAc.F1vtGdxmb1N8wYyl8O5xLyLHu7xmxKubpnhKSc0UmYmhhHxssZRSZBsrkgSjQFIwGebzktzE.ZTEysZ0J2+8e+lcJ5SPEzAN7gODm5Tm1SmFhHh3.+i+wV4Mdi2zSmFdkzyPGnW8p2jSN43oSCQDQZ.G4HGgErfE3oSCuVpG5eCIlXWXNyYt.PjQFomMYDQDgBKrP.3286dVJpnK3gyFuapG5hHhH9.TOz+VZW6ZK.L+4+7Darw5gyFQDw+UN4bB9M+F6aK2W4JU4gyFuepG5eKEW7Eo3huHyblOJ6e+6WyXcQDwMylMaryctSl9zeTtxUpREyMHUP+lJHlzjl.KZQKjZpoFrYy10eM0DQDwbU+0Xqppp33G+37POzjn4MuEd5z51J9kaNKFURI0S10t1McnCcfTRYv.12LWZQKzujIhHlkKcoKQd4kG.ric7orxUtRRN496gypa+ndnKhHh3CPSJNC5RWpb.3AdfGfALfARrw1QhJpnAfl0rl4ISMQD41R4l6II+7ym8rm8vG7AqG.hN5N5gypaeoB5MBG6XGggMrgyXG6OD.F6XGaCFuMa1nlZpgKe4K6NROGJnfBh1111ZnXsZ0JEWbwt3LxXBHf.t9ZtevAGrCiu971pUqtz7xHBOb6KwkgFZnNL1xK29MOd0qdUWZNYD0mu0m+Mjqbkq..UVYktzbxHZRSr+zDaSaZigOlKbgK30LOYZW6ZGAFnwG.0ye9y6ByFiqUspUNUGblxTlL6XGep1CLLI5Yn2HjTR8jKbgh48e+0B33B5VsZkryNaRKsU4NROGpssss7LOi8WEjfBJnFL1KdwKxK7BdGqLSgDRH7DOwS..wEW7MXrVsZkEu3WGv9ymySahSbh.vPFxc6vXqumJYkUVtzbxHFxPrusVNwINIGF6d1yd.fMu4M4RyIiHlXhA.90+5mzvEFe0W8U3ZW6Ztxzxvl+7edCcST.TUUU407czoN0oRe5Sec30UpWYkoMzJyjJn6FX0pENwINNm7j45oSE.3S9jsyrm8SA33B5kTRIdM4M.W7hk.33B51rYi0rlUC.cu6I4xyKG4nG8X.Fqf91291AfKe4Jbo4jQXyl8Q2vHEzO3AyD.uhee4K9hOG.9e+e+0F9Xp++i7FTUUUY3B5UVYkdEelCvoN0on289NMbAcwboIEmHhHhO.UPWDQDwGfJnKhHh3CPEzEQDQ7AnB5hHhH9.TAcQDQDe.pftHhHhO.UPWDQDwGfJnKhHh3CPEzEQDQ7AnB5hHhH9.TAcQDQDe.pftHhHhO.UPWDQDwGfJnKhHh3CPEzEQDQ7AnB5hHhH9.TAcQDQDe.pftHhHhO.UPWDQDwGfJnKhHh3CPEzEQDQ7AnB5hHhH9.TAcQDQDe.pftHhHhO.UPWDQDwGfJnKhHh3CPEzEQDQ7AnB5hHhH9.TAcQDQDe.pftHhHhO.UPWDQDwGfJnKhHh3CPEzEQDQ7AnB5hHhH9.TAcQDQDe.pftHhHhOfl3oSfamUasWyPwYyFbsqYrXcGrYyF0Vas.PSaZSavXu5Uup6HkLLi9YN3ck6W6ZFOWt5UqwElINGm4yPuqOu8d99Vigyj+dS+a0aJW7GoB52BJszRMTbVrXgyd1y5hyFiqt5piyctyA.csqc8lFmMa13Lm4LtqzxPJnfBLTbkVZobm2YecwYiwkWd4Y3XO4IyE.hM13bUoigc5SeZCGat4lqqKQbRW3BW.vdAlPCMTOb137JnfBH93i2PwVXgE5hyFiqvBKDKVrPvAGbCFW4kWtaJi7ungb+Vv4O+E37m+BNLtpqtZ15V2paHiLlJqrR9jOY67Iex1av3rYyFe3GtA2TVYLaYKagsrks3v39fO3CbCYiwsss8OYaa6eREUTQCF2912WRrwFmWQwb.BN3PH3fCwPEq28t2M6d261MjUNVxI2eRN49yG+werCis1Zq85iXk2h+1eaiXylMCE6G+wejKNaLtst0sRM033QXZ26dWr6cuK2PF4eQEzuEzoNk.cpSIvku7kuowXylM9K+k2kHirMtwLqgkbx8m0rl0vZVyZZv39zO8S3hWrD2TVYL6bm6jctyc1fwje94yBW3q3lxHioCcHZ5PGhl24cRsAiadyattmDxI8BuvBbXLcu62Acu62gaHaLt4O+miJqrxFLl0u90w5W+5bSYjwjc1GhidzizfwbfCreNvA1OadyaxMkUNVHgzL13Fa3aF4BW3BjVZqhzRaUtwLy+fJnKhHh3CPEzMAKYIuEUWc02ve1F23eksssFdns8DZdyCil27v37m+72ved5omNSe5OpaNqbrt0stS25V2I6ry5lFyzl1iPRI0S2XVYbu4a9F2zeVM0TC1r4c9UxhJ577xu7KcS+4u0a8ltwrw3hJpXXlybFbkqbka3O+y9rcvhVzBYQKZgt4LywlxTl7McNLjSN4vK8RuDuzK8Rzl1zN2ah4.O6y9L2zG8xku7kXwK90ohJtBUTwM9+SjFu.F0nFkwdPMRCJf.fG3Ad.hKt3InfreQ4TSMUJu7K4gyrFVQEUHSdxSgd1ydQSap8IxxktzkXYKqgGZXOsie7iwDlvDIkTFLsnEgAXufX5omN6cu+KOb10vZW6ZKidzil10N6WHtt5rPN4bh+8ilosd3rqg8i9Q+H5Tm95IqUAET.qacuOVr3ceYjyd173Ue0EQvAaed.WZokx1291YSaZSbm2Ye7vY2MWlYlNSaZSiQLh6E.pt5ZHiLRm0rl0P7w2IOb10vhIlnYTiZz.PKZQKHmbxg0st0RyadK7vYluKUPWDQDwGf2436IhHhHNEUPWDQDwGfJnKhHh3CPEzEQDQ7AnB5hHhH9.TAcQDQDe.pftHhHhO.UPWDQDwGv+evZNeRRLTBaa.....jTQNQjqBAlf" ],
                                    "embed": 1,
                                    "forceaspect": 1,
                                    "id": "obj-44",
                                    "maxclass": "fpic",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 50.0, 133.0, 100.0, 100.0 ],
                                    "pic": "icon.png"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-67",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 403.5, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-78", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 788.0, 593.0, 143.0, 22.0 ],
                    "text": "p load jitter compute logo"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0, 738.0, 78.0, 20.0 ],
                    "text": "tonemapping"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 343.0, 298.0, 41.0, 41.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 343.0, 399.0, 29.5, 22.0 ],
                    "text": "int"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1108.0, 125.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1108.0, 95.0, 77.0, 22.0 ],
                    "text": "loadmess 10"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 788.0, 626.0, 196.0, 22.0 ],
                    "text": "jit.gpu.image @format rgba32_float"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1098.0, 164.0, 29.5, 22.0 ],
                    "text": "*"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 343.0, 429.0, 29.5, 22.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "dict.view",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 442.0, 533.0, 197.0, 115.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 393.0, 341.0, 77.0, 22.0 ],
                    "text": "loadmess 20"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 393.0, 367.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 353.0, 460.0, 85.0, 22.0 ],
                    "text": "initSpheres $1"
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 353.0, 491.0, 83.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 @embed 1",
                    "textfile": {
                        "text": "autowhatch = 1;\n\nfunction randomPosOnSphere(radius){\n    z = Math.random() * 2 - 1;\n    a = Math.random() * Math.PI * 2;\n    r = Math.sqrt(1 - z * z);\n    x = r * Math.cos(a);\n    y = r * Math.sin(a);\n    radius += 1.001;\n    x *= radius; y *= radius; z *= radius;\n    return [x, y, z];\n}\n\nfunction randcolor(maxVal) {\n\treturn [Math.random()*maxVal + 0.05, \n            Math.random()*maxVal + 0.05, \n            Math.random()*maxVal + 0.05];\n}\nfunction initSpheres(count){\n\tlet spheres = [];\n\tfor(let i=0; i<count; i++) {\n\t\tlet sphere = {};\n        let bigSPhere = i == 0;\n        sphere.radius = bigSPhere ? 1 : Math.random()*0.4 + 0.1;\n\t\tsphere.center = bigSPhere ? [0,0,0] : randomPosOnSphere(sphere.radius);\n        sphere.diffAlbedo = randcolor(0.94);\n        sphere.specAlbedo = [0.9, 0.9, 0.9];\n        sphere.emissive = Math.random() > 0.9 ? randcolor(30) : [0,0,0];\n\t\tsphere.ior = 1.1 + Math.random()*0.5;\n\t\tsphere.roughness = Math.random()*0.5 + 0.01;\n        sphere.metallic = Math.random() > 0.8 ? 1.0 : 0.0;\n        sphere.specTrans = Math.random() > 0.5 && sphere.metallic == 0.0 ? 1.0 : 0.0;\n        sphere.absorption = Math.random()*10;\n        spheres.push(sphere);\n\t}\n    let ob = {};\n    ob.count = count;\n\tob.spheres = spheres;\n\tlet d = new Dict();\n\td.parse(JSON.stringify(ob));\n\toutlet(0, \"dictionary\", d.name);\n}",
                        "filename": "none",
                        "flags": 1,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 353.0, 566.0, 74.0, 22.0 ],
                    "text": "jit.gpu.buffer"
                }
            },
            {
                "box": {
                    "fontsize": 18.492648655692133,
                    "id": "obj-48",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1098.0, 195.5, 126.0, 29.0 ]
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
                    "patching_rect": [ 890.0, 54.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 15.0, 136.0, 115.0, 22.0 ],
                    "text": "b 3"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "jit.gen",
                        "rect": [ 84.0, 144.0, 600.0, 450.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 200.0, 97.0, 26.0, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 176.0, 149.0, 29.5, 22.0 ],
                                    "text": "/"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 176.0, 418.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 109.0, 737.0, 49.0, 22.0 ],
                    "text": "jit.gl.pix"
                }
            },
            {
                "box": {
                    "filename": "jit.fx.lin2srgb.jxs",
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 109.0, 771.0, 75.0, 22.0 ],
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
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "bang" ],
                    "patching_rect": [ 890.0, 86.0, 55.0, 22.0 ],
                    "text": "t 0 b"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 959.0, 164.0, 94.0, 22.0 ],
                    "text": "expr 1. / ($f1+1)"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 959.0, 192.0, 123.0, 22.0 ],
                    "text": "prepend render.interp"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 834.0, 116.0, 130.0, 22.0 ],
                    "text": "counter"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 109.0, 807.0, 201.0, 22.0 ],
                    "text": "jit.gl.videoplane @transform_reset 2"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 15.0, 737.0, 79.0, 22.0 ],
                    "text": "jit.gpu.submit"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_gl_texture", "" ],
                    "patching_rect": [ 15.0, 701.0, 207.0, 22.0 ],
                    "text": "jit.gpu.totexture @source accumImg"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 834.0, 192.0, 110.0, 22.0 ],
                    "text": "prepend render.iter"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 15.0, 101.0, 47.0, 22.0 ],
                    "text": "jit.bang"
                }
            },
            {
                "box": {
                    "filename": "comp.path_tracer.comp",
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 63.0, 661.0, 744.0, 22.0 ],
                    "text": "jit.gpu.compute @shader comp.path_tracer.comp @autoworkgroups accumImg @render.num_bounces 8 @render.samples_per_frame 10",
                    "textfile": {
                        "filename": "comp.path_tracer.comp",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "linecount": 3,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 208.0, 566.0, 146.0, 49.0 ],
                    "text": "jit.gpu.image @format rgba32_float @dim 1920 1080 @name accumImg"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 101.0, 373.0, 151.0, 22.0 ],
                    "text": "substitute direction cam.dir"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 123.0, 344.0, 153.0, 22.0 ],
                    "text": "substitute position cam.pos"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 111.0, 166.0, 135.0, 22.0 ],
                    "text": "getposition, getdirection"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 131.0, 199.0, 269.0, 22.0 ],
                    "text": "jit.anim.drive @ui_listen 1 @ease 0. @speed 10."
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 111.0, 230.0, 285.0, 22.0 ],
                    "text": "jit.gl.camera @locklook 1 @tripod 1 @position 0 0 4"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_matrix", "bang", "" ],
                    "patching_rect": [ 15.0, 51.0, 197.0, 22.0 ],
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
                    "patching_rect": [ 15.0, 21.0, 87.0, 22.0 ],
                    "text_width": 60.0
                }
            },
            {
                "box": {
                    "attr": "render.num_bounces",
                    "id": "obj-50",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 102.0, 521.0, 230.0, 22.0 ],
                    "text_width": 171.0
                }
            },
            {
                "box": {
                    "attr": "cam.pos",
                    "id": "obj-39",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 72.0, 445.0, 192.0, 22.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-15", 5 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 2 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 386.5, 266.953125, 132.5, 266.953125 ],
                    "order": 1,
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 386.5, 260.953125, 110.5, 260.953125 ],
                    "order": 2,
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "midpoints": [ 386.5, 272.5, 154.5, 272.5 ],
                    "order": 0,
                    "source": [ "obj-2", 1 ]
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
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-28", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 1,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "order": 0,
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
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-30", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 2 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-39", 0 ]
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
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-42", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-42", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 1 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "order": 2,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}