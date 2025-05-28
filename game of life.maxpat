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
		"rect" : [ 326.0, 150.0, 1000.0, 780.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 41.0, 203.0, 78.0, 22.0 ],
					"text" : "jit.> @val 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 101.0, 136.0, 50.0, 20.0 ],
					"text" : "<- reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 41.0, 135.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 41.0, 168.0, 159.0, 22.0 ],
					"text" : "jit.noise 4 float32 1920 1080"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 40.0, 299.0, 169.0, 22.0 ],
					"text" : "jit.gpu.totexture @source cells"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 41.0, 242.0, 399.0, 22.0 ],
					"text" : "jit.gpu.image @name cells @format RGBA32_FLOAT @dim 1920 1080 1"
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
					"patching_rect" : [ 41.0, 76.0, 170.0, 22.0 ],
					"text" : "jit.gpu.shader @name conway",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 3, local_size_y = 3, local_size_z = 1) in;\n\nlayout(binding = 0, rgba32f) uniform image2D cells;\n\nshared uint state;\nshared uint neiSum;\n\nuint update(inout uint s, in uint n){\n    return state == 0 ? uint(n == 3) : uint(n == 2 || n == 3);\n}\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_WorkGroupID.xy);\n    ivec2 size = imageSize(cells);\n    bool center = gl_LocalInvocationID.x == 1 && gl_LocalInvocationID.y == 1;\n\n    if(center){\n        state = uint(imageLoad(cells, coord).x);\n        neiSum = 0;\n    }\n    memoryBarrierShared(); \n    barrier();\n\n    // Accumulate neighbors\n    ivec2 thisNeiCoord = ivec2(gl_WorkGroupID.xy + gl_LocalInvocationID.xy - 1);\n\n    if (thisNeiCoord.x >= 0 && \n        thisNeiCoord.y >= 0 && \n        thisNeiCoord.x < size.x && \n        thisNeiCoord.y < size.y && \n        !center) {\n\n        uint thisNei = uint(imageLoad(cells, thisNeiCoord).x);\n        atomicAdd(neiSum, thisNei);\n    }\n\n    barrier();\n\n    if(center){\n        imageStore(cells, coord, vec4(update(state, neiSum)));\n    }\n}",
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
					"patching_rect" : [ 41.0, 35.0, 404.0, 22.0 ],
					"text" : "jit.gpu.compute @shader conway @threads 1920 1080 1 @readwrite cells"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 40.0, 342.0, 259.0, 22.0 ],
					"text" : "jit.world @floating 1 @enable 1 @size 960 540"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
