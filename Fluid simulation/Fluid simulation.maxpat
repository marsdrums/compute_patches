{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ -21.0, 135.0, 1300.0, 867.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "dict.view",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 323.0, 849.0, 542.0, 423.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 294.0, 33.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 53.0, 70.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1008.0, 135.0, 53.0, 22.0 ],
                    "text": "jit.matrix"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1008.0, 103.0, 106.0, 22.0 ],
                    "text": "jit.coerce 1 float32"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1008.0, 39.0, 179.0, 22.0 ],
                    "text": "jit.gpu.tomatrix @source myBuff"
                }
            },
            {
                "box": {
                    "cols": 1,
                    "colwidth": 37,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-8",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 1008.0, 223.0, 348.0, 65.0 ],
                    "precision": 3,
                    "rows": 1
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1008.0, 71.0, 53.0, 22.0 ],
                    "text": "jit.matrix"
                }
            },
            {
                "box": {
                    "attr": "precision",
                    "id": "obj-13",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1044.0, 174.0, 118.0, 22.0 ],
                    "text_width": 80.0
                }
            },
            {
                "box": {
                    "code": "autowhatch = 1;\r\n\r\nvar thrash = [];\r\n\r\nvar buff = new JitterObject(\"jit.gpu.buffer\");\r\nbuff.item_count = 128;\r\nbuff.name = \"myBuff\";\r\nthrash.push(buff);\r\n\r\nvar initPass = new JitterObject(\"jit.gpu.compute\");\r\ninitPass.file = \"init.jxs\";\r\ninitPass.threads = [1,1,1];\r\ninitPass.buff = buff.name;\r\ninitPass.automatic = 0;\r\nthrash.push(initPass);\r\n\r\nvar pass1 = new JitterObject(\"jit.gpu.compute\");\r\npass1.file = \"pass1.jxs\";\r\npass1.threads = [1,1,1];\r\npass1.buff = buff.name;\r\npass1.automatic = 0;\r\nthrash.push(pass1);\r\npass1.depends_on = initPass.name;\r\n\r\nvar pass2 = new JitterObject(\"jit.gpu.compute\");\r\npass2.file = \"pass1.jxs\";\r\npass2.threads = [1,1,1];\r\npass2.buff = buff.name;\r\npass2.automatic = 0;\r\nthrash.push(pass2);\r\npass2.depends_on = pass1.name;\r\n\r\nfunction bang(){\r\n        \r\n    let ob = {};\r\n    ob.count = buff.item_count;\r\n    let circles = [];\r\n    for(let i=0; i<buff.item_count; i++) {\r\n\t    let circle = {};\r\n\t    circle.val = 0.0;\r\n\t    circles.push(circle);\r\n    }\r\n    ob.val = circles;\r\n    let d = new Dict();\r\n    d.parse(JSON.stringify(ob));\n    buff.dictionary(d.name);\r\n    outlet(0, \"dictionary\", d.name);\r\n    \r\n    initPass.bang();\r\n}\r\n\r\n\r\nfunction notifydeleted(){\r\n    for(let i = 0; i < thrash.length; i++){\r\n        thrash[i].freepeer();\r\n    }\r\n}",
                    "filename": "none",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "v8.codebox",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 294.0, 71.0, 645.0, 730.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    }
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 53.0, 149.0, 145.0, 22.0 ],
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
                    "patching_rect": [ 53.0, 184.0, 198.0, 22.0 ],
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
                    "patching_rect": [ 53.0, 107.0, 197.0, 22.0 ],
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
                    "patching_rect": [ 82.0, 71.0, 150.0, 22.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 1053.5, 208.0, 1017.5, 208.0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 1017.5, 127.0, 1017.5, 127.0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 1017.5, 160.0, 1017.5, 160.0 ],
                    "source": [ "obj-23", 0 ]
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-4", 0 ]
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
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}