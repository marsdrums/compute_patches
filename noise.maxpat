{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 1,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 174.0, 202.0, 1000.0, 780.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 86.0, 388.0, 353.0, 225.0 ],
					"sync" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 86.0, 344.0, 162.0, 22.0 ],
					"text" : "jit.gpu.totexture @source res"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 86.0, 145.0, 392.0, 22.0 ],
					"text" : "jit.gpu.image @name res @format RGBA32_FLOAT @dim 1920 1080 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 86.0, 242.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 555.0, 290.0, 158.0, 22.0 ],
					"text" : "jit.gpu.shader @name noise",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16, local_size_z = 1) in;\n\nlayout(binding = 1, rgba32f) writeonly uniform image2D res;\n\nuint wang_hash(inout uint seed){\n\n    seed = uint(seed ^ uint(61)) ^ uint(seed >> uint(16));\n    seed *= uint(9);\n    seed = seed ^ (seed >> 4);\n    seed *= uint(0x27d4eb2d);\n    seed = seed ^ (seed >> 15);\n    return seed;\n}\n \nfloat RandomFloat01(inout uint seed) { \n\treturn float(wang_hash(seed)) / 4294967296.0; \n}\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(points);\n\n    if(coord.x >= size.x || coord.y >= size.y) return;\n\n    uint seed = uint(coord.x) + uint(coord.y*size.x) + uint(900);\n\n    vec4 rand = vec4(   RandomFloat01(seed), \n                        RandomFloat01(seed), \n                        RandomFloat01(seed), \n                        RandomFloat01(seed));\n\n    imageStore(points, coord, rand);\n}",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 86.0, 290.0, 418.0, 22.0 ],
					"text" : "jit.gpu.compute @shader noise @threads 120 68 1 @write res @automatic 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 86.0, 32.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 86.0, 78.0, 113.0, 22.0 ],
					"text" : "jit.world @floating 1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
