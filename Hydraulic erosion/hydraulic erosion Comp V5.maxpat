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
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 458.0, 428.0, 43.0, 22.0 ],
                    "text": "r reset"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 541.0, 217.0, 43.0, 22.0 ],
                    "text": "* 1024"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 540.0, 187.0, 29.5, 22.0 ],
                    "text": "+"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 624.0, 155.0, 30.0, 22.0 ],
                    "text": "* 20"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 540.0, 256.0, 82.0, 22.0 ],
                    "text": "prepend seed"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 150.0, 115.0, 43.0, 22.0 ],
                    "text": "sel init"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 492.0, 61.0, 65.0, 22.0 ],
                    "text": "r start/stop"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 458.0, 67.0, 22.0 ],
                    "text": "s start/stop"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 30.0, 415.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
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
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 51.0, 88.0, 32.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 145.0, 45.0, 22.0 ],
                                    "text": "s reset"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 25.0, 187.0, 45.0, 22.0 ],
                    "text": "p reset"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
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
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
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
                                        "rect": [ 81.0, 185.0, 1000.0, 780.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 237.0, 382.0, 550.0, 22.0 ],
                                                    "text": "jit.gl.videoplane @transform_reset 2 @layer 100 @blend_enable 1 @depth_enable 0 @blend multiply"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 283.0, 307.0, 346.0, 22.0 ],
                                                    "text": "moveto 40 120, font Arial 45, frgb 255 20 20, write iterations: $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "int", "clear" ],
                                                    "patching_rect": [ 201.0, 249.0, 57.0, 22.0 ],
                                                    "text": "t b i clear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 13.0,
                                                    "id": "obj-98",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_matrix", "" ],
                                                    "patching_rect": [ 237.0, 343.0, 143.0, 23.0 ],
                                                    "text": "jit.lcd 4 char 1920 1080"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 201.5294156074524, 25.0, 65.0, 22.0 ],
                                                    "text": "r start/stop"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 201.5294156074524, 63.0, 47.0, 22.0 ],
                                                    "text": "jit.bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-47",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 233.0294156074524, 100.0, 43.0, 22.0 ],
                                                    "text": "r reset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 201.5294156074524, 210.0, 30.0, 22.0 ],
                                                    "text": "* 20"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 233.0294156074524, 134.0, 29.5, 22.0 ],
                                                    "text": "0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-75",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "", "", "int" ],
                                                    "patching_rect": [ 201.5294156074524, 174.0, 61.0, 22.0 ],
                                                    "text": "counter"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-4", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "source": [ "obj-4", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 3 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 270.0, 155.0, 22.0 ],
                                    "text": "p render_iterations_counter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
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
                                                    "id": "obj-167",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 252.0, 297.0, 57.0, 20.0 ],
                                                    "text": "lens flare"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-162",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 50.0, 338.0, 431.0, 22.0 ],
                                                    "text": "jit.gl.videoplane @blend_enable 1 @transform_reset 2 @blend add @layer 100"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "filename": "none",
                                                    "id": "obj-161",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_gl_texture", "" ],
                                                    "patching_rect": [ 50.0, 295.0, 175.0, 22.0 ],
                                                    "text": "jit.gl.slab @embed 1 @inputs 1",
                                                    "textfile": {
                                                        "text": "<jittershader name=\"default\">\n\t<description>Default Slab </description>\n\t<param name=\"modelViewProjectionMatrix\" type=\"mat4\" state=\"MODELVIEW_PROJECTION_MATRIX\" />\n\t<param name=\"textureMatrix0\" type=\"mat4\" state=\"TEXTURE0_MATRIX\" />\n\t<param name=\"position\" type=\"vec3\" state=\"POSITION\" />\n\t<param name=\"texcoord\" type=\"vec2\" state=\"TEXCOORD\" />\n    <param name=\"V\" type=\"mat4\" state=\"VIEW_MATRIX\" />\n    <param name=\"farCorner\" type=\"vec3\" state=\"FAR_CORNER\" />\n\t<language name=\"glsl\" version=\"1.5\">\n\t\t<bind param=\"modelViewProjectionMatrix\" program=\"vp\" />\n\t\t<bind param=\"textureMatrix0\" program=\"vp\" />\n\t\t<bind param=\"position\" program=\"vp\" />\n\t\t<bind param=\"texcoord\" program=\"vp\" />\n        <bind param=\"V\" program=\"vp\" />\n        <bind param=\"farCorner\" program=\"vp\" />\n\t\t<program name=\"vp\" type=\"vertex\"  >\n\t\t<![CDATA[\n\t\t\t#version 330 core\n\t\t\t\n\t\t\tin vec3 position;\n\t\t\tin vec2 texcoord;\n\t\t\tout jit_PerVertex {\n\t\t\t\tvec2 texcoord;\n                smooth vec3 ligDir;\n                smooth vec3 view;\n\t\t\t} jit_out;\n\t\t\tuniform mat4 modelViewProjectionMatrix, V;\n\t\t\tuniform mat4 textureMatrix0;\n            uniform vec3 farCorner;\n\t\t\t\n\t\t\tvoid main(void) {\n\t\t\t\tgl_Position = modelViewProjectionMatrix*vec4(position, 1.);\n\t\t\t\tjit_out.texcoord = vec2(textureMatrix0*vec4(texcoord, 0., 1.));\n                jit_out.ligDir = (V * vec4(normalize(vec3(1,1,0.4)), 0.0)).xyz;\n                jit_out.view = farCorner * vec3(gl_Position.x, gl_Position.y, 1);\n\t\t\t}\n\t\t]]>\n\t\t</program>\n\t\t\n\t\t<program name=\"fp\" type=\"fragment\"  >\n\t\t<![CDATA[\n\t\t\t#version 330 core\n\t\t\t\n\t\t\tin jit_PerVertex {\n\t\t\t\tvec2 texcoord;\n                smooth vec3 ligDir;\n                smooth vec3 view;\n\t\t\t} jit_in;\n\t\t\tlayout (location = 0) out vec4 outColor;\n\t\t\t\n\n\t\t\tvoid main(void) {\n\n                vec3 view = normalize(jit_in.view);\n                float flare = max(0.0, dot(view, jit_in.ligDir));\n                flare = pow(flare, 10);\n                const vec3 ligCol = vec3(3,2.5,2);\n\t\t\t\toutColor = vec4(flare * ligCol, 1.0);\n\t\t\t}\n\t\t]]>\n\t\t</program>\n\t</language>\n</jittershader>\n",
                                                        "filename": "none",
                                                        "flags": 1,
                                                        "embed": 1,
                                                        "autowatch": 1
                                                    }
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-160",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 50.0, 216.0, 47.0, 22.0 ],
                                                    "text": "jit.bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-157",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_gl_texture", "" ],
                                                    "patching_rect": [ 50.0, 254.0, 229.0, 22.0 ],
                                                    "text": "jit.gl.texture @type float16 @dim 160 120"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "filename": "bloom.jxp",
                                                    "id": "obj-71",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "jit_gl_texture", "", "" ],
                                                    "patching_rect": [ 50.0, 100.0, 623.0, 22.0 ],
                                                    "text": "jit.gl.pass @fxname bloom-hq @tonemapping 0 @gamma_correction 0 @threshold 3. @quality hi @bloom_amt 0.1",
                                                    "textfile": {
                                                        "filename": "bloom.jxp",
                                                        "flags": 0,
                                                        "embed": 0,
                                                        "autowatch": 1
                                                    }
                                                }
                                            },
                                            {
                                                "box": {
                                                    "filename": "gamma.jxp",
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "jit_gl_texture", "", "" ],
                                                    "patching_rect": [ 50.0, 145.0, 220.0, 22.0 ],
                                                    "text": "jit.gl.pass @fxname gamma @quality hi",
                                                    "textfile": {
                                                        "filename": "gamma.jxp",
                                                        "flags": 0,
                                                        "embed": 0,
                                                        "autowatch": 1
                                                    }
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-161", 0 ],
                                                    "source": [ "obj-157", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "source": [ "obj-160", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-162", 0 ],
                                                    "source": [ "obj-161", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-71", 1 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 225.0, 106.0, 22.0 ],
                                    "text": "p post_processing"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 0,
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
                                                    "depthbuffer": 1,
                                                    "doublebuffer": 1,
                                                    "fsaa": 0,
                                                    "id": "obj-25",
                                                    "maxclass": "jit.pwindow",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_matrix", "" ],
                                                    "patching_rect": [ 494.0, 211.0, 80.0, 60.0 ],
                                                    "stereo": 0,
                                                    "sync": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
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
                                                        "rect": [ 59.0, 119.0, 1000.0, 780.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-155",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "jit_matrix", "" ],
                                                                    "patching_rect": [ 50.0, 332.0, 73.0, 22.0 ],
                                                                    "text": "jit.normalize"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-154",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "jit_matrix", "" ],
                                                                    "patching_rect": [ 120.5, 243.0, 511.0, 23.0 ],
                                                                    "text": "jit.bfg 1 float32 512 512 @basis fractal.multi.hybrid @scale 20. 20. 20. @offset 30. 0. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-152",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "jit_matrix", "" ],
                                                                    "patching_rect": [ 97.43851959705353, 211.63687407970428, 511.0, 23.0 ],
                                                                    "text": "jit.bfg 1 float32 512 512 @basis fractal.multi.hybrid @scale 20. 20. 20. @offset 20. 0. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-150",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "jit_matrix", "" ],
                                                                    "patching_rect": [ 75.09215176105499, 183.5, 511.0, 23.0 ],
                                                                    "text": "jit.bfg 1 float32 512 512 @basis fractal.multi.hybrid @scale 20. 20. 20. @offset 10. 0. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-149",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 4,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "jit_matrix", "" ],
                                                                    "patching_rect": [ 50.0, 295.99441266059875, 56.0, 22.0 ],
                                                                    "text": "jit.pack 4"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-54",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 56.5, 100.0, 58.0, 22.0 ],
                                                                    "text": "loadbang"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial",
                                                                    "fontsize": 13.0,
                                                                    "id": "obj-51",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "jit_matrix", "" ],
                                                                    "patching_rect": [ 56.5, 156.0, 504.0, 23.0 ],
                                                                    "text": "jit.bfg 1 float32 512 512 @basis fractal.multi.hybrid @scale 20. 20. 20. @offset 0. 0. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-6",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 50.0, 414.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-155", 0 ],
                                                                    "source": [ "obj-149", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-149", 1 ],
                                                                    "source": [ "obj-150", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-149", 2 ],
                                                                    "source": [ "obj-152", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-149", 3 ],
                                                                    "source": [ "obj-154", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
                                                                    "source": [ "obj-155", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-149", 0 ],
                                                                    "source": [ "obj-51", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-150", 0 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-54", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-152", 0 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-54", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-154", 0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-54", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-51", 0 ],
                                                                    "order": 3,
                                                                    "source": [ "obj-54", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 473.0, 172.0, 157.0, 22.0 ],
                                                    "text": "p generate_random_texture"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_gl_texture", "" ],
                                                    "patching_rect": [ 473.0, 284.0, 315.0, 22.0 ],
                                                    "text": "jit.gl.texture @name randTex @wrap repeat repeat repeat"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 100.0, 133.0, 22.0 ],
                                                    "text": "pak texture s randTex s"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 87.5, 138.0, 58.0, 22.0 ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "filename": "none",
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 86.5, 284.0, 252.0, 22.0 ],
                                                    "text": "jit.gl.shader @name renderTerrain @embed 1",
                                                    "textfile": {
                                                        "text": "<jittershader name=\"fill-flat-triangles\">\n\t<description>Default Shader </description>\n\t<param name=\"pos\" type=\"vec3\" state=\"POSITION\" />\n\t<param name=\"MVP\" type=\"mat4\" state=\"MODELVIEW_PROJECTION_MATRIX\" />\n\t<param name=\"M\" type=\"mat4\" state=\"WORLD_MATRIX\" />\n\t<param name=\"heightTex\" type=\"int\" default=\"0\" />\n\t<param name=\"randTex\" type=\"int\" default=\"1\" />\n\t<param name=\"norTex\" type=\"int\" default=\"2\" />\n\t<param name=\"heightTexDim\" type=\"vec2\" state=\"TEXDIM0\" />\n\t<param name=\"eye\" type=\"vec3\" state=\"CAMERA_POSITION\" />\n\t<language name=\"glsl\" version=\"1.5\">\n\t\t<bind param=\"pos\" program=\"vp\" />\n\t\t<bind param=\"MVP\" program=\"vp\" />\n\t\t<bind param=\"M\" program=\"vp\" />\n\t\t<bind param=\"heightTex\" program=\"vp\" />\n\t\t<bind param=\"randTex\" program=\"fp\" />\n\t\t<bind param=\"norTex\" program=\"fp\" />\n\t\t<bind param=\"heightTexDim\" program=\"vp\" />\n\t\t<bind param=\"eye\" program=\"vp\" />\n\t\t<program name=\"vp\" type=\"vertex\">\n<![CDATA[\n#version 330 core\nuniform mat4 MVP, M;\nuniform sampler2DRect heightTex;\nuniform vec2 heightTexDim;\nuniform vec3 eye;\nin vec3 pos;\n\nout jit_PerVertex {\t\n\tsmooth vec3 wPos;\n\tsmooth float sha;\n\tsmooth float ao;\n\tsmooth vec3 V;\n\tsmooth float canal;\n} jit_out;\n\nvoid main() {\t\n\n\tvec4 lookup = texelFetch(heightTex, ivec2(pos.xy*heightTexDim));\n\tfloat h = lookup.r;\n\tjit_out.sha = lookup.g;\n\tjit_out.ao = max(0.0, 1 - (1 - lookup.b)*1.6);\n\tvec3 terrainPos = vec3(pos.x, h, pos.y);\n\tterrainPos.xz = terrainPos.xz*2 - 1;\n\tgl_Position = MVP * vec4(terrainPos, 1.0);\t\n\tjit_out.wPos = (M * vec4(terrainPos, 1.0)).xyz;\n\tjit_out.V = jit_out.wPos - eye;\n\tjit_out.canal = lookup.w;\n}\n]]>\n</program>\n<program name=\"fp\" type=\"fragment\">\n<![CDATA[\n#version 330 core\n\nuniform sampler2DRect randTex, norTex;\n\nin jit_PerVertex {\n\tsmooth vec3 wPos;\n\tsmooth float sha;\n\tsmooth float ao;\n\tsmooth vec3 V;\n\tsmooth float canal;\n} jit_in;\n\nout vec4 color;\n\nvoid main() {\n\n\tfloat strata = jit_in.wPos.y + 1 + jit_in.wPos.z*0.35;\n\tstrata *= 512;\n\tstrata = floor(strata);// + smoothstep(0.49, 0.51, fract(strata));\n\tstrata /= 512;\n\tvec2 normUV = vec2(strata, jit_in.wPos.x);//jit_in.wPos.xz*0.5+jit_in.wPos.y + 0.5;\n\tvec2 uvRect = floor(mod(normUV*512*5, vec2(512)));\n\tfloat rand = texture(randTex, uvRect).r;\n\tuvRect = floor(mod(normUV*512*30, vec2(512)));\n\trand += texture(randTex, uvRect).r;\n\n\tvec3 snow = vec3(0.8);\n\tvec3 rock = mix(vec3(0.3, 0.2, 0.02)*0.15, vec3(0.5,0.4,0.4)*0.2,rand*0.5);//*(N.y*0.5 + 0.5);\n\n\tvec3 randNor = vec3(0.0);\n\t//randNor.x = texture(randTex, mod(jit_in.wPos.xz*512*10 + vec2(0.0), vec2(512))).r - 0.5;\n\t//randNor.y = texture(randTex, mod(jit_in.wPos.xz*512*10 + vec2(200), vec2(512))).r - 0.5;\n\t//randNor.z = texture(randTex, mod(jit_in.wPos.xz*512*10 + vec2(400), vec2(512))).r - 0.5;\n\trandNor += texture(randTex, mod(jit_in.wPos.xz*512*1, vec2(512))).gba - 0.5;\n\trandNor += texture(randTex, mod(jit_in.wPos.xz*512*30 + vec2(300), vec2(512))).gba - 0.5;\n\n\t//rand *= float(rand > 0.7);\n\tvec3 N = normalize(texture(norTex, (jit_in.wPos.xz*0.5 + 0.5) * 1024).xyz + 0.3*randNor);\n\tvec3 V = normalize(jit_in.V);\n\tvec3 R = reflect(V, N);\n\n\n\trand = texture(randTex, mod((jit_in.wPos.xz*0.5 + 0.5 + vec2(jit_in.wPos.y+N.y,N.y-jit_in.wPos))*512*30, vec2(512))).r;\n\tvec3 grass = mix(vec3(0.25, 0.25, 0.015)*rock, vec3(0.3, 0.4, 0.05), rand)*0.15;\n\n\tvec3 water = vec3(0.1, 0.1, 0.5)*0.3;\n\tvec3 canal = vec3(0.2, 0.2, 0.1)*0.3;//*rand;\n\n\t//float sedimentStipe = cos(floor(jit_in.wPos.y*40 + rand*4))*0.5 + 0.5;\n\t//rock *= sedimentStipe;\n\n\t//mix between rock and grass depending on the mountain's slope\n\tvec3 rockGrass = mix(rock, grass, smoothstep(0.5,0.56,N.y));\n\n\t//add erosion canals\n\trockGrass = mix(canal, rockGrass, smoothstep(0.1,0.3,jit_in.canal));\n\n\tvec3 alb = mix(\trockGrass, \n\t\t\t\t\tsnow, \n\t\t\t\t\tclamp(smoothstep(0.3,0.4,0.8*N.y) * smoothstep(0.4, 0.5, jit_in.wPos.y) + smoothstep(0.8,0.9,1 -jit_in.canal), 0, 1)\n\t\t\t\t\t);\n\n\t//alb = mix(\talb, \n\t//\t\t\tsnow, \n\t//\t\t\tsmoothstep(0.4,0.5,(1-4*jit_in.canal) * smoothstep(0.2, 0.3, jit_in.wPos.y))\n\t//\t\t\t);\n\n\t//vec3 grassSnow = mix(grass, snow, smoothstep(0.4,0.6,jit_in.wPos.y));\n\t//rand = fract(rand*3.1415);\n\t//vec3 alb = mix(soil, grassSnow, smoothstep(0.8,0.9,jit_in.nor.y + 0.2*(rand-0.5)));\n\t//vec3 alb = mix(rock, grassSnow, smoothstep(0.45,0.5,N.y));\n\t//alb = mix(vec3(0.2, 0.2, 0.1)*0.5, alb, clamp(jit_in.canal,0,1));\n\n\t//alb = jit_in.wPos.y < 0.2 ? water : alb;\n\n\tvec3 ligCol = vec3(3,2.5,2)*3;\n\tvec3 ligDir = normalize(vec3(1,1,0.4));\n\tfloat diff = max(0.0, dot(ligDir, N));\n\tfloat ref = max(0.0, dot(ligDir, R));\n\tref = pow(ref, 60);\n\n\tref *= smoothstep(0.4,0.6,jit_in.wPos.y);\n\n\tfloat occ = jit_in.ao * jit_in.canal + jit_in.ao*0.3;\n\tvec3 res = ligCol*diff*jit_in.sha;\n\tres += occ*vec3(0.5, 0.5, 1)*2;\n\tres += ref * ligCol;\n\tres *= alb;\n\tcolor = vec4(res, 1);\n\t//color = vec4(jit_in.canal);\n\t//color = vec4(N.y, N.y, N.y, 1.0);\n}\t\n]]>\n\t\t</program>\n\t</language>\n</jittershader>\n",
                                                        "filename": "none",
                                                        "flags": 1,
                                                        "embed": 1,
                                                        "autowatch": 1
                                                    }
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 87.5, 175.0, 226.0, 22.0 ],
                                                    "text": "exprfill 0 norm[0], exprfill 1 norm[1], bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_matrix", "" ],
                                                    "patching_rect": [ 87.5, 213.0, 163.0, 22.0 ],
                                                    "text": "jit.matrix 3 float32 1024 1024"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 9,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 86.5, 248.0, 359.0, 22.0 ],
                                                    "text": "jit.gl.mesh @draw_mode tri_grid @shader renderTerrain @layer 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-83",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 88.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-84",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 164.0, 40.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 1 ],
                                                    "source": [ "obj-83", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 3 ],
                                                    "source": [ "obj-84", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 178.0, 110.0, 22.0 ],
                                    "text": "p terrain_rendering"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 0,
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
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 401.0, 107.0, 43.0, 22.0 ],
                                                    "text": "r reset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 617.0, 246.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-122",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 617.0, 295.0, 90.0, 22.0 ],
                                                    "text": "prepend param"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "filename": "none",
                                                    "id": "obj-127",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 617.0, 329.0, 237.0, 22.0 ],
                                                    "text": "jit.gl.shader @name drawTrees @embed 1",
                                                    "textfile": {
                                                        "text": "<jittershader name=\"fill-flat-triangles\">\n\t<description>Default Shader </description>\n\t<param name=\"position\" type=\"vec3\" state=\"POSITION\" />\n\t<param name=\"instancePos\" type=\"vec3\" state=\"VERTEX_ATTR0\" />\n\t<param name=\"heightMap\" type=\"int\" default=\"0\" />\n\t<param name=\"norTex\" type=\"int\" default=\"1\" />\n\t<param name=\"voronoiTex\" type=\"int\" default=\"2\" />\n\t<param name=\"heightMapDim\" type=\"vec2\" state=\"TEXDIM1\" />\n\t<param name=\"modelViewProjectionMatrix\" type=\"mat4\" state=\"MODELVIEW_PROJECTION_MATRIX\" />\n\t<param name=\"tree_density\" type=\"float\" default=\"1.5\" />\n\t<param name=\"tree_height\" type=\"float\" default=\"0.02\" />\n\t<param name=\"tree_size\" type=\"float\" default=\"1.0\" />\n\t<language name=\"glsl\" version=\"1.5\">\n\t\t<bind param=\"position\" program=\"vp\" />\n\t\t<bind param=\"instancePos\" program=\"vp\" />\n\t\t<bind param=\"voronoiTex\" program=\"fp\" />\n\t\t<bind param=\"norTex\" program=\"fp\" />\n\t\t<bind param=\"heightMap\" program=\"vp\" />\n\t\t<bind param=\"heightMap\" program=\"fp\" />\n\t\t<bind param=\"heightMapDim\" program=\"vp\" />\n\t\t<bind param=\"modelViewProjectionMatrix\" program=\"vp\" />\n\t\t<bind param=\"tree_density\" program=\"fp\" />\n\t\t<bind param=\"tree_height\" program=\"vp\" />\n\t\t<bind param=\"tree_size\" program=\"fp\" />\n\t\t<program name=\"vp\" type=\"vertex\">\n<![CDATA[\n#version 330 core\nuniform mat4 modelViewProjectionMatrix;\nuniform sampler2DRect heightMap;\nuniform vec2 heightMapDim;\nin vec3 position, instancePos;\nuniform float tree_height;\n\nout jit_PerVertex {\n\tsmooth vec2 uv;\n\tflat float instance;\n} jit_out;\n\nvoid main() {\t\n\n\tfloat h = texture(heightMap, vec2(1-position.x, position.y)*(1024-1)).r;\n\th += 0.002;\n\tfloat shifter = max(0.0, instancePos.y*1.3 - 0.3);\n\tvec3 p = vec3((1-position.x)*2-1, h + shifter*tree_height, position.y*2-1);\n\tgl_Position = modelViewProjectionMatrix * vec4(p, 1.);\t\n\tjit_out.instance = instancePos.y*1.3 - 0.3;\n\tjit_out.uv = vec2(1-position.x, position.y);\n}\n]]>\n\t\t</program>\n\t\t<program name=\"fp\" type=\"fragment\">\n<![CDATA[\n#version 330 core\n\nuniform sampler2D voronoiTex;\nuniform sampler2DRect norTex, heightMap;\nuniform float tree_density, tree_size;\n\nin jit_PerVertex {\n\tsmooth vec2 uv;\n\tflat float instance;\n} jit_in;\n\nout vec4 color;\n\nconst vec3 ligDir = normalize(vec3(1,-0.4,0.4));\n\nvoid main() {\n\n\tfloat shifter = max(0.0, -jit_in.instance);\n\tvec4 vorNorRad = texture(voronoiTex, jit_in.uv*tree_density + shifter*ligDir.xz*0.06);\n\tvec4 Nsha = texture(norTex, jit_in.uv*1024);\n\tvec4 lookup = texture(heightMap, jit_in.uv*1024);\n\n\tfloat treeRadius = vorNorRad.w-abs(jit_in.instance*0.8);\n\tbool isFirst = jit_in.instance < 0.0 && Nsha.w == 1.0;\n\n\tfloat variance1 = sin(100*(lookup.w + lookup.r + lookup.g))*0.5 + 0.5;\n\tfloat variance2 = sin(150*(1 + lookup.w + lookup.r + 2*lookup.g + Nsha.x + Nsha.y + Nsha.z))*0.5 + 0.5;\n\n\tif(\ttreeRadius <= (0.1 + variance2*0.05)*3 || \n\t\tNsha.y < 0.5 || \n\t\tlookup.r > 0.7 || \n\t\tlookup.w < 0.2 ||\n\t\t(jit_in.instance < 0.0 && Nsha.w == 0.0)){\n\t\tdiscard;\n\t\treturn;\n\t}\n\n\tvec3 ligCol = vec3(3,2.5,2)*5;\n\tfloat diff = max(0.0, dot(ligDir, vorNorRad.xyz));\n\n\t//vec3 alb = mix(\tvec3(0.1, 0.3, 0.1)*0.3, \n\t//\t\t\t\tvec3(0.8), \n\t//\t\t\t\tsmoothstep(0.35,0.4,lookup.r)\n\t//\t\t\t\t);\n\n\tvec3 alb = mix(\tvec3(0.25, 0.3, 0.1)*0.3, \n\t\t\t\t\tvec3(0.35, 0.25, 0.1)*0.3, \n\t\t\t\t\tvariance1);\n\n\talb = mix(\talb, \n\t\t\t\tvec3(0.8),\n\t\t\t\tfloat((variance2-0.5)*0.1 + min(lookup.r,0.55) > 0.5)\n\t\t\t\t);\n\n\tfloat selfOcclusion = isFirst ? 1.0 : max(0.15, mix(1 - vorNorRad.w*1.4, 1.0, jit_in.instance));\n\tvec3 res = isFirst ? vec3(0.0) : alb*diff*ligCol*Nsha.w*selfOcclusion;\n\tres += vec3(0.5, 0.5, 1)*1.5*alb*selfOcclusion;\n\tres *= isFirst ? 0.1 : 1.0;\n \n\tcolor = vec4(res, isFirst ? 0.9 : 1.0);\n}\t\n]]>\n\t\t</program>\n\t</language>\n</jittershader>\n",
                                                        "filename": "none",
                                                        "flags": 1,
                                                        "embed": 1,
                                                        "autowatch": 1
                                                    }
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-164",
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
                                                        "rect": [ 59.0, 119.0, 600.0, 450.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "code": "pix = 1 / dim;\r\n\r\nr = sample(in1, norm + vec(pix.x,0)).r;\r\nu = sample(in1, norm + vec(0,pix.y)).r;\r\n\r\n\r\nVr = normalize(vec(pix.x,in1.r-r,0));\r\nVu = normalize(vec(0,in1.r-u,pix.y));\r\n\r\nN = normalize(cross(Vr, Vu));\r\n\r\nout1 = vec(N.x, N.y, N.z, in1.r);",
                                                                    "fontface": 0,
                                                                    "fontname": "<Monospaced>",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-9",
                                                                    "maxclass": "codebox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 29.0, 91.0, 403.0, 238.0 ]
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
                                                                    "destination": [ "obj-9", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 401.0, 254.0, 49.0, 22.0 ],
                                                    "text": "jit.gl.pix"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-163",
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
                                                        "rect": [ 59.0, 119.0, 600.0, 450.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 4,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 280.0, 328.0, 81.0, 22.0 ],
                                                                    "text": "vec 0. 0. 0. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 290.0, 267.0, 45.0, 22.0 ],
                                                                    "text": "max 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-6",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 290.0, 226.0, 26.0, 22.0 ],
                                                                    "text": "!- 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-5",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 270.0, 139.0, 23.0, 22.0 ],
                                                                    "text": "* 2"
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
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-1", 0 ]
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
                                                                    "destination": [ "obj-8", 3 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 2 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 1 ],
                                                                    "order": 2,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-8", 0 ],
                                                                    "order": 3,
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-8", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 401.0, 219.0, 49.0, 22.0 ],
                                                    "text": "jit.gl.pix"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-159",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_gl_texture", "" ],
                                                    "patching_rect": [ 401.0, 152.0, 242.0, 22.0 ],
                                                    "text": "jit.gl.texture @type float16 @dim 1000 1000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-158",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_gl_texture", "" ],
                                                    "patching_rect": [ 401.0, 183.0, 304.0, 22.0 ],
                                                    "text": "jit.gl.bfg @basis noise.voronoi.smooth @scale 80 80 80"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-153",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 194.0, 226.0, 22.0 ],
                                                    "text": "exprfill 0 norm[0], exprfill 1 norm[1], bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-151",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_matrix", "" ],
                                                    "patching_rect": [ 50.0, 229.0, 149.0, 22.0 ],
                                                    "text": "jit.matrix 3 float32 100 100"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-139",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 401.0, 366.0, 29.5, 22.0 ],
                                                    "text": "$2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-137",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 86.0, 383.0, 96.0, 22.0 ],
                                                    "text": "pak texture s s s"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-101",
                                                    "linecount": 4,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_gl_texture", "" ],
                                                    "patching_rect": [ 401.0, 293.0, 183.0, 62.0 ],
                                                    "text": "jit.gl.texture @name voronoiTex @rectangle 0 @dim 1000 1000 @type float16 @adapt 0 @wrap repeat repeat repeat"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-128",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 211.0, 237.0, 131.0, 22.0 ],
                                                    "text": "exprfill 1 norm[0], bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-129",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_matrix", "" ],
                                                    "patching_rect": [ 211.0, 276.0, 119.0, 22.0 ],
                                                    "text": "jit.matrix 3 float32 20"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-130",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "jit_gl_buffer", "" ],
                                                    "patching_rect": [ 211.0, 311.0, 176.0, 35.0 ],
                                                    "text": "jit.gl.buffer @type vertex_attr0 @instanced 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-131",
                                                    "maxclass": "newobj",
                                                    "numinlets": 9,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 50.0, 424.0, 323.0, 22.0 ],
                                                    "text": "jit.gl.mesh @shader drawTrees @blend_enable 1 @layer 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-132",
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
                                                    "comment": "",
                                                    "id": "obj-77",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 111.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-80",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 146.0, 40.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-122", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-139", 0 ],
                                                    "source": [ "obj-101", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-127", 0 ],
                                                    "source": [ "obj-122", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-129", 0 ],
                                                    "source": [ "obj-128", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-130", 0 ],
                                                    "source": [ "obj-129", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-131", 7 ],
                                                    "source": [ "obj-130", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-128", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-132", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-153", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-132", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-159", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-132", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-131", 0 ],
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-137", 3 ],
                                                    "source": [ "obj-139", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-131", 0 ],
                                                    "source": [ "obj-151", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-151", 0 ],
                                                    "source": [ "obj-153", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-163", 0 ],
                                                    "source": [ "obj-158", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-158", 0 ],
                                                    "source": [ "obj-159", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-164", 0 ],
                                                    "source": [ "obj-163", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-164", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-159", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-137", 1 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-137", 2 ],
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 176.0, 178.0, 103.0, 22.0 ],
                                    "text": "p trees_rendering"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-93",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 100.0, 29.5, 22.0 ],
                                    "text": "$2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-87",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 141.0, 100.0, 29.5, 22.0 ],
                                    "text": "$2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-90",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_gl_texture" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-91",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_gl_texture" ],
                                    "patching_rect": [ 141.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-92",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 260.0, 40.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 1 ],
                                    "order": 0,
                                    "source": [ "obj-87", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-85", 1 ],
                                    "order": 1,
                                    "source": [ "obj-87", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 0 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-87", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 2 ],
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "order": 0,
                                    "source": [ "obj-93", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-85", 0 ],
                                    "order": 1,
                                    "source": [ "obj-93", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 638.0, 807.0, 325.0, 22.0 ],
                    "text": "p rendering"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 944.0, 639.0, 82.0, 20.0 ],
                    "text": "Trees params"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 288.0, 25.0, 127.0, 20.0 ],
                    "text": "3) Set erosion params"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1074.0, 102.0, 105.0, 20.0 ],
                    "text": "Init terrain params"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 858.0, 29.0, 43.0, 22.0 ],
                    "text": "r reset"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 633.0, 256.0, 43.0, 22.0 ],
                    "text": "r reset"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 944.0, 674.0, 87.0, 22.0 ],
                    "text": "loadmess 0.02"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1040.0, 674.0, 80.0, 22.0 ],
                    "text": "loadmess 1.5"
                }
            },
            {
                "box": {
                    "id": "obj-42",
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
                                    "id": "obj-118",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 163.5, 214.0, 94.0, 22.0 ],
                                    "text": "scale -1. 1. 1. 3."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 163.5, 166.0, 24.0, 22.0 ],
                                    "text": "sin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 163.5, 134.0, 53.0, 22.0 ],
                                    "text": "* 0.7223"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 68.5, 296.0, 103.0, 22.0 ],
                                    "text": "position $1 1.8 $2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 68.5, 260.0, 173.0, 22.0 ],
                                    "text": "vexpr $f1 * $f2 @scalarmode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 218.0, 47.0, 22.0 ],
                                    "text": "pack f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-83",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 100.0, 152.0, 24.0, 22.0 ],
                                    "text": "sin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 64.0, 152.0, 27.0, 22.0 ],
                                    "text": "cos"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 100.0, 173.0, 22.0 ],
                                    "text": "jit.time @speed 0.2 @enable 0"
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
                                    "outlettype": [ "int" ],
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
                                    "patching_rect": [ 68.5, 378.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-117", 0 ],
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-118", 0 ],
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 1 ],
                                    "source": [ "obj-118", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-116", 0 ],
                                    "order": 0,
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "order": 2,
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 0 ],
                                    "order": 1,
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-85", 0 ],
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-85", 1 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "source": [ "obj-85", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 0 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-88", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 25.0, 263.0, 151.0, 22.0 ],
                    "text": "p auto_camera_movement"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 61.0, 417.0, 132.0, 33.0 ],
                    "text": "4) Start / Stop erosion (let it run for a while...)"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 492.0, 146.0, 51.0, 22.0 ],
                    "text": "uzi 20 0"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 503.0, 516.0, 109.0, 22.0 ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 503.0, 598.0, 79.0, 22.0 ],
                    "text": "jit.gpu.submit"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-135",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1040.0, 707.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1040.0, 741.0, 91.0, 22.0 ],
                    "text": "tree_density $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-133",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 944.0, 707.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 944.0, 741.0, 85.0, 22.0 ],
                    "text": "tree_height $1"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 683.0, 636.0, 194.0, 22.0 ],
                    "text": "jit.gl.texture @adapt 0 @dim 32 32"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 3,
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
                        "rect": [ 59.0, 119.0, 600.0, 450.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 308.0, 194.0, 29.5, 22.0 ],
                                    "text": "!-"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 178.0, 219.0, 29.5, 22.0 ],
                                    "text": "/"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 394.0, 43.0, 28.0, 22.0 ],
                                    "text": "in 3"
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
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 305.0, 14.0, 28.0, 22.0 ],
                                    "text": "in 2"
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
                                    "text": "-"
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
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 668.0, 741.0, 49.0, 22.0 ],
                    "text": "jit.gl.pix"
                }
            },
            {
                "box": {
                    "embedstate": [
                        [ "adapt", 1 ],
                        [ "bypass", 0 ],
                        [ "enable", 1 ]
                    ],
                    "filename": "jit.fx.an.max.js",
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 768.0, 684.0, 73.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "jit.fx.an.max",
                    "textfile": {
                        "filename": "jit.fx.an.max.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "embedstate": [
                        [ "adapt", 1 ],
                        [ "bypass", 0 ],
                        [ "enable", 1 ]
                    ],
                    "filename": "jit.fx.an.min.js",
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 683.0, 684.0, 69.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "jit.fx.an.min",
                    "textfile": {
                        "filename": "jit.fx.an.min.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 2,
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
                        "rect": [ 120.0, 458.0, 600.0, 450.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 113.0, 285.0, 29.5, 22.0 ],
                                    "text": "-"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 274.0, 149.0, 39.0, 22.0 ],
                                    "text": "swiz r"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 274.0, 113.0, 28.0, 22.0 ],
                                    "text": "in 2"
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
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 149.0, 39.0, 22.0 ],
                                    "text": "swiz r"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 176.0, 520.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 668.0, 600.0, 49.0, 22.0 ],
                    "text": "jit.gl.pix"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "jit_gl_texture", "jit_gl_texture", "" ],
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
                        "rect": [ 59.0, 119.0, 600.0, 450.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 326.0, 191.0, 33.0, 22.0 ],
                                    "text": "* 0.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 392.0, 253.0, 33.0, 22.0 ],
                                    "text": "* 0.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 392.0, 213.0, 29.5, 22.0 ],
                                    "text": "*"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 129.0, 53.0, 22.0 ],
                                    "text": "swiz rgb"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 402.0, 170.0, 41.0, 22.0 ],
                                    "text": "length"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 373.0, 307.0, 35.0, 22.0 ],
                                    "text": "out 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 328.0, 370.0, 26.0, 22.0 ],
                                    "text": "!- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 274.0, 247.0, 61.0, 22.0 ],
                                    "text": "clamp 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 181.0, 149.0, 42.0, 22.0 ],
                                    "text": "swiz b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 113.0, 285.0, 81.0, 22.0 ],
                                    "text": "vec 0. 0. 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 126.0, 149.0, 42.0, 22.0 ],
                                    "text": "swiz g"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 274.0, 78.0, 28.0, 22.0 ],
                                    "text": "in 2"
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
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 149.0, 39.0, 22.0 ],
                                    "text": "swiz r"
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
                                    "destination": [ "obj-3", 0 ],
                                    "order": 2,
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
                                    "destination": [ "obj-9", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "order": 0,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "order": 1,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-14", 0 ]
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
                                    "destination": [ "obj-11", 0 ],
                                    "order": 2,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 3 ],
                                    "order": 3,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 2 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 638.0, 773.0, 49.0, 22.0 ],
                    "text": "jit.gl.pix"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 975.0, 371.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 975.0, 408.0, 163.0, 22.0 ],
                    "text": "jit.matrix 4 float32 1024 1024"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_gl_texture", "" ],
                    "patching_rect": [ 709.0, 539.0, 183.0, 22.0 ],
                    "text": "jit.gpu.totexture @source norImg"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 975.0, 445.0, 377.0, 22.0 ],
                    "text": "jit.gpu.image @name norImg @format rgba32_float @dim 1024 1024"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 223.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-89",
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
                        "rect": [ 59.0, 119.0, 945.0, 737.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 352.0, 681.0, 36.0, 22.0 ],
                                    "text": "+ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 348.0, 648.0, 33.0, 22.0 ],
                                    "text": "* 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 615.0, 560.0, 29.5, 22.0 ],
                                    "text": "*"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 737.0, 501.0, 94.0, 22.0 ],
                                    "text": "smoothstep 0. 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 737.0, 445.0, 41.0, 22.0 ],
                                    "text": "swiz y"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 672.0, 445.0, 41.0, 22.0 ],
                                    "text": "swiz x"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 419.0, 585.0, 29.5, 22.0 ],
                                    "text": "*"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 620.0, 501.0, 94.0, 22.0 ],
                                    "text": "smoothstep 0. 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 678.0, 377.0, 28.0, 22.0 ],
                                    "text": "abs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 678.0, 411.0, 26.0, 22.0 ],
                                    "text": "!- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 678.0, 342.0, 42.0, 22.0 ],
                                    "text": "snorm"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 294.0, 607.0, 81.0, 22.0 ],
                                    "text": "vec 0. 0. 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 539.0, 233.0, 23.0, 22.0 ],
                                    "text": "- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 543.0, 196.0, 28.0, 22.0 ],
                                    "text": "dim"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 294.0, 551.0, 40.0, 22.0 ],
                                    "text": "?"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 392.0, 495.0, 29.5, 22.0 ],
                                    "text": "||"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 392.0, 459.0, 29.5, 22.0 ],
                                    "text": "||"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 392.0, 418.0, 29.5, 22.0 ],
                                    "text": "||"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 529.0, 377.0, 33.0, 22.0 ],
                                    "text": "== 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 491.0, 377.0, 33.0, 22.0 ],
                                    "text": "== 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 430.0, 377.0, 33.0, 22.0 ],
                                    "text": "== 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 392.0, 377.0, 33.0, 22.0 ],
                                    "text": "== 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 487.0, 324.0, 41.0, 22.0 ],
                                    "text": "swiz y"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 430.0, 324.0, 41.0, 22.0 ],
                                    "text": "swiz x"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 474.0, 274.0, 29.5, 22.0 ],
                                    "text": "/"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 470.0, 221.0, 32.0, 22.0 ],
                                    "text": "floor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 470.0, 175.0, 36.0, 22.0 ],
                                    "text": "* dim"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 338.0, 108.0, 36.0, 22.0 ],
                                    "text": "norm"
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
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 294.0, 756.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 2 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 1,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 0,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 1 ],
                                    "source": [ "obj-14", 0 ]
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
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "order": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "order": 0,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 3 ],
                                    "order": 0,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 2 ],
                                    "order": 1,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 1 ],
                                    "order": 2,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 3,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
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
                                    "destination": [ "obj-10", 1 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 1 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 1 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 0,
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
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
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 859.0, 202.0, 49.0, 22.0 ],
                    "text": "jit.gl.pix"
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 503.0, 484.0, 491.0, 22.0 ],
                    "text": "jit.gpu.compute @workgroups 32 32 1",
                    "textfile": {
                        "text": "#version 450\n\nlayout(std430, set = 0, binding = 0) buffer droplets {\n    uint count;\n    vec3 droplet[];\n};\n\nlayout(set = 0, rgba32f, binding = 1) uniform image2D terrainImg;\n\nlayout(set = 0, rgba32f, binding = 2) uniform image2D norImg;\n\nlayout(local_size_x = 32, local_size_y = 32, local_size_z = 1) in;\n\nconst vec3 ligDir = normalize(vec3(1,-0.4,0.4));\n\n//Random functions\nuint wang_hash(inout uint seed)\n{\n    seed = uint(seed ^ uint(61)) ^ uint(seed >> uint(16));\n    seed *= uint(9);\n    seed = seed ^ (seed >> 4);\n    seed *= uint(0x27d4eb2d);\n    seed = seed ^ (seed >> 15);\n    return seed;\n}\n \nfloat RandomFloat01(inout uint seed)\n{\n    return float(wang_hash(seed)) / 4294967296.0;\n}\n\nvec3 calcNormals(ivec2 gid, ivec2 size){\n\n    float rDiff =   imageLoad(terrainImg, clamp(gid + ivec2(1,0), ivec2(0), size-1)).r - \n                    imageLoad(terrainImg, clamp(gid - ivec2(1,0), ivec2(0), size-1)).r;\n                        \n    float uDiff =   imageLoad(terrainImg, clamp(gid - ivec2(0,1), ivec2(0), size-1)).r - \n                    imageLoad(terrainImg, clamp(gid + ivec2(0,1), ivec2(0), size-1)).r;\n\n    rDiff /= 2;\n    uDiff /= 2;\n\n    vec2 pixSize = vec2(1) / vec2(1024);\n    vec3 r = normalize(vec3(pixSize.x, rDiff, 0));\n    vec3 u = normalize(vec3(0, uDiff, pixSize.y));\n    return normalize(cross(-r,u));\n}\n\nfloat calcShadow(vec3 ro, vec3 ligDir, vec2 size){\n    float d = 0.01;\n    for(int i = 0; i < 50; i++){\n\n        vec3 p = ro + ligDir*d;\n        ivec2 iuv = ivec2((p.xy*0.5 + 0.5)*size);\n        if(iuv.x < 0 || iuv.y < 0 || iuv.x >= int(size.x) || iuv.y >= int(size.y)){\n            return 1.0;\n        }\n\n        float h = imageLoad(terrainImg, iuv).r;\n        if(h > p.z+0.01){\n            return 0.0;\n        }\n        d += 0.02;\n    }\n    return 1.0;\n}\n\nfloat calcAO(ivec2 gid, ivec2 size, vec3 ro, vec3 N){\n\n    uint seed = uint(gid.x) + uint(gid.y*size.x) + 999u;\n    int numSectors = 12;\n    float occ = float(numSectors);\n    for(int i = 0; i < numSectors; i++){\n\n        float randAngle = RandomFloat01(seed)*3.1415*2;\n        vec2 rd = vec2(cos(randAngle), sin(randAngle));\n        float highest = ro.z;\n        vec3 tallestPoint = ro;\n        for(float d = 0.01; d < 1.44; ){\n            vec2 sampleUV = clamp(((ro.xy + rd*d)*0.5 + 0.5)*vec2(size), vec2(0.0), vec2(size-1));\n            float sampledH = imageLoad(terrainImg, ivec2(sampleUV)).r;\n            if(sampledH > highest){\n                highest = sampledH;\n                tallestPoint = vec3(ro.xy + rd*d, highest);\n            }\n            d *= 1.2;\n        }\n        vec3 freeDir = normalize(tallestPoint - ro);\n        float cosine = max(0.0, dot(freeDir, N));\n        occ -= cosine;\n    }\n\n    return occ / float(numSectors);\n}\n\nvoid main(){\n\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    vec2 size = vec2(imageSize(terrainImg));\n\n    if(gid.x >= int(size.x) || gid.y >= int(size.y)) return;\n\n    float h = imageLoad(terrainImg, gid).r;\n    vec3 ro;\n    ro.xy = vec2(gid)/(size-1);\n    ro.xy = ro.xy*2 - 1;\n    ro.z = h;\n\n    vec3 N = calcNormals(gid, ivec2(size));\n    float sha = calcShadow(ro, ligDir, size);\n    float ao = calcAO(gid, ivec2(size), ro, N);\n    imageStore(terrainImg, gid, vec4(h,sha,ao,1));\n    imageStore(norImg, gid, vec4(N, sha));\n\n}",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "attr": "borderSize",
                    "id": "obj-82",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 310.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "attr": "evaporateSpeed",
                    "id": "obj-69",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 286.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "attr": "inertia",
                    "id": "obj-68",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 262.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 492.0, 115.0, 109.0, 22.0 ],
                    "text": "jit.bang @enable 0"
                }
            },
            {
                "box": {
                    "attr": "maxLifetime",
                    "id": "obj-64",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 240.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "attr": "gravity",
                    "id": "obj-63",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 217.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "attr": "startSpeed",
                    "id": "obj-62",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 193.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "attr": "startWater",
                    "id": "obj-61",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 169.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "attr": "minSedimentCapacity",
                    "id": "obj-60",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 146.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "attr": "sedimentCapacityFactor",
                    "id": "obj-58",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 123.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "attr": "erodeSpeed",
                    "id": "obj-57",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 73.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 624.0, 115.0, 142.0, 22.0 ],
                    "text": "jit.framecount @enable 0"
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 534.0, 310.0, 580.0, 22.0 ],
                    "text": "jit.gpu.compute @workgroups 1 1 1",
                    "textfile": {
                        "text": "#version 450\n\nlayout(std430, set = 0, binding = 0) buffer droplets {\n    uint count;\n    vec3 droplet[];\n};\n\nlayout(set = 0, rgba32f, binding = 1) uniform image2D terrainImg;\n\nlayout(binding = 2) uniform Config {\n    uint seed;\n};\n\nlayout(local_size_x = 1024, local_size_y = 1, local_size_z = 1) in;\n\n//Random functions\nuint wang_hash(inout uint seed)\n{\n    seed = uint(seed ^ uint(61)) ^ uint(seed >> uint(16));\n    seed *= uint(9);\n    seed = seed ^ (seed >> 4);\n    seed *= uint(0x27d4eb2d);\n    seed = seed ^ (seed >> 15);\n    return seed;\n}\n \nfloat RandomFloat01(inout uint seed)\n{\n    return float(wang_hash(seed)) / 4294967296.0;\n}\n\nvoid main(){\n\n    uint gid = gl_GlobalInvocationID.x;\n    vec2 size = vec2(imageSize(terrainImg).xy);\n\n    if(gid >= 1024) return;\n    uint seed = gid + seed + 9999u;\n\n    droplet[gid] = vec3(    RandomFloat01(seed)*size.x,\n                            RandomFloat01(seed)*size.y,\n                            0.0);\n}",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-29",
                    "linecount": 4,
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 534.0, 374.5, 429.0, 62.0 ],
                    "text": "jit.gpu.compute @workgroups 1 1 1 @inertia 0.1 @maxLifetime 50 @borderSize 3 @sedimentCapacityFactor 4. @minSedimentCapacity 0.004 @depositSpeed 0.4 @erodeSpeed 0.005 @evaporateSpeed 0.01 @gravity 1. @startSpeed 1. @startWater 1 @terrainImg terrainImg @droplets droplets",
                    "textfile": {
                        "text": "// Based on https://www.firespark.de/resources/downloads/implementation%20of%20a%20methode%20for%20hydraulic%20erosion.pdf\n\n#version 450\n\nlayout(std430, set = 0, binding = 0) buffer droplets {\n    uint count;\n    vec3 droplet[];\n};\n\nlayout(set = 0, rgba32f, binding = 1) uniform image2D terrainImg;\n\nlayout(binding = 2) uniform ErosionParams {\n\n    float borderSize;\n\n    int maxLifetime;\n    float inertia;\n    float sedimentCapacityFactor;\n    float minSedimentCapacity;\n    float depositSpeed;\n    float erodeSpeed;\n\n    float evaporateSpeed;\n    float gravity;\n    float startSpeed;\n    float startWater;\n};\n\nlayout(local_size_x = 1024, local_size_y = 1, local_size_z = 1) in;\n\nconst float w[21] = float[](\n    0.03076, 0.03076,\n    0.04703, 0.04703,\n    0.03076, 0.03076,\n\n    0.06196, 0.08153, 0.06196,\n    0.08153, 0.10870, 0.08153,\n    0.06196, 0.08153, 0.06196,\n\n    0.03076, 0.03076,\n    0.04703, 0.04703,\n    0.03076, 0.03076\n);\n\nconst ivec2 off[21] = ivec2[](\n    ivec2(-2,-1), ivec2(-1,-2),\n    ivec2(-2, 0), ivec2( 0,-2),\n    ivec2(-2, 1), ivec2( 1,-2),\n\n    ivec2(-1,-1), ivec2(-1, 0), ivec2(-1, 1),\n    ivec2( 0,-1), ivec2( 0, 0), ivec2( 0, 1),\n    ivec2( 1,-1), ivec2( 1, 0), ivec2( 1, 1),\n\n    ivec2( 2,-1), ivec2( 1, 2),\n    ivec2( 2, 0), ivec2( 0, 2),\n    ivec2( 2, 1), ivec2(-1, 2)\n);\n\nvec3 CalculateHeightAndGradient (vec2 pos) {\n\n    vec2 coord = floor(pos);\n    float x = fract(pos.x); \n    float y = fract(pos.y); \n    float invX = 1 - x;\n    float invY = 1 - y;\n\n    vec2 limit = vec2(imageSize(terrainImg)) - 1;\n\n    ivec2 c  = ivec2(clamp(coord,                vec2(0.0), limit));\n    ivec2 cE = ivec2(clamp(coord + vec2(1,0),    vec2(0.0), limit));\n    ivec2 cS = ivec2(clamp(coord + vec2(0,1),    vec2(0.0), limit));\n    ivec2 cSE= ivec2(clamp(coord + vec2(1,1),    vec2(0.0), limit));\n\n    float hNW = imageLoad(terrainImg, c ).r;\n    float hNE = imageLoad(terrainImg, cE).r;\n    float hSW = imageLoad(terrainImg, cS).r;\n    float hSE = imageLoad(terrainImg, cSE).r;\n\n    vec2 gradient = vec2(   mix(hNE - hNW, hSE - hSW, y),\n                            mix(hSW - hNW, hSE - hNE, x)\n                        );\n\n    float height =  hNW * invX * invY + \n                    hNE * x * invY + \n                    hSW * invX * y + \n                    hSE * x * y;\n\n    return vec3(gradient,height);\n}\n\nvoid main(){\n\n    uint gid = gl_GlobalInvocationID.x;\n    vec2 mapSize = vec2(imageSize(terrainImg));\n\n    if (gid >= 1024) return;\n\n    vec2 pos = droplet[gid].xy;\n    vec2 dir = vec2(0.0);\n    float speed = startSpeed;\n    float water = startWater;\n    float sediment = 0;\n\n    for(int lifetime = maxLifetime; lifetime > 0; lifetime--) {\n\n        ivec2 cell = ivec2(floor(pos));\n        float x = fract(pos.x);\n        float y = fract(pos.y);\n        float invX = 1 - x;\n        float invY = 1 - y;\n\n        // Calculate droplet's height and direction of flow with bilinear interpolation of surrounding heights\n        vec3 heightAndGradient = CalculateHeightAndGradient(pos);\n\n        // Update the droplet's direction and position (move position 1 unit regardless of speed)\n        dir = mix(-heightAndGradient.xy, dir, inertia);\n\n        // Normalize direction\n        float len = max(0.01,length(dir));\n        dir /= len;\n        pos += dir;\n\n        // Stop simulating droplet if it's not moving or has flowed over edge of map\n        if ((dir.x == 0 && dir.y == 0) || \n            pos.x < borderSize || \n            pos.x >= (mapSize.x - borderSize) || \n            pos.y < borderSize || \n            pos.y >= (mapSize.y - borderSize)) {\n            break;\n        }\n\n        // Find the droplet's new height and calculate the deltaHeight\n        float newHeight = CalculateHeightAndGradient(pos).z;\n        float deltaHeight = newHeight - heightAndGradient.z; \n\n        // Calculate the droplet's sediment capacity (higher when moving fast down a slope and contains lots of water)\n        float sedimentCapacity = max(-deltaHeight * speed * water * sedimentCapacityFactor, minSedimentCapacity);\n\n        // If carrying more sediment than capacity, or if flowing uphill:\n        if (sediment > sedimentCapacity || deltaHeight > 0) {\n            // If moving uphill (deltaHeight > 0) try fill up to the current height, otherwise deposit a fraction of the excess sediment\n            float amountToDeposit = (deltaHeight > 0) ? min(deltaHeight, sediment) : (sediment - sedimentCapacity) * depositSpeed;\n            sediment -= amountToDeposit;\n\n            // Add the sediment to the four nodes of the current cell using bilinear interpolation\n            // Deposition is not distributed over a radius (like erosion) so that it can fill small pits\n            ivec2 iuv;\n            float val;\n\n            iuv = cell;\n            val = imageLoad(terrainImg, iuv).r;\n            val += amountToDeposit * invX * invY;\n            imageStore(terrainImg, iuv, vec4(val));\n\n            iuv = cell + ivec2(1,0);\n            val = imageLoad(terrainImg, iuv).r;\n            val += amountToDeposit * x * invY;\n            imageStore(terrainImg, iuv, vec4(val));\n\n            iuv = cell + ivec2(0,1);\n            val = imageLoad(terrainImg, iuv).r;\n            val +=  amountToDeposit * invX * y;\n            imageStore(terrainImg, iuv, vec4(val));\n\n            iuv = cell + ivec2(1,1);\n            val = imageLoad(terrainImg, iuv).r;\n            val += amountToDeposit * x * y;\n            imageStore(terrainImg, iuv, vec4(val));\n        }  \n        else {\n            // Erode a fraction of the droplet's current carry capacity.\n            // Clamp the erosion to the change in height so that it doesn't dig a hole in the terrain behind the droplet\n            float amountToErode = min ((sedimentCapacity - sediment) * erodeSpeed, -deltaHeight);\n\n            for(int k = 0; k < 21; k++){\n                ivec2 erodeUV = cell + off[k];\n                erodeUV = clamp(erodeUV, ivec2(0), ivec2(mapSize - 1));\n                float weightedErodeAmount = amountToErode * w[k];\n                float currH = imageLoad(terrainImg, erodeUV).r;\n                float deltaSediment = currH < weightedErodeAmount ? currH : weightedErodeAmount;\n                float newH = currH - deltaSediment;\n                imageStore(terrainImg, erodeUV, vec4(newH));\n                sediment += deltaSediment; \n            }\n        }\n        // Update droplet's speed and water content\n        speed = sqrt(max(0,speed * speed + deltaHeight * gravity));\n        water *= (1 - evaporateSpeed);\n    }\n}",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
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
                    "patching_rect": [ 714.0, 202.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 714.0, 235.0, 92.0, 22.0 ],
                    "text": "allocitems 1024"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 714.0, 274.0, 166.0, 22.0 ],
                    "text": "jit.gpu.buffer @name droplets"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 889.0, 239.0, 147.0, 22.0 ],
                    "text": "jit.gl.texture @type float32"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 46.0, 156.0, 130.0, 20.0 ],
                    "text": "2) Generate the terrain"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 174.5, 12.0, 60.0, 20.0 ],
                    "text": "1) Enable"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_gl_texture", "" ],
                    "patching_rect": [ 548.0, 568.0, 199.0, 22.0 ],
                    "text": "jit.gpu.totexture @source terrainImg"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 154.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 889.0, 274.0, 394.0, 22.0 ],
                    "text": "jit.gpu.image @name terrainImg @format rgba32_float @dim 1024 1024"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 858.0, 61.0, 298.0, 22.0 ],
                    "style": "default",
                    "text": "jit.gl.texture @adapt 0 @dim 1024 1024 @type float32"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 858.0, 174.0, 493.0, 22.0 ],
                    "style": "default",
                    "text": "jit.gl.bfg @basis fractal.multi @zoom 1.3 @fractal_params 1.45 4. 0.86 4.2 @offset 6. -0.65"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 46.0, 300.0, 145.0, 22.0 ],
                    "text": "jit.anim.drive @ui_listen 1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "linecount": 3,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 25.0, 339.0, 166.0, 49.0 ],
                    "text": "jit.gl.camera @locklook 1 @tripod 1 @lookat 0 0.5 0. @position 1 2 1"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "linecount": 4,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_matrix", "bang", "" ],
                    "patching_rect": [ 25.0, 37.0, 144.0, 62.0 ],
                    "text": "jit.world @floating 1 @size 960 540 @erase_color 0.4 0.65 1 @displaylink 0 @fps 120"
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
                    "patching_rect": [ 24.5, 11.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "offset",
                    "id": "obj-30",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 880.0, 100.0, 189.0, 22.0 ],
                    "text_width": 57.0
                }
            },
            {
                "box": {
                    "attr": "gravity",
                    "id": "obj-32",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 49.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            },
            {
                "box": {
                    "attr": "zoom",
                    "id": "obj-65",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 906.0, 131.0, 123.0, 22.0 ],
                    "text_width": 57.0
                }
            },
            {
                "box": {
                    "attr": "depositSpeed",
                    "id": "obj-6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 99.0, 240.0, 22.0 ],
                    "text_width": 168.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-1", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 2 ],
                    "order": 0,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 2 ],
                    "order": 2,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 2 ],
                    "order": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 1 ],
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 2 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 1 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "order": 1,
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "order": 0,
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 2 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 2 ],
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 1 ],
                    "order": 0,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 1 ],
                    "order": 1,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 1 ],
                    "order": 2,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "order": 1,
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "order": 0,
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-19", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-19", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-28", 0 ]
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
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 358.55078125, 543.5, 358.55078125 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-34", 0 ]
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
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-41", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-41", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 3 ],
                    "source": [ "obj-49", 0 ]
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
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 1 ],
                    "source": [ "obj-52", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 358.96875, 543.5, 358.96875 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 358.109375, 543.5, 358.109375 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 360.15234375, 543.5, 360.15234375 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 357.88671875, 543.5, 357.88671875 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 359.25, 543.5, 359.25 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 359.3671875, 543.5, 359.3671875 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 360.49609375, 543.5, 360.49609375 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 358.2734375, 543.5, 358.2734375 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 360.64453125, 543.5, 360.64453125 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 360.7109375, 543.5, 360.7109375 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 238.5, 360.08984375, 543.5, 360.08984375 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 0,
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 1 ],
                    "order": 1,
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "order": 1,
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "order": 0,
                    "source": [ "obj-96", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}