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
		"rect" : [ 485.0, 148.0, 1000.0, 780.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 516.0, 396.0, 173.0, 22.0 ],
					"text" : "jit.gpu.shader @name reduce3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 3, local_size_y = 3, local_size_z = 1) in;\n\nlayout(binding = 0, rgba32f) readonly uniform image2D level2;\nlayout(binding = 1, rgba32f) writeonly uniform image2D level3;\n\nshared uint lumaSum;\nshared uint count;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_WorkGroupID.xy);\n    ivec2 size = imageSize(level2);\n    if(coord.x >= size.x || coord.y >= size.y) return;\n\n    bool center = gl_LocalInvocationIndex == 5;//gl_LocalInvocationID.x == 1 && gl_LocalInvocationID.y == 1;\n\n    if(center){\n        lumaSum = 0;\n        count = 0;\n    }\n    memoryBarrierShared(); \n    barrier();\n\n    // Accumulate neighbors\n    ivec2 thisNeiCoord = ivec2(gl_WorkGroupID.xy + gl_LocalInvocationID.xy - 1);\n\n    if (thisNeiCoord.x >= 0 && \n        thisNeiCoord.y >= 0 && \n        thisNeiCoord.x < size.x && \n        thisNeiCoord.y < size.y\n        ) {\n\n        uint neiLuma = uint(imageLoad(level2, thisNeiCoord).x * 65536);\n        atomicAdd(lumaSum, neiLuma);\n        atomicAdd(count, 1);\n    }\n\n    barrier();\n\n    if(center){\n        float averageLuma = (float(lumaSum)/65536) / 9;\n        ivec2 coordHalf = ivec2(ceil(gl_WorkGroupID.xy*0.5));\n        imageStore(level3, coordHalf, vec4(averageLuma));\n    }\n}",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 41.0, 396.0, 451.0, 22.0 ],
					"text" : "jit.gpu.compute @shader reduce3 @threads 480 270 1 @read level2 @write level3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 40.0, 548.0, 393.0, 22.0 ],
					"text" : "jit.gpu.image @name level3 @format RGBA32_FLOAT @dim 240 135 1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 516.0, 358.0, 173.0, 22.0 ],
					"text" : "jit.gpu.shader @name reduce2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 3, local_size_y = 3, local_size_z = 1) in;\n\nlayout(binding = 0, rgba32f) readonly uniform image2D level1;\nlayout(binding = 1, rgba32f) writeonly uniform image2D level2;\n\nshared uint lumaSum;\nshared uint count;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_WorkGroupID.xy);\n    ivec2 size = imageSize(level1);\n    if(coord.x >= size.x || coord.y >= size.y) return;\n\n    bool center = gl_LocalInvocationIndex == 5;//gl_LocalInvocationID.x == 1 && gl_LocalInvocationID.y == 1;\n\n    if(center){\n        lumaSum = 0;\n        count = 0;\n    }\n    memoryBarrierShared(); \n    barrier();\n\n    // Accumulate neighbors\n    ivec2 thisNeiCoord = ivec2(gl_WorkGroupID.xy + gl_LocalInvocationID.xy - 1);\n\n    if (thisNeiCoord.x >= 0 && \n        thisNeiCoord.y >= 0 && \n        thisNeiCoord.x < size.x && \n        thisNeiCoord.y < size.y\n        ) {\n\n        uint neiLuma = uint(imageLoad(level1, thisNeiCoord).x * 65536);\n        atomicAdd(lumaSum, neiLuma);\n        atomicAdd(count, 1);\n    }\n\n    barrier();\n\n    if(center){\n        float averageLuma = (float(lumaSum)/65536) / count;\n        ivec2 coordHalf = ivec2(ceil(gl_WorkGroupID.xy*0.5));\n        imageStore(level2, coordHalf, vec4(averageLuma));\n    }\n}",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 41.0, 358.0, 451.0, 22.0 ],
					"text" : "jit.gpu.compute @shader reduce2 @threads 960 540 1 @read level1 @write level2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 40.0, 521.0, 393.0, 22.0 ],
					"text" : "jit.gpu.image @name level2 @format RGBA32_FLOAT @dim 480 270 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 40.0, 492.0, 393.0, 22.0 ],
					"text" : "jit.gpu.image @name level1 @format RGBA32_FLOAT @dim 960 540 1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 516.0, 317.0, 173.0, 22.0 ],
					"text" : "jit.gpu.shader @name reduce1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 3, local_size_y = 3, local_size_z = 1) in;\n\nlayout(binding = 0, rgba32f) readonly uniform image2D level0;\nlayout(binding = 1, rgba32f) writeonly uniform image2D level1;\n\nshared uint lumaSum;\nshared uint count;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_WorkGroupID.xy);\n    ivec2 size = imageSize(level0);\n    if(coord.x >= size.x || coord.y >= size.y) return;\n\n    bool center = gl_LocalInvocationIndex == 5;//gl_LocalInvocationID.x == 1 && gl_LocalInvocationID.y == 1;\n\n    if(center){\n        lumaSum = 0;\n        count = 0;\n    }\n    memoryBarrierShared(); \n    barrier();\n\n    // Accumulate neighbors\n    ivec2 thisNeiCoord = ivec2(gl_WorkGroupID.xy + gl_LocalInvocationID.xy - vec2(1));\n\n    if (thisNeiCoord.x >= 0 && \n        thisNeiCoord.y >= 0 && \n        thisNeiCoord.x < size.x && \n        thisNeiCoord.y < size.y\n        ) {\n\n        uint neiLuma = uint(imageLoad(level0, thisNeiCoord).x * 65536);\n        atomicAdd(lumaSum, neiLuma);\n        atomicAdd(count, 1);\n    }\n\n    barrier();\n\n    if(center){\n        float averageLuma = (float(lumaSum)/65536) / float(count);\n        ivec2 coordHalf = ivec2(ceil(gl_WorkGroupID.xy*0.5));\n        imageStore(level1, coordHalf, vec4(averageLuma));\n    }\n}",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 41.0, 317.0, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader reduce1 @threads 1920 1080 1 @read level0 @write level1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 62.0, 629.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 41.0, 216.0, 404.0, 22.0 ],
					"text" : "jit.gpu.image @name inImg @format RGBA32_FLOAT @dim 1920 1080 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 41.0, 179.0, 175.0, 22.0 ],
					"text" : "jit.gpu.fromtexture @dest inImg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 40.0, 70.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 105.0, 233.0, 22.0 ],
					"text" : "output_texture 1, vol 0, unique 1, loop 1, 1"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "chickens.mp4",
								"filename" : "chickens.mp4",
								"filekind" : "moviefile",
								"id" : "u770006266",
								"loop" : 1,
								"content_state" : 								{
									"vol" : 0,
									"unique" : 1,
									"loop" : 1
								}

							}
 ]
					}
