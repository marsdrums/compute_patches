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
        "rect": [ 34.0, 100.0, 1660.0, 893.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 767.0, 357.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 768.5, 357.3840965330601, 19.0, 20.0 ],
                    "text": "↓",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 524.0, 355.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 524.5, 357.3840965330601, 19.0, 20.0 ],
                    "text": "↓",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 284.0, 355.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 281.5, 357.3840965330601, 19.0, 20.0 ],
                    "text": "↓",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 429.0, 95.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 39.0, 357.3840965330601, 19.0, 20.0 ],
                    "text": "↓",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "jit_matrix" ],
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
                        "rect": [ 626.0, 186.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 50.0, 103.0, 121.0, 22.0 ],
                                    "text": "jit.unpack 1 @jump 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 125.0, 334.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 125.0, 212.0, 73.0, 22.0 ],
                                    "text": "jit.matrixinfo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 125.0, 248.0, 84.0, 22.0 ],
                                    "text": "routepass dim"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 90.0, 180.0, 53.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 125.0, 291.0, 103.0, 22.0 ],
                                    "text": "jit.matrix 1 float32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 275.0, 52.0, 22.0 ],
                                    "text": "plane -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 50.0, 241.0, 29.5, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 50.0, 36.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 334.0, 30.0, 30.0 ]
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
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-11", 1 ]
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
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-17", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 508.0, 387.0, 139.0, 22.0 ],
                    "text": "p format_matrix_1-plane"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-27",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1598.0, 125.0, 122.0, 35.0 ],
                    "presentation_linecount": 2,
                    "text": "underline $1, textcolor 1 0.86 $1 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1598.0, 94.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "button": 1,
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 11.595187,
                    "htabcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 0.0 ],
                    "id": "obj-66",
                    "maxclass": "tab",
                    "multiline": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1598.0, 60.0, 138.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 721.0, 15.0, 115.0, 50.0 ],
                    "rounded": 0.0,
                    "tabcolor": [ 0.8156862745098039, 0.2196078431372549, 0.2196078431372549, 0.0 ],
                    "tabs": "sel",
                    "textcolor": [ 0.9, 0.9, 0.9, 0.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-67",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1598.0, 290.0, 154.0, 50.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 720.5, 14.5, 115.0, 50.0 ],
                    "text": "See the Vulkan documentation for more details",
                    "textcolor": [ 1.0, 0.86, 0.0, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-3",
                    "linecount": 6,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1635.0, 198.0, 110.0, 89.0 ],
                    "presentation_linecount": 5,
                    "text": ";\rmax launchbrowser https://docs.vulkan.org/glsl/latest/chapters/builtins.html"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-102",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1382.0, 125.0, 122.0, 35.0 ],
                    "text": "underline $1, textcolor 1 0.86 $1 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1382.0, 94.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "button": 1,
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 11.595187,
                    "htabcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 0.0 ],
                    "id": "obj-104",
                    "maxclass": "tab",
                    "multiline": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1382.0, 60.0, 138.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1299.0, 152.0, 130.0, 22.0 ],
                    "rounded": 0.0,
                    "tabcolor": [ 0.8156862745098039, 0.2196078431372549, 0.2196078431372549, 0.0 ],
                    "tabs": "sel",
                    "textcolor": [ 0.9, 0.9, 0.9, 0.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-99",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1132.0, 125.0, 122.0, 35.0 ],
                    "text": "underline $1, textcolor 1 0.86 $1 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1132.0, 94.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "button": 1,
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 11.595187,
                    "htabcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 0.0 ],
                    "id": "obj-101",
                    "maxclass": "tab",
                    "multiline": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1132.0, 60.0, 138.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1053.0, 152.0, 136.0, 22.0 ],
                    "rounded": 0.0,
                    "tabcolor": [ 0.8156862745098039, 0.2196078431372549, 0.2196078431372549, 0.0 ],
                    "tabs": "sel",
                    "textcolor": [ 0.9, 0.9, 0.9, 0.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-96",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 885.0, 125.0, 122.0, 35.0 ],
                    "text": "underline $1, textcolor 1 0.86 $1 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-97",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 885.0, 94.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "button": 1,
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 11.595187,
                    "htabcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 0.0 ],
                    "id": "obj-98",
                    "maxclass": "tab",
                    "multiline": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 885.0, 60.0, 138.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 813.5, 153.0, 118.0, 22.0 ],
                    "rounded": 0.0,
                    "tabcolor": [ 0.8156862745098039, 0.2196078431372549, 0.2196078431372549, 0.0 ],
                    "tabs": "sel",
                    "textcolor": [ 0.9, 0.9, 0.9, 0.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-93",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 626.0, 125.0, 122.0, 35.0 ],
                    "text": "underline $1, textcolor 1 0.86 $1 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 626.0, 94.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "button": 1,
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 11.595187,
                    "htabcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 0.0 ],
                    "id": "obj-95",
                    "maxclass": "tab",
                    "multiline": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 626.0, 60.0, 138.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 555.5, 153.0, 158.5, 22.0 ],
                    "rounded": 0.0,
                    "tabcolor": [ 0.8156862745098039, 0.2196078431372549, 0.2196078431372549, 0.0 ],
                    "tabs": "sel",
                    "textcolor": [ 0.9, 0.9, 0.9, 0.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-90",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 401.0, 125.0, 122.0, 35.0 ],
                    "text": "underline $1, textcolor 1 0.86 $1 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 401.0, 94.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "button": 1,
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 11.595187,
                    "htabcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 0.0 ],
                    "id": "obj-92",
                    "maxclass": "tab",
                    "multiline": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 401.0, 60.0, 138.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 320.5, 153.0, 144.0, 22.0 ],
                    "rounded": 0.0,
                    "tabcolor": [ 0.8156862745098039, 0.2196078431372549, 0.2196078431372549, 0.0 ],
                    "tabs": "sel",
                    "textcolor": [ 0.9, 0.9, 0.9, 0.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-87",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 215.0, 125.0, 122.0, 35.0 ],
                    "text": "underline $1, textcolor 1 0.86 $1 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 215.0, 94.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "button": 1,
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 11.595187,
                    "htabcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 0.0 ],
                    "id": "obj-80",
                    "maxclass": "tab",
                    "multiline": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 215.0, 60.0, 138.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 76.5, 153.0, 145.0, 22.0 ],
                    "rounded": 0.0,
                    "tabcolor": [ 0.8156862745098039, 0.2196078431372549, 0.2196078431372549, 0.0 ],
                    "tabs": "sel",
                    "textcolor": [ 0.9, 0.9, 0.9, 0.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 613.0, -70.0, 298.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.5, 81.0, 298.0, 20.0 ],
                    "text": "Click on the variables' name to open the reference doc"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-77",
                    "linecount": 6,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1408.0, 168.0, 142.0, 89.0 ],
                    "text": ";\rmax launchbrowser https://registry.khronos.org/OpenGL-Refpages/gl4/html/gl_WorkGroupSize.xhtml"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-75",
                    "linecount": 6,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1157.0, 168.0, 151.0, 89.0 ],
                    "text": ";\rmax launchbrowser https://registry.khronos.org/OpenGL-Refpages/gl4/html/gl_NumWorkGroups.xhtml"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-73",
                    "linecount": 6,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 901.0, 168.0, 148.0, 89.0 ],
                    "text": ";\rmax launchbrowser https://registry.khronos.org/OpenGL-Refpages/gl4/html/gl_WorkGroupID.xhtml"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-71",
                    "linecount": 5,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 651.0, 168.0, 167.0, 76.0 ],
                    "text": ";\rmax launchbrowser https://registry.khronos.org/OpenGL-Refpages/gl4/html/gl_LocalInvocationIndex.xhtml"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-68",
                    "linecount": 6,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 426.0, 168.0, 146.0, 89.0 ],
                    "text": ";\rmax launchbrowser https://registry.khronos.org/OpenGL-Refpages/gl4/html/gl_LocalInvocationID.xhtml"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-65",
                    "linecount": 6,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 249.0, 168.0, 154.0, 89.0 ],
                    "text": ";\rmax launchbrowser https://registry.khronos.org/OpenGL-Refpages/gl4/html/gl_GlobalInvocationID.xhtml"
                }
            },
            {
                "box": {
                    "fontsize": 45.241765351901535,
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 613.0, -132.0, 682.0, 57.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 23.0, 11.0, 682.0, 57.0 ],
                    "text": "Compute shader built-in variables"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, -14.0, 260.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1017.0, 97.0, 261.0, 20.0 ],
                    "text": "Check out the built-in variables in the shader →"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "linecount": 19,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1224.0, 458.0, 261.0, 261.0 ],
                    "presentation": 1,
                    "presentation_linecount": 23,
                    "presentation_rect": [ 1248.0, 241.0, 230.0, 315.0 ],
                    "text": "Name\ngl_WorkGroupSize — contains the size of the workgroup operated on by a compute shader\n\nDeclaration\nconst uvec3 gl_WorkGroupSize ;\n\nDescription\nIn the compute language, gl_WorkGroupSize contains the size of a workgroup declared by a compute shader. The size of the work group in the X, Y, and Z dimensions is stored in the x, y, and z components of gl_WorkGroupSize. The values stored in gl_WorkGroupSize match those specified in the required local_size_x, local_size_y, and local_size_z layout qualifiers for the current shader. This value is constant so that it can be used to size arrays of memory that can be shared within the local work group."
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "linecount": 19,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 984.7272740006447, 458.0, 231.0, 261.0 ],
                    "presentation": 1,
                    "presentation_linecount": 19,
                    "presentation_rect": [ 1006.0, 241.0, 231.0, 261.0 ],
                    "text": "Name\ngl_NumWorkGroups — contains the number of workgroups that have been dispatched to a compute shader\n\nDeclaration\nin uvec3 gl_NumWorkGroups ;\n\nDescription\nIn the compute language, gl_NumWorkGroups contains the total number of work groups that will execute the compute shader. The components of gl_NumWorkGroups are equal to the num_groups_x, num_groups_y, and num_groups_z parameters passed to the glDispatchCompute command. In Max, it corresponds to jit.gpu.compute's @workgroups attribute."
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "linecount": 21,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 745.7272740006447, 707.0, 230.0, 301.0 ],
                    "presentation": 1,
                    "presentation_linecount": 21,
                    "presentation_rect": [ 763.0, 531.0, 230.0, 301.0 ],
                    "text": "Name\ngl_WorkGroupID — contains the index of the workgroup currently being operated on by a compute shader\n\nDeclaration\nin uvec3 gl_WorkGroupID ;\n\nDescription\nIn the compute language, gl_WorkGroupID contains the 3-dimensional index of the global work group that the current compute shader invocation is executing within. The possible values range across the parameters passed into glDispatchCompute, i.e., from (0, 0, 0) to (gl_NumWorkGroups.x - 1, gl_NumWorkGroups.y - 1, gl_NumWorkGroups.z - 1).\n\n"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "linecount": 22,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 504.0, 707.0, 228.0, 301.0 ],
                    "presentation": 1,
                    "presentation_linecount": 22,
                    "presentation_rect": [ 521.0, 531.0, 228.0, 301.0 ],
                    "text": "Name\ngl_LocalInvocationIndex — contains the local linear index of work item currently being operated on by a compute shader\n\nDeclaration\nin uint gl_LocalInvocationIndex ;\n\nDescription\nIn the compute language, gl_LocalInvocationIndex is a derived input variable containing the 1-dimensional linearized index of the work invocation within the work group that the current shader is executing on. The value of gl_LocalInvocationIndex is equal to gl_LocalInvocationID.z * gl_WorkGroupSize.x * gl_WorkGroupSize.y + gl_LocalInvocationID.y * gl_WorkGroupSize.x + gl_LocalInvocationID.x."
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "linecount": 19,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 267.0, 707.0, 233.0, 261.0 ],
                    "presentation": 1,
                    "presentation_linecount": 19,
                    "presentation_rect": [ 276.0, 531.0, 233.0, 261.0 ],
                    "text": "Name\ngl_LocalInvocationID — contains the index of work item currently being operated on by a compute shader\n\nDeclaration\nin uvec3 gl_LocalInvocationID ;\n\nDescription\nIn the compute language, gl_LocalInvocationID is an input variable containing the n-dimensional index of the local work invocation within the work group that the current shader is executing in. The possible values for this variable range across the local work group size, i.e., (0,0,0) to (gl_WorkGroupSize.x - 1, gl_WorkGroupSize.y - 1, gl_WorkGroupSize.z - 1)."
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "linecount": 18,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 707.0, 226.0, 248.0 ],
                    "presentation": 1,
                    "presentation_linecount": 18,
                    "presentation_rect": [ 36.0, 531.0, 226.0, 248.0 ],
                    "text": "Name\ngl_GlobalInvocationID — contains the global index of work item currently being operated on by a compute shader\n\nDeclaration\nin uvec3 gl_GlobalInvocationID ;\n\nDescription\nIn the compute language, gl_GlobalInvocationID is a derived input variable containing the n-dimensional index of the work invocation within the global work group that the current shader is executing on. The value of gl_GlobalInvocationID is equal to gl_WorkGroupID * gl_WorkGroupSize + gl_LocalInvocationID."
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 24.0, -192.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "jit_matrix" ],
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
                        "rect": [ 446.0, 174.0, 1000.0, 780.0 ],
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 50.0, 103.0, 175.0, 22.0 ],
                                    "text": "jit.unpack 1 @jump 3 @offset 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 125.0, 334.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 125.0, 212.0, 73.0, 22.0 ],
                                    "text": "jit.matrixinfo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 125.0, 248.0, 84.0, 22.0 ],
                                    "text": "routepass dim"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 90.0, 180.0, 53.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 125.0, 291.0, 103.0, 22.0 ],
                                    "text": "jit.matrix 3 float32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 275.0, 52.0, 22.0 ],
                                    "text": "plane -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 50.0, 241.0, 29.5, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 50.0, 36.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 334.0, 30.0, 30.0 ]
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
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-11", 1 ]
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
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-17", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1234.0, 388.0, 92.0, 22.0 ],
                    "text": "p format_matrix"
                }
            },
            {
                "box": {
                    "border": 0,
                    "cols": 1,
                    "colwidth": 80,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "hscroll": 0,
                    "id": "obj-15",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 1234.0, 412.0, 92.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1342.0, 195.0, 45.0, 20.0 ],
                    "readonly": 1,
                    "rows": 1,
                    "selmode": 0,
                    "vscroll": 0
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1281.0, 324.0, 125.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1301.0, 153.0, 125.0, 21.0 ],
                    "text": "gl_WorkGroupSize",
                    "textcolor": [ 1.0, 0.86, 0.0, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_matrix", "" ],
                    "patching_rect": [ 1234.0, 358.0, 183.0, 22.0 ],
                    "text": "jit.gpu.tomatrix @source wgsImg"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 209.0, -43.0, 338.0, 22.0 ],
                    "text": "jit.gpu.image @format rgba32_uint @dim 1 1 @name wgsImg"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "jit_matrix" ],
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
                        "rect": [ 446.0, 174.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 50.0, 103.0, 175.0, 22.0 ],
                                    "text": "jit.unpack 1 @jump 3 @offset 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 125.0, 334.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 125.0, 212.0, 73.0, 22.0 ],
                                    "text": "jit.matrixinfo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 125.0, 248.0, 84.0, 22.0 ],
                                    "text": "routepass dim"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 90.0, 180.0, 53.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 125.0, 291.0, 103.0, 22.0 ],
                                    "text": "jit.matrix 3 float32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 275.0, 52.0, 22.0 ],
                                    "text": "plane -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 50.0, 241.0, 29.5, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 50.0, 36.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 334.0, 30.0, 30.0 ]
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
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-11", 1 ]
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
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-17", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 992.0, 388.0, 92.0, 22.0 ],
                    "text": "p format_matrix"
                }
            },
            {
                "box": {
                    "border": 0,
                    "cols": 1,
                    "colwidth": 80,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "hscroll": 0,
                    "id": "obj-53",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 992.0, 412.0, 92.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1099.0, 195.0, 45.0, 20.0 ],
                    "readonly": 1,
                    "rows": 1,
                    "selmode": 0,
                    "vscroll": 0
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1036.0, 324.0, 135.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1053.0, 153.0, 135.0, 21.0 ],
                    "text": "gl_NumWorkGroups",
                    "textcolor": [ 1.0, 0.86, 0.0, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_matrix", "" ],
                    "patching_rect": [ 992.0, 358.0, 177.0, 22.0 ],
                    "text": "jit.gpu.tomatrix @source nwImg"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 178.0, -70.0, 332.0, 22.0 ],
                    "text": "jit.gpu.image @format rgba32_uint @dim 1 1 @name nwImg"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "jit_matrix" ],
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
                        "rect": [ 446.0, 174.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 50.0, 103.0, 175.0, 22.0 ],
                                    "text": "jit.unpack 1 @jump 3 @offset 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 125.0, 334.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 125.0, 212.0, 73.0, 22.0 ],
                                    "text": "jit.matrixinfo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 125.0, 248.0, 84.0, 22.0 ],
                                    "text": "routepass dim"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 90.0, 180.0, 53.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 125.0, 291.0, 103.0, 22.0 ],
                                    "text": "jit.matrix 3 float32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 275.0, 52.0, 22.0 ],
                                    "text": "plane -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 50.0, 241.0, 29.5, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 50.0, 36.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 334.0, 30.0, 30.0 ]
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
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-11", 1 ]
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
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-17", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 750.0, 391.0, 92.0, 22.0 ],
                    "text": "p format_matrix"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "jit_matrix" ],
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
                        "rect": [ 446.0, 174.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 50.0, 103.0, 175.0, 22.0 ],
                                    "text": "jit.unpack 1 @jump 3 @offset 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 125.0, 334.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 125.0, 212.0, 73.0, 22.0 ],
                                    "text": "jit.matrixinfo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 125.0, 248.0, 84.0, 22.0 ],
                                    "text": "routepass dim"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 90.0, 180.0, 53.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 125.0, 291.0, 103.0, 22.0 ],
                                    "text": "jit.matrix 3 float32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 275.0, 52.0, 22.0 ],
                                    "text": "plane -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 50.0, 241.0, 29.5, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 50.0, 36.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 334.0, 30.0, 30.0 ]
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
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-11", 1 ]
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
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-17", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 266.0, 391.0, 92.0, 22.0 ],
                    "text": "p format_matrix"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "jit_matrix" ],
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
                        "rect": [ 446.0, 174.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 50.0, 103.0, 175.0, 22.0 ],
                                    "text": "jit.unpack 1 @jump 3 @offset 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 125.0, 334.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 125.0, 212.0, 73.0, 22.0 ],
                                    "text": "jit.matrixinfo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 125.0, 248.0, 84.0, 22.0 ],
                                    "text": "routepass dim"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 90.0, 180.0, 53.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 125.0, 291.0, 103.0, 22.0 ],
                                    "text": "jit.matrix 3 float32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 275.0, 52.0, 22.0 ],
                                    "text": "plane -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 50.0, 241.0, 29.5, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 50.0, 36.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 334.0, 30.0, 30.0 ]
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
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-11", 1 ]
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
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-17", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 24.0, 391.0, 92.0, 22.0 ],
                    "text": "p format_matrix"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 859.0, 550.0, 146.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 865.0, 332.0, 132.0, 20.0 ],
                    "text": "← gl_NumWorkGroups"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 756.0, 549.0, 101.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 767.5, 332.0, 101.0, 22.0 ],
                    "text": "jit./ @val 10. 7. 1."
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 756.0, 587.0, 148.0, 116.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 767.5, 381.0, 221.0, 145.0 ],
                    "sync": 1
                }
            },
            {
                "box": {
                    "border": 0,
                    "cols": 150,
                    "colwidth": 33,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-45",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 750.0, 412.0, 221.0, 124.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 767.5, 195.0, 221.0, 124.0 ],
                    "readonly": 1,
                    "rows": 100,
                    "selmode": 0
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 802.0, 324.0, 112.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 819.5, 152.0, 112.0, 21.0 ],
                    "text": "gl_WorkGroupID",
                    "textcolor": [ 1.0, 0.86, 0.0, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_matrix", "" ],
                    "patching_rect": [ 750.0, 358.0, 187.0, 22.0 ],
                    "text": "jit.gpu.tomatrix @source wgIdImg"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 148.0, -94.0, 369.0, 22.0 ],
                    "text": "jit.gpu.image @format rgba32_uint @dim 150 100 @name wgIdImg"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 597.0, 543.0, 150.45454800128937, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 604.0, 332.0, 147.0, 47.0 ],
                    "text": "← gl_WorkGroupSize.x * \n     gl_WorkGroupSize.y *\n     gl_WorkGroupSize.z"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 514.0, 549.0, 81.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 524.5, 332.0, 81.0, 22.0 ],
                    "text": "jit./ @val 256."
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 514.0, 587.0, 148.0, 116.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 524.5, 381.0, 221.0, 145.0 ],
                    "sync": 1
                }
            },
            {
                "box": {
                    "border": 0,
                    "cols": 150,
                    "colwidth": 24,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-40",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 508.0, 412.0, 221.0, 124.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 524.5, 195.0, 221.0, 124.0 ],
                    "readonly": 1,
                    "rows": 100,
                    "selmode": 0
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 544.0, 324.0, 160.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 554.5, 154.0, 160.0, 21.0 ],
                    "text": "gl_LocalInvocationIndex",
                    "textcolor": [ 1.0, 0.86, 0.0, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_matrix", "" ],
                    "patching_rect": [ 508.0, 358.0, 207.0, 22.0 ],
                    "text": "jit.gpu.tomatrix @source lidLinearImg"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 117.0, -119.0, 369.0, 22.0 ],
                    "text": "jit.gpu.image @format r32_uint @dim 150 100 @name lidLinearImg"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 315.0, 324.0, 139.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 321.5, 153.0, 139.0, 21.0 ],
                    "text": "gl_LocalInvocationID",
                    "textcolor": [ 1.0, 0.86, 0.0, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68.0, 324.0, 146.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 76.0, 153.5, 146.0, 21.0 ],
                    "text": "gl_GlobalInvocationID",
                    "textcolor": [ 1.0, 0.86, 0.0, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 148.0, 548.0, 81.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 162.16215133666992, 333.0, 81.0, 20.0 ],
                    "text": "← image size"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 382.0, 550.0, 142.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 388.0, 333.0, 124.0, 20.0 ],
                    "text": "← gl_WorkGroupSize"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 24.0, 274.0, 1229.0, 22.0 ],
                    "text": "t b b b b b b"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 24.0, 15.0, 118.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 20.0, 547.0, 121.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 38.5, 332.0, 121.0, 22.0 ],
                    "text": "jit./ @val 150. 100. 1."
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 272.0, 549.0, 108.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 281.5, 332.0, 108.0, 22.0 ],
                    "text": "jit./ @val 16. 16. 1."
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 20.0, 584.0, 148.0, 116.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 38.5, 381.0, 221.0, 145.0 ],
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 272.0, 587.0, 148.0, 116.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 281.5, 381.0, 221.0, 145.0 ],
                    "sync": 1
                }
            },
            {
                "box": {
                    "border": 0,
                    "cols": 150,
                    "colwidth": 44,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-14",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 266.0, 412.0, 221.0, 124.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 281.5, 195.0, 221.0, 124.0 ],
                    "readonly": 1,
                    "rows": 100,
                    "selmode": 0
                }
            },
            {
                "box": {
                    "border": 0,
                    "cols": 150,
                    "colwidth": 54,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-13",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 24.0, 415.0, 221.0, 124.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 38.5, 195.0, 221.0, 124.0 ],
                    "readonly": 1,
                    "rows": 100,
                    "selmode": 0
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, -166.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 24.0, 42.0, 79.0, 22.0 ],
                    "text": "jit.gpu.submit"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_matrix", "" ],
                    "patching_rect": [ 266.0, 358.0, 173.0, 22.0 ],
                    "text": "jit.gpu.tomatrix @source lidImg"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "jit_matrix", "" ],
                    "patching_rect": [ 24.0, 360.0, 177.0, 22.0 ],
                    "text": "jit.gpu.tomatrix @source gidImg"
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, -14.0, 204.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1281.0, 96.0, 204.0, 22.0 ],
                    "text": "jit.gpu.compute @workgroups 10 7 1",
                    "textfile": {
                        "text": "// Built-in variables example\n\n#version 460\n\nlayout(local_size_x = 16, local_size_y = 16) in; // <- this corresponds to gl_WorkGroupSize\n\nlayout(rgba32ui, binding = 0) uniform writeonly uimage2D gidImg;\nlayout(rgba32ui, binding = 1) uniform writeonly uimage2D lidImg;\nlayout(r32ui, binding = 2) uniform writeonly uimage2D lidLinearImg;\nlayout(rgba32ui, binding = 3) uniform writeonly uimage2D wgIdImg;\nlayout(rgba32ui, binding = 4) uniform writeonly uimage2D nwImg;\nlayout(rgba32ui, binding = 5) uniform writeonly uimage2D wgsImg;\n\nvoid main() {\n\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gidImg);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(gidImg, gid, uvec4(gl_GlobalInvocationID, 0u));\n    imageStore(lidImg, gid, uvec4(gl_LocalInvocationID, 0u));\n    imageStore(lidLinearImg, gid, uvec4(gl_LocalInvocationIndex));\n    imageStore(wgIdImg, gid, uvec4(gl_WorkGroupID,0u));\n\n    if(gl_LocalInvocationIndex == 0u){\n        imageStore(nwImg, ivec2(0), uvec4(gl_NumWorkGroups,0u));\n        imageStore(wgsImg, ivec2(0), uvec4(gl_WorkGroupSize,0u));\n    }\n}",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 85.0, -143.0, 355.0, 22.0 ],
                    "text": "jit.gpu.image @format rgba32_uint @dim 150 100 @name lidImg"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 55.0, -165.0, 359.0, 22.0 ],
                    "text": "jit.gpu.image @format rgba32_uint @dim 150 100 @name gidImg"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.10980392156862745, 0.10980392156862745, 0.10980392156862745, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.5372549019607843, 0.5372549019607843, 0.5372549019607843, 1.0 ],
                    "id": "obj-29",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 11.0, 306.0, 249.45454800128937, 713.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 28.5, 134.0, 241.0, 710.0 ],
                    "proportion": 0.5,
                    "rounded": 25
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.10980392156862745, 0.10980392156862745, 0.10980392156862745, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.5372549019607843, 0.5372549019607843, 0.5372549019607843, 1.0 ],
                    "id": "obj-50",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 260.0, 306.0, 249.45454800128937, 713.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 271.5, 134.0, 241.0, 710.0 ],
                    "proportion": 0.5,
                    "rounded": 25
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.10980392156862745, 0.10980392156862745, 0.10980392156862745, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.5372549019607843, 0.5372549019607843, 0.5372549019607843, 1.0 ],
                    "id": "obj-51",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 498.0, 306.0, 249.45454800128937, 713.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 514.5, 134.0, 241.0, 710.0 ],
                    "proportion": 0.5,
                    "rounded": 25
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.10980392156862745, 0.10980392156862745, 0.10980392156862745, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.5372549019607843, 0.5372549019607843, 0.5372549019607843, 1.0 ],
                    "id": "obj-52",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 740.0, 306.0, 249.45454800128937, 713.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 757.5, 134.0, 241.0, 710.0 ],
                    "proportion": 0.5,
                    "rounded": 25
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.10980392156862745, 0.10980392156862745, 0.10980392156862745, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.5372549019607843, 0.5372549019607843, 0.5372549019607843, 1.0 ],
                    "id": "obj-56",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 980.0, 306.0, 249.45454800128937, 713.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1001.0, 134.0, 241.0, 710.0 ],
                    "proportion": 0.5,
                    "rounded": 25
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.10980392156862745, 0.10980392156862745, 0.10980392156862745, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.5372549019607843, 0.5372549019607843, 0.5372549019607843, 1.0 ],
                    "id": "obj-57",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1220.0, 306.0, 249.45454800128937, 713.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1244.0, 134.0, 241.0, 710.0 ],
                    "proportion": 0.5,
                    "rounded": 25
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-101", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-101", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-104", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-104", 1 ]
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
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-19", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 2 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-24", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 132.5, 265.8029109239578, 33.5, 265.8029109239578 ],
                    "source": [ "obj-25", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-26", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-26", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-26", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-26", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-28", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 3 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-36", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 4 ],
                    "source": [ "obj-41", 0 ]
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
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-47", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 5 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-55", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-66", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-66", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-8", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-80", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-80", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 6 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-92", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-92", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-93", 0 ]
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
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-95", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-95", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-98", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "source": [ "obj-98", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}