,
					"drawto" : "",
					"id" : "obj-4",
					"loop" : 1,
					"maxclass" : "jit.playlist",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_gl_texture", "", "dictionary" ],
					"output_texture" : 1,
					"parameter_enable" : 0,
					"patching_rect" : [ 40.0, 140.0, 150.0, 30.0 ],
					"saved_attribute_attributes" : 					{
						"candicane2" : 						{
							"expression" : ""
						}
,
						"candicane3" : 						{
							"expression" : ""
						}
,
						"candicane4" : 						{
							"expression" : ""
						}
,
						"candicane5" : 						{
							"expression" : ""
						}
,
						"candicane6" : 						{
							"expression" : ""
						}
,
						"candicane7" : 						{
							"expression" : ""
						}
,
						"candicane8" : 						{
							"expression" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 40.0, 596.0, 177.0, 22.0 ],
					"text" : "jit.gpu.totexture @source level3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 40.0, 463.0, 406.0, 22.0 ],
					"text" : "jit.gpu.image @name level0 @format RGBA32_FLOAT @dim 1920 1080 1"
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
					"patching_rect" : [ 516.0, 275.0, 179.0, 22.0 ],
					"text" : "jit.gpu.shader @name rgb2luma",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16, local_size_z = 1) in;\n\nlayout(binding = 0, rgba32f) readonly uniform image2D inImg;\nlayout(binding = 1, rgba32f) writeonly uniform image2D level0;\n\nvoid main() {\n\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level0);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    vec3 col = imageLoad(inImg, gid).rgb;\n    float luma = dot(vec3(0.299, 0.587, 0.114), col);\n    imageStore(level0, gid, vec4(luma));\n}",
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
					"patching_rect" : [ 41.0, 275.0, 449.0, 22.0 ],
					"text" : "jit.gpu.compute @shader rgb2luma @threads 120 68 1 @read inImg @write level0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 40.0, 670.0, 197.0, 22.0 ],
					"text" : "jit.world @floating 1 @size 960 540"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
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
		"dependency_cache" : [ 			{
				"name" : "chickens.mp4",
				"bootpath" : "C74:/media/jitter",
				"type" : "mpg4",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
