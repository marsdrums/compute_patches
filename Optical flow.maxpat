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
		"rect" : [ 34.0, 100.0, 1299.0, 893.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 1043.0, 214.649118423461914, 364.0, 267.0 ],
					"sync" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "jit.gen",
						"rect" : [ 59.0, 119.0, 600.0, 450.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 418.0, 48.0, 22.0 ],
									"text" : "hsl2rgb"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.0, 358.0, 40.0, 22.0 ],
									"text" : "* 0.01"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 385.0, 74.0, 22.0 ],
									"text" : "vec 0. 1. 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 128.0, 288.0, 43.0, 22.0 ],
									"text" : "/ twopi"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 96.0, 251.0, 51.0, 22.0 ],
									"text" : "cartopol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.0, 173.0, 42.0, 22.0 ],
									"text" : "swiz g"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 173.0, 39.0, 22.0 ],
									"text" : "swiz r"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 185.0, 173.0, 42.0, 22.0 ],
									"text" : "swiz b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 14.0, 28.0, 22.0 ],
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 146.0, 486.0, 35.0, 22.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 2,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 2 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 800.0, 310.0, 49.0, 22.0 ],
					"text" : "jit.gl.pix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-398",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6933.5, 2204.0, 478.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd0 @threads 120 68 1 @read flow0 @write flowOut0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-399",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6930.5, 2139.0, 483.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven0 @threads 120 68 1 @read flowOut0 @write flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-396",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6001.885907649993896, 2174.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd1 @threads 60 34 1 @read flow1 @write flowOut1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-397",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6001.885907649993896, 2114.0, 476.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven1 @threads 60 34 1 @read flowOut1 @write flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-394",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5022.938548564910889, 2153.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd2 @threads 30 17 1 @read flow2 @write flowOut2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-395",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5022.938548564910889, 2095.0, 476.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven2 @threads 30 17 1 @read flowOut2 @write flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-392",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4100.385925769805908, 2155.0, 465.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd3 @threads 15 9 1 @read flow3 @write flowOut3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-393",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4100.385925769805908, 2088.0, 469.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven3 @threads 15 9 1 @read flowOut3 @write flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-390",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 2163.0, 458.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd4 @threads 8 5 1 @read flow4 @write flowOut4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-391",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 2096.0, 463.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven4 @threads 8 5 1 @read flowOut4 @write flow4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-388",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2325.000069439411163, 2152.0, 458.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd5 @threads 4 3 1 @read flow5 @write flowOut5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-389",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2325.000069439411163, 2095.0, 463.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven5 @threads 4 3 1 @read flowOut5 @write flow5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-387",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 596.0, 43.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-337",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 594.0, 101.0, 133.0, 22.0 ],
					"text" : "qmetro 5000 @active 1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "jit.fx.cf.bilateral.jxs",
					"id" : "obj-291",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 904.0, 476.0, 88.0, 22.0 ],
					"text" : "jit.fx.cf.bilateral",
					"textfile" : 					{
						"filename" : "jit.fx.cf.bilateral.jxs",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-384",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6933.0, 2062.0, 478.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd0 @threads 120 68 1 @read flow0 @write flowOut0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-385",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6930.0, 1997.0, 483.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven0 @threads 120 68 1 @read flowOut0 @write flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-382",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6004.385907649993896, 2035.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd1 @threads 60 34 1 @read flow1 @write flowOut1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-383",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6004.385907649993896, 1975.0, 476.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven1 @threads 60 34 1 @read flowOut1 @write flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-380",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5025.438548564910889, 2023.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd2 @threads 30 17 1 @read flow2 @write flowOut2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-381",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5025.438548564910889, 1965.0, 476.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven2 @threads 30 17 1 @read flowOut2 @write flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-378",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4102.385925769805908, 2024.0, 465.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd3 @threads 15 9 1 @read flow3 @write flowOut3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-379",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4102.385925769805908, 1957.0, 469.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven3 @threads 15 9 1 @read flowOut3 @write flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-372",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3202.763127326965332, 2028.0, 458.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd4 @threads 8 5 1 @read flow4 @write flowOut4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-377",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3202.763127326965332, 1961.0, 463.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven4 @threads 8 5 1 @read flowOut4 @write flow4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2327.500069439411163, 2024.0, 458.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd5 @threads 4 3 1 @read flow5 @write flowOut5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-368",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2327.500069439411163, 1967.0, 463.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven5 @threads 4 3 1 @read flowOut5 @write flow5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-376",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1512.0, 115.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-375",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1714.0, 115.0, 93.0, 22.0 ],
					"text" : "loadmess 0.005"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-374",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1755.350860595703125, 186.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-373",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1548.0, 163.0, 110.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-371",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1740.350860595703125, 299.0, 245.0, 22.0 ],
					"text" : "set confidence $1 $2, set threshold $3, bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-370",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1740.350860595703125, 260.0, 95.0, 22.0 ],
					"text" : "pak 0.001 0.05 f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-369",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 199.0, 136.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-367",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 199.0, 174.0, 359.0, 22.0 ],
					"text" : "jit.grab @output_texture 1 @unique 1 @adapt 0 @dim 1920 1080"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-366",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6932.324495315551758, 1925.0, 478.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd0 @threads 120 68 1 @read flow0 @write flowOut0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-364",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6929.824495315551758, 1860.0, 483.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven0 @threads 120 68 1 @read flowOut0 @write flow0"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-365",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 7480.824495315551758, 1860.0, 199.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintEven0",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flowOut0;\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow0;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flowOut0);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flowOut0, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flow0, coord, thisFlow);\n        return;\n    }\n\n    // Altrimenti, facciamo la media pesata dei vicini\n    vec2 sum = vec2(0.0);\n    float wSum = 0.0;\n\n    for (int dy = -1; dy <= 1; ++dy) {\n        for (int dx = -1; dx <= 1; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 nFlowConf = imageLoad(flowOut0, nCoord).xyz;\n\n            // Pesi maggiori ai pixel con confidence alta\n            float weight = nFlowConf.z;\n            sum += weight * nFlowConf.xy;\n            wSum += weight;\n        }\n    }\n\n    vec2 newFlow = (wSum > 0.0) ? (sum / wSum) : vec2(0.0);\n    imageStore(flow0, coord, vec4(newFlow, wSum/9, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-363",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6004.385907649993896, 1919.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd1 @threads 60 34 1 @read flow1 @write flowOut1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-361",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6004.385907649993896, 1859.0, 476.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven1 @threads 60 34 1 @read flowOut1 @write flow1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-362",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6564.385907649993896, 1860.0, 199.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintEven1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flowOut1;\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow1;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flowOut1);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flowOut1, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flow1, coord, thisFlow);\n        return;\n    }\n\n    // Altrimenti, facciamo la media pesata dei vicini\n    vec2 sum = vec2(0.0);\n    float wSum = 0.0;\n\n    for (int dy = -1; dy <= 1; ++dy) {\n        for (int dx = -1; dx <= 1; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 nFlowConf = imageLoad(flowOut1, nCoord).xyz;\n\n            // Pesi maggiori ai pixel con confidence alta\n            float weight = nFlowConf.z;\n            sum += weight * nFlowConf.xy;\n            wSum += weight;\n        }\n    }\n\n    vec2 newFlow = (wSum > 0.0) ? (sum / wSum) : vec2(0.0);\n    imageStore(flow1, coord, vec4(newFlow, wSum/9, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-360",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5025.438548564910889, 1902.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd2 @threads 30 17 1 @read flow2 @write flowOut2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-358",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5025.438548564910889, 1843.333388268947601, 476.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven2 @threads 30 17 1 @read flowOut2 @write flow2"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-359",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5573.438548564910889, 1843.333388268947601, 199.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintEven2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow2;\nlayout(binding = 0, rgba32f) uniform readonly image2D flowOut2;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flowOut2);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flowOut2, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flow2, coord, thisFlow);\n        return;\n    }\n\n    // Altrimenti, facciamo la media pesata dei vicini\n    vec2 sum = vec2(0.0);\n    float wSum = 0.0;\n\n    for (int dy = -1; dy <= 1; ++dy) {\n        for (int dx = -1; dx <= 1; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 nFlowConf = imageLoad(flowOut2, nCoord).xyz;\n\n            // Pesi maggiori ai pixel con confidence alta\n            float weight = nFlowConf.z;\n            sum += weight * nFlowConf.xy;\n            wSum += weight;\n        }\n    }\n\n    vec2 newFlow = (wSum > 0.0) ? (sum / wSum) : vec2(0.0);\n    imageStore(flow2, coord, vec4(newFlow, wSum/9, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-357",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4104.385925769805908, 1910.0, 465.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd3 @threads 15 9 1 @read flow3 @write flowOut3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-355",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4104.385925769805908, 1843.333388268947601, 469.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven3 @threads 15 9 1 @read flowOut3 @write flow3"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-356",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4603.385925769805908, 1843.333388268947601, 199.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintEven3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform writeonly image2D flow3;\nlayout(binding = 1, rgba32f) uniform readonly image2D flowOut3;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flowOut3);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flowOut3, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flow3, coord, thisFlow);\n        return;\n    }\n\n    // Altrimenti, facciamo la media pesata dei vicini\n    vec2 sum = vec2(0.0);\n    float wSum = 0.0;\n\n    for (int dy = -1; dy <= 1; ++dy) {\n        for (int dx = -1; dx <= 1; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 nFlowConf = imageLoad(flowOut3, nCoord).xyz;\n\n            // Pesi maggiori ai pixel con confidence alta\n            float weight = nFlowConf.z;\n            sum += weight * nFlowConf.xy;\n            wSum += weight;\n        }\n    }\n\n    vec2 newFlow = (wSum > 0.0) ? (sum / wSum) : vec2(0.0);\n    imageStore(flow3, coord, vec4(newFlow, wSum/9, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-354",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1910.0, 458.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd4 @threads 8 5 1 @read flow4 @write flowOut4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-348",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1843.333388268947601, 463.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven4 @threads 8 5 1 @read flowOut4 @write flow4"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-353",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3699.263127326965332, 1843.333388268947601, 199.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintEven4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform writeonly image2D flow4;\nlayout(binding = 1, rgba32f) uniform readonly image2D flowOut4;\n\n// Kernel Gaussiano 5×5 (simmetrico)\nconst float kernel[5][5] = float[5][5](\n    float[5](1.0, 4.0, 6.0, 4.0, 1.0),\n    float[5](4.0,16.0,24.0,16.0,4.0),\n    float[5](6.0,24.0,36.0,24.0,6.0),\n    float[5](4.0,16.0,24.0,16.0,4.0),\n    float[5](1.0, 4.0, 6.0, 4.0, 1.0)\n);\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flowOut4);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flowOut4, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flow4, coord, thisFlow);\n        return;\n    }\n\n    vec2 sumFlow = vec2(0.0);\n    float sumWeights = 0.0;\n    float sumConf = 0.0;\n\n    for (int dy = -2; dy <= 2; ++dy) {\n        for (int dx = -2; dx <= 2; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n\n            vec4 nVal = imageLoad(flowOut4, nCoord); // r,g = flow, b = confidence\n            vec2 nFlow = nVal.xy;\n            float nConf = nVal.b;\n\n            float spatialWeight = kernel[dy + 2][dx + 2];\n            float combinedWeight = spatialWeight * nConf;\n\n            sumFlow += combinedWeight * nFlow;\n            sumConf += combinedWeight * nConf;\n            sumWeights += combinedWeight;\n        }\n    }\n\n    vec2 newFlow = (sumWeights > 0.0) ? (sumFlow / sumWeights) : vec2(0.0);\n    float newConf = (sumWeights > 0.0) ? (sumConf / sumWeights) : 0.0;\n\n    imageStore(flow4, coord, vec4(newFlow, newConf, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-352",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2330.000069439411163, 1900.666723310947418, 458.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd5 @threads 4 3 1 @read flow5 @write flowOut5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-350",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2330.000069439411163, 1843.333388268947601, 463.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintEven5 @threads 4 3 1 @read flowOut5 @write flow5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-351",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2824.000084161758423, 1843.333388268947601, 199.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintEven5",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform writeonly image2D flow5;\nlayout(binding = 1, rgba32f) uniform readonly image2D flowOut5;\n\n// Kernel Gaussiano 5×5 (simmetrico)\nconst float kernel[5][5] = float[5][5](\n    float[5](1.0, 4.0, 6.0, 4.0, 1.0),\n    float[5](4.0,16.0,24.0,16.0,4.0),\n    float[5](6.0,24.0,36.0,24.0,6.0),\n    float[5](4.0,16.0,24.0,16.0,4.0),\n    float[5](1.0, 4.0, 6.0, 4.0, 1.0)\n);\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flowOut5);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flowOut5, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flow5, coord, thisFlow);\n        return;\n    }\n\n    vec2 sumFlow = vec2(0.0);\n    float sumWeights = 0.0;\n    float sumConf = 0.0;\n\n    for (int dy = -2; dy <= 2; ++dy) {\n        for (int dx = -2; dx <= 2; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n\n            vec4 nVal = imageLoad(flowOut5, nCoord); // r,g = flow, b = confidence\n            vec2 nFlow = nVal.xy;\n            float nConf = nVal.b;\n\n            float spatialWeight = kernel[dy + 2][dx + 2];\n            float combinedWeight = spatialWeight * nConf;\n\n            sumFlow += combinedWeight * nFlow;\n            sumConf += combinedWeight * nConf;\n            sumWeights += combinedWeight;\n        }\n    }\n\n    vec2 newFlow = (sumWeights > 0.0) ? (sumFlow / sumWeights) : vec2(0.0);\n    float newConf = (sumWeights > 0.0) ? (sumConf / sumWeights) : 0.0;\n\n    imageStore(flow5, coord, vec4(newFlow, newConf, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-349",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1207.0, 118.0, 155.0, 47.0 ],
					"text" : "add controllable confidence\niterate inpainting more times"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.0, 1726.0, 396.0, 22.0 ],
					"text" : "jit.gpu.image @name flowOut5 @format RGBA32_FLOAT @dim 60 34 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.0, 1695.0, 402.0, 22.0 ],
					"text" : "jit.gpu.image @name flowOut4 @format RGBA32_FLOAT @dim 120 68 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-338",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.0, 1667.0, 409.0, 22.0 ],
					"text" : "jit.gpu.image @name flowOut3 @format RGBA32_FLOAT @dim 240 135 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-340",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.0, 1640.0, 409.0, 22.0 ],
					"text" : "jit.gpu.image @name flowOut2 @format RGBA32_FLOAT @dim 480 270 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-343",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.0, 1611.0, 409.0, 22.0 ],
					"text" : "jit.gpu.image @name flowOut1 @format RGBA32_FLOAT @dim 960 540 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-346",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.0, 1582.0, 422.0, 22.0 ],
					"text" : "jit.gpu.image @name flowOut0 @format RGBA32_FLOAT @dim 1920 1080 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6929.824495315551758, 1804.661059975624084, 478.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd0 @threads 120 68 1 @read flow0 @write flowOut0"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 7481.0, 1804.661059975624084, 194.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintOdd0",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow0;\nlayout(binding = 1, rgba32f) uniform writeonly image2D flowOut0;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow0);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flow0, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flowOut0, coord, thisFlow);\n        return;\n    }\n\n    // Altrimenti, facciamo la media pesata dei vicini\n    vec2 sum = vec2(0.0);\n    float wSum = 0.0;\n\n    for (int dy = -1; dy <= 1; ++dy) {\n        for (int dx = -1; dx <= 1; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 nFlowConf = imageLoad(flow0, nCoord).xyz;\n\n            // Pesi maggiori ai pixel con confidence alta\n            float weight = nFlowConf.z;\n            sum += weight * nFlowConf.xy;\n            wSum += weight;\n        }\n    }\n\n    vec2 newFlow = (wSum > 0.0) ? (sum / wSum) : vec2(0.0);\n    imageStore(flowOut0, coord, vec4(newFlow, wSum/9, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6004.385907649993896, 1802.678554236888885, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd1 @threads 60 34 1 @read flow1 @write flowOut1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6564.534648954868317, 1802.906912267208099, 194.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintOdd1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow1;\nlayout(binding = 1, rgba32f) uniform writeonly image2D flowOut1;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow1);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flow1, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flowOut1, coord, thisFlow);\n        return;\n    }\n\n    // Altrimenti, facciamo la media pesata dei vicini\n    vec2 sum = vec2(0.0);\n    float wSum = 0.0;\n\n    for (int dy = -1; dy <= 1; ++dy) {\n        for (int dx = -1; dx <= 1; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 nFlowConf = imageLoad(flow1, nCoord).xyz;\n\n            // Pesi maggiori ai pixel con confidence alta\n            float weight = nFlowConf.z;\n            sum += weight * nFlowConf.xy;\n            wSum += weight;\n        }\n    }\n\n    vec2 newFlow = (wSum > 0.0) ? (sum / wSum) : vec2(0.0);\n    imageStore(flowOut1, coord, vec4(newFlow, wSum/9, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5025.438548564910889, 1777.678554475307465, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd2 @threads 30 17 1 @read flow2 @write flowOut2"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5573.684157371520996, 1777.678554475307465, 194.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintOdd2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow2;\nlayout(binding = 1, rgba32f) uniform writeonly image2D flowOut2;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow2);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flow2, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flowOut2, coord, thisFlow);\n        return;\n    }\n\n    // Altrimenti, facciamo la media pesata dei vicini\n    vec2 sum = vec2(0.0);\n    float wSum = 0.0;\n\n    for (int dy = -1; dy <= 1; ++dy) {\n        for (int dx = -1; dx <= 1; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 nFlowConf = imageLoad(flow2, nCoord).xyz;\n\n            // Pesi maggiori ai pixel con confidence alta\n            float weight = nFlowConf.z;\n            sum += weight * nFlowConf.xy;\n            wSum += weight;\n        }\n    }\n\n    vec2 newFlow = (wSum > 0.0) ? (sum / wSum) : vec2(0.0);\n    imageStore(flowOut2, coord, vec4(newFlow, wSum/9, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4104.385925769805908, 1777.678554475307465, 465.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd3 @threads 15 9 1 @read flow3 @write flowOut3"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4603.399078905582428, 1777.678554475307465, 194.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintOdd3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow3;\nlayout(binding = 1, rgba32f) uniform writeonly image2D flowOut3;\n\nvoid main() {\n\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow3);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flow3, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flowOut3, coord, thisFlow);\n        return;\n    }\n\n    // Altrimenti, facciamo la media pesata dei vicini\n    vec2 sum = vec2(0.0);\n    float wSum = 0.0;\n\n    for (int dy = -1; dy <= 1; ++dy) {\n        for (int dx = -1; dx <= 1; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 nFlowConf = imageLoad(flow3, nCoord).xyz;\n\n            // Pesi maggiori ai pixel con confidence alta\n            float weight = nFlowConf.z;\n            sum += weight * nFlowConf.xy;\n            wSum += weight;\n        }\n    }\n\n    vec2 newFlow = (wSum > 0.0) ? (sum / wSum) : vec2(0.0);\n    imageStore(flowOut3, coord, vec4(newFlow, wSum/9, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1777.678554475307465, 458.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd4 @threads 8 5 1 @read flow4 @write flowOut4"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3699.013122618198395, 1777.678554475307465, 194.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintOdd4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow4;\nlayout(binding = 1, rgba32f) uniform writeonly image2D flowOut4;\n\n// Kernel Gaussiano 5×5 (simmetrico)\nconst float kernel[5][5] = float[5][5](\n    float[5](1.0, 4.0, 6.0, 4.0, 1.0),\n    float[5](4.0,16.0,24.0,16.0,4.0),\n    float[5](6.0,24.0,36.0,24.0,6.0),\n    float[5](4.0,16.0,24.0,16.0,4.0),\n    float[5](1.0, 4.0, 6.0, 4.0, 1.0)\n);\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow4);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flow4, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flowOut4, coord, thisFlow);\n        return;\n    }\n\n    vec2 sumFlow = vec2(0.0);\n    float sumWeights = 0.0;\n    float sumConf = 0.0;\n\n    for (int dy = -2; dy <= 2; ++dy) {\n        for (int dx = -2; dx <= 2; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n\n            vec4 nVal = imageLoad(flow4, nCoord); // r,g = flow, b = confidence\n            vec2 nFlow = nVal.xy;\n            float nConf = nVal.b;\n\n            float spatialWeight = kernel[dy + 2][dx + 2];\n            float combinedWeight = spatialWeight * nConf;\n\n            sumFlow += combinedWeight * nFlow;\n            sumConf += combinedWeight * nConf;\n            sumWeights += combinedWeight;\n        }\n    }\n\n    vec2 newFlow = (sumWeights > 0.0) ? (sumFlow / sumWeights) : vec2(0.0);\n    float newConf = (sumWeights > 0.0) ? (sumConf / sumWeights) : 0.0;\n\n    imageStore(flowOut4, coord, vec4(newFlow, newConf, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1782.140333652496338, 458.0, 22.0 ],
					"text" : "jit.gpu.compute @shader inpaintOdd5 @threads 4 3 1 @read flow5 @write flowOut5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2823.684183597564697, 1782.140333652496338, 194.0, 22.0 ],
					"text" : "jit.gpu.shader @name inpaintOdd5",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow5;\nlayout(binding = 1, rgba32f) uniform writeonly image2D flowOut5;\n\n// Kernel Gaussiano 5×5 (simmetrico)\nconst float kernel[5][5] = float[5][5](\n    float[5](1.0, 4.0, 6.0, 4.0, 1.0),\n    float[5](4.0,16.0,24.0,16.0,4.0),\n    float[5](6.0,24.0,36.0,24.0,6.0),\n    float[5](4.0,16.0,24.0,16.0,4.0),\n    float[5](1.0, 4.0, 6.0, 4.0, 1.0)\n);\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow5);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Confidence corrente\n    vec4 thisFlow = imageLoad(flow5, coord);\n    float centerConf = thisFlow.b;\n\n    // Se la confidence è già buona, non toccare il flow\n    if (centerConf > 0.75) {\n        imageStore(flowOut5, coord, thisFlow);\n        return;\n    }\n\n    vec2 sumFlow = vec2(0.0);\n    float sumWeights = 0.0;\n    float sumConf = 0.0;\n\n    for (int dy = -2; dy <= 2; ++dy) {\n        for (int dx = -2; dx <= 2; ++dx) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 nCoord = clamp(coord + offset, ivec2(0), size - 1);\n\n            vec4 nVal = imageLoad(flow5, nCoord); // r,g = flow, b = confidence\n            vec2 nFlow = nVal.xy;\n            float nConf = nVal.b;\n\n            float spatialWeight = kernel[dy + 2][dx + 2];\n            float combinedWeight = spatialWeight * nConf;\n\n            sumFlow += combinedWeight * nFlow;\n            sumConf += combinedWeight * nConf;\n            sumWeights += combinedWeight;\n        }\n    }\n\n    vec2 newFlow = (sumWeights > 0.0) ? (sumFlow / sumWeights) : vec2(0.0);\n    float newConf = (sumWeights > 0.0) ? (sumConf / sumWeights) : 0.0;\n\n    imageStore(flowOut5, coord, vec4(newFlow, newConf, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-347",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 492.666662216186523, 239.719295978546143, 91.0, 20.0 ],
					"text" : "<- 3) MOSH! ->"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-345",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 121.052630424499512, 274.491225242614746, 117.0, 20.0 ],
					"text" : "2) drop some videos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-344",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 99.999999046325684, 57.263157367706299, 114.0, 20.0 ],
					"text" : "1) Enable rendering"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-342",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 814.035079956054688, 611.403502941131592, 201.0, 22.0 ],
					"text" : "jit.gl.videoplane @transform_reset 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-341",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1967.0, 159.0, 58.0, 20.0 ],
					"text" : "threshold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-292",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1816.350860595703125, 115.0, 100.0, 22.0 ],
					"text" : "loadmess 0.0001"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-296",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1816.350860595703125, 158.0, 127.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-335",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 1740.350860595703125, 345.614031791687012, 98.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict trail_settings"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-336",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1740.350860595703125, 382.456136703491211, 213.0, 22.0 ],
					"text" : "jit.gpu.constants @name flow_settings"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-328",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6929.824495315551758, 1722.807001113891602, 507.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow0 @threads 120 68 1 @read gradient0 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-329",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6849.999934673309326, 1722.807001113891602, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-330",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6929.824495315551758, 1676.315773487091064, 573.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad0 @threads 120 68 1 @read level0 @write gradient0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-331",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6875.438530921936035, 1677.192966461181641, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-332",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6880.701688766479492, 1624.56138801574707, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-333",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6929.824495315551758, 1623.684195041656494, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap0 @threads 120 68 1 @read flow0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-334",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7135.087651252746582, 1594.73682689666748, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-321",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6932.456074237823486, 1531.578932762145996, 507.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow0 @threads 120 68 1 @read gradient0 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-322",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6852.631513595581055, 1531.578932762145996, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-323",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6932.456074237823486, 1485.087705135345459, 573.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad0 @threads 120 68 1 @read level0 @write gradient0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-324",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6878.070109844207764, 1486.842091083526611, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-325",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6883.333267688751221, 1433.333319664001465, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-326",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6932.456074237823486, 1432.456126689910889, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap0 @threads 120 68 1 @read flow0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-327",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7136.842037200927734, 1403.508758544921875, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-314",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6935.087653160095215, 1356.140337944030762, 507.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow0 @threads 120 68 1 @read gradient0 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-315",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6854.385899543762207, 1356.140337944030762, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-316",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6935.087653160095215, 1310.526303291320801, 573.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad0 @threads 120 68 1 @read level0 @write gradient0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-317",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6880.701688766479492, 1311.403496265411377, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-318",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6885.964846611022949, 1258.771917819976807, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-319",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6935.087653160095215, 1257.89472484588623, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap0 @threads 120 68 1 @read flow0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-320",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7139.473616123199463, 1228.947356700897217, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-307",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6936.842039108276367, 1115.789463043212891, 507.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow0 @threads 120 68 1 @read gradient0 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-308",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6857.017478466033936, 1115.789463043212891, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-309",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6936.842039108276367, 1069.298235416412354, 573.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad0 @threads 120 68 1 @read level0 @write gradient0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-310",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6883.333267688751221, 1070.17542839050293, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-311",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6888.596425533294678, 1017.543849945068359, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-312",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6936.842039108276367, 1016.666656970977783, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap0 @threads 120 68 1 @read flow0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-313",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7142.105195045471191, 987.71928882598877, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-297",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 7545.61396312713623, 909.64911413192749, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow0",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient0;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow0; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n    vec2 confidence;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient0);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient0, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow0, coord).xy;\n    float confidence = smoothstep(settings.confidence.x, settings.confidence.y, det);\n    delta *= confidence;\n    imageStore(flow0, coord, vec4(currentFlow + delta, confidence, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-298",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6942.105196952819824, 909.64911413192749, 507.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow0 @threads 120 68 1 @read gradient0 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-299",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6862.280636310577393, 909.64911413192749, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-300",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 7545.61396312713623, 863.157886505126953, 160.0, 22.0 ],
					"text" : "jit.gpu.shader @name grad0",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\n// Immagini in scala di grigi (canale R)\nlayout(binding = 0, rgba32f) uniform readonly image2D level0;        // Frame precedente\nlayout(binding = 1, rgba32f) uniform image2D prevlevel0; // Frame corrente warpat\nlayout(binding = 2, rgba32f) uniform image2D gradient0;  // Output: (Ix, Iy, It, 0)\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level0);\n\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Coordinate dei pixel vicini, con gestione dei bordi\n    int x0 = max(coord.x - 1, 0);\n    int x1 = min(coord.x + 1, size.x - 1);\n    int y0 = max(coord.y - 1, 0);\n    int y1 = min(coord.y + 1, size.y - 1);\n\n    // Lettura intensità frame0\n    float I0_left   = imageLoad(level0, ivec2(x0, coord.y)).r;\n    float I0_right  = imageLoad(level0, ivec2(x1, coord.y)).r;\n    float I0_top    = imageLoad(level0, ivec2(coord.x, y0)).r;\n    float I0_bottom = imageLoad(level0, ivec2(coord.x, y1)).r;\n    float I0_center = imageLoad(level0, coord).r;\n\n    // Lettura intensità frame1 warped\n    float I1_left   = imageLoad(prevlevel0, ivec2(x0, coord.y)).g;\n    float I1_right  = imageLoad(prevlevel0, ivec2(x1, coord.y)).g;\n    float I1_top    = imageLoad(prevlevel0, ivec2(coord.x, y0)).g;\n    float I1_bottom = imageLoad(prevlevel0, ivec2(coord.x, y1)).g;\n    float I1_center = imageLoad(prevlevel0, coord).g;\n\n    // Calcolo dei gradienti spaziali mediati\n    float Ix = 0.25 * ((I0_right - I0_left) + (I1_right - I1_left));\n    float Iy = 0.25 * ((I0_bottom - I0_top) + (I1_bottom - I1_top));\n\n    // Calcolo gradiente temporale\n    float It = I1_center - I0_center;\n\n    imageStore(gradient0, coord, vec4(Ix, Iy, It, 0.0));\n\n    //move wrapped to the fist plane\n    //float wrapped = imageLoad(prevlevel0, coord).g;\n    //imageStore(prevlevel0, coord, vec4(wrapped));\n\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-301",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6942.105196952819824, 863.157886505126953, 573.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad0 @threads 120 68 1 @read level0 @write gradient0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-302",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6888.596425533294678, 864.912272453308105, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-303",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6892.982390403747559, 811.403501033782959, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-304",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 7545.61396312713623, 810.526308059692383, 162.0, 22.0 ],
					"text" : "jit.gpu.shader @name wrap0",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow0;\nlayout(binding = 1, rgba32f) uniform image2D prevlevel0;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow0);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    vec2 displacement = imageLoad(flow0, gid).xy;\n    vec2 wrappedCoord = clamp(vec2(gid) + displacement, vec2(0.0), vec2(size) - vec2(1.0));\n\n    ivec2 iuv = ivec2(floor(wrappedCoord));\n    vec2 f = fract(wrappedCoord);\n\n    float a = imageLoad(prevlevel0, iuv).r;                   \n    float b = imageLoad(prevlevel0, iuv + ivec2(1, 0)).r;     \n    float c = imageLoad(prevlevel0, iuv + ivec2(0, 1)).r;   \n    float d = imageLoad(prevlevel0, iuv + ivec2(1, 1)).r;     \n\n    float ab = mix(a, b, f.x); \n    float cd = mix(c, d, f.x); \n    float warped = mix(ab, cd, f.y); \n\n    float original = imageLoad(prevlevel0, gid).r;\n    imageStore(prevlevel0, gid, vec4(original, warped, 0, 0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-305",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6942.105196952819824, 810.526308059692383, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap0 @threads 120 68 1 @read flow0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-306",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7147.368352890014648, 781.578939914703369, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-294",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 585.087713718414307, 142.982454776763916, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-295",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 466.666662216186523, 237.719295978546143, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-293",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 354.385961532592773, 395.614031314849854, 344.0, 22.0 ],
					"text" : "jit.gl.texture @dim 1920 1080 @adapt 0 @type float32 @thru 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-284",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6004.385907649993896, 1747.368404388427734, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow1 @threads 60 34 1 @read gradient1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-285",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5924.561347007751465, 1747.368404388427734, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-286",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6004.385907649993896, 1701.754369735717773, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad1 @threads 60 34 1 @read level1 @write gradient1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-287",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5949.999943256378174, 1702.63156270980835, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-288",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5955.263101100921631, 1649.122791290283203, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-289",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6004.385907649993896, 1648.245598316192627, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap1 @threads 60 34 1 @read flow1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-290",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6209.649063587188721, 1619.298230171203613, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-277",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6007.017486572265625, 1536.842090606689453, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow1 @threads 60 34 1 @read gradient1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-278",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5926.315732955932617, 1536.842090606689453, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-279",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6007.017486572265625, 1490.350862979888916, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad1 @threads 60 34 1 @read level1 @write gradient1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-280",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5952.631522178649902, 1491.228055953979492, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-281",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5957.894680023193359, 1438.596477508544922, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-282",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6007.017486572265625, 1437.719284534454346, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap1 @threads 60 34 1 @read flow1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-283",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6211.403449535369873, 1408.771916389465332, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-270",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5025.438548564910889, 1709.649106502532959, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow2 @threads 30 17 1 @read gradient2 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-271",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4945.613987922668457, 1709.649106502532959, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-272",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5025.438548564910889, 1663.157878875732422, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad2 @threads 30 17 1 @read level2 @write gradient2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-273",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4971.052584171295166, 1664.912264823913574, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-274",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4976.315742015838623, 1611.403493404388428, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-275",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5025.438548564910889, 1610.526300430297852, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap2 @threads 30 17 1 @read flow2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-276",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5229.824511528015137, 1581.578932285308838, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-263",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5028.070127487182617, 1478.947354316711426, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow2 @threads 30 17 1 @read gradient2 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-264",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4947.368373870849609, 1478.947354316711426, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-265",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5028.070127487182617, 1432.456126689910889, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad2 @threads 30 17 1 @read level2 @write gradient2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-266",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4973.684163093566895, 1433.333319664001465, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-267",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4978.947320938110352, 1380.701741218566895, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-268",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5028.070127487182617, 1379.824548244476318, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap2 @threads 30 17 1 @read flow2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-269",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5232.456090450286865, 1350.877180099487305, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-256",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4104.385925769805908, 1695.61401891708374, 493.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow3 @threads 15 9 1 @read gradient3 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-257",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4024.561365127563477, 1695.61401891708374, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-258",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4104.385925769805908, 1649.122791290283203, 560.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad3 @threads 15 9 1 @read level3 @write gradient3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-259",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4050.877154350280762, 1650.877177238464355, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-260",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4056.140312194824219, 1597.368405818939209, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-261",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4104.385925769805908, 1596.491212844848633, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap3 @threads 15 9 1 @read flow3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-262",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4309.649081707000732, 1567.543844699859619, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-249",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4107.017504692077637, 1496.491213798522949, 493.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow3 @threads 15 9 1 @read gradient3 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-250",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4027.192944049835205, 1496.491213798522949, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-251",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4107.017504692077637, 1450.877179145812988, 560.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad3 @threads 15 9 1 @read level3 @write gradient3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-252",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4053.50873327255249, 1451.754372119903564, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-253",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4057.894698143005371, 1398.245600700378418, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-254",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4107.017504692077637, 1397.368407726287842, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap3 @threads 15 9 1 @read flow3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-255",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4312.280660629272461, 1368.421039581298828, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-245",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.357112288475037, 1690.178555309772491, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow4 @threads 8 5 1 @read gradient4 @readwrite flow4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-246",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.357112288475037, 1644.642841458320618, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad4 @threads 8 5 1 @read level4 @write gradient4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-247",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.357112288475037, 1591.964270532131195, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap4 @threads 8 5 1 @read flow4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-248",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3410.714253187179565, 1561.607127964496613, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-241",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1506.140336513519287, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow4 @threads 8 5 1 @read gradient4 @readwrite flow4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-242",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1460.526301860809326, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad4 @threads 8 5 1 @read level4 @write gradient4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-243",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1407.894723415374756, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap4 @threads 8 5 1 @read flow4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-244",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3410.526283264160156, 1378.947355270385742, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-237",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1636.842089653015137, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow5 @threads 4 3 1 @read gradient5 @readwrite flow5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-238",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1590.3508620262146, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad5 @threads 4 3 1 @read level5 @write gradient5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-239",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1537.719283580780029, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap5 @threads 4 3 1 @read flow5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-240",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2535.087695121765137, 1508.771915435791016, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-233",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1453.508758068084717, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow5 @threads 4 3 1 @read gradient5 @readwrite flow5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-234",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1407.894723415374756, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad5 @threads 4 3 1 @read level5 @write gradient5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-235",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1354.385951995849609, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap5 @threads 4 3 1 @read flow5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-236",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2535.087695121765137, 1325.438583850860596, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-232",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 581.578941822052002, 349.122803688049316, 205.0, 22.0 ],
					"text" : "jit.matrix 4 char 1920 1080 @interp 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-231",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "jit.gen",
						"rect" : [ 59.0, 119.0, 600.0, 450.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 14.0, 28.0, 22.0 ],
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 176.0, 418.0, 35.0, 22.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 581.578941822052002, 450.877188682556152, 49.0, 22.0 ],
					"text" : "jit.gl.pix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-230",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "jit.gen",
						"rect" : [ 59.0, 119.0, 1186.0, 450.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 453.0, 393.0, 35.0, 22.0 ],
									"text" : "/ dim"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 453.0, 360.0, 36.0, 22.0 ],
									"text" : "+ 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 453.0, 326.0, 32.0, 22.0 ],
									"text" : "floor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 453.0, 291.0, 36.0, 22.0 ],
									"text" : "* dim"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 439.0, 217.0, 46.0, 22.0 ],
									"text" : "+ norm"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 439.0, 86.0, 46.0, 22.0 ],
									"text" : "swiz rg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 439.0, 143.0, 35.0, 22.0 ],
									"text" : "/ dim"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 187.0, 47.0, 22.0 ],
									"text" : "sample"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 47.0, 28.0, 22.0 ],
									"text" : "in 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 162.0, 14.0, 28.0, 22.0 ],
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 176.0, 418.0, 35.0, 22.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 551.578941822052002, 500.0, 49.0, 22.0 ],
					"text" : "jit.gl.pix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 585.087713718414307, 237.719295978546143, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 578.070169925689697, 283.333330631256104, 119.0, 22.0 ],
					"text" : "jit.noise 4 char 30 17"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 42.982455730438232, 540.350872039794922, 298.0, 22.0 ],
					"text" : "jit.gl.texture @dim 1920 1080 @adapt 0 @type float32"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6009.649065494537354, 1357.894723892211914, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow1 @threads 60 34 1 @read gradient1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-224",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5928.947311878204346, 1357.894723892211914, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-225",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6009.649065494537354, 1311.403496265411377, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad1 @threads 60 34 1 @read level1 @write gradient1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-226",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5955.263101100921631, 1312.280689239501953, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5960.526258945465088, 1259.649110794067383, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6009.649065494537354, 1258.771917819976807, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap1 @threads 60 34 1 @read flow1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-229",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6214.035028457641602, 1229.824549674987793, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-216",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6009.649065494537354, 1129.824550628662109, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow1 @threads 60 34 1 @read gradient1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-217",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5928.947311878204346, 1129.824550628662109, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-218",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6009.649065494537354, 1083.333323001861572, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad1 @threads 60 34 1 @read level1 @write gradient1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5955.263101100921631, 1084.210515975952148, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5960.526258945465088, 1031.578937530517578, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-221",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6009.649065494537354, 1030.701744556427002, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap1 @threads 60 34 1 @read flow1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6214.035028457641602, 1001.754376411437988, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5029.82451343536377, 1291.228057861328125, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow2 @threads 30 17 1 @read gradient2 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-210",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4949.999952793121338, 1291.228057861328125, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-211",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5029.82451343536377, 1245.614023208618164, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad2 @threads 30 17 1 @read level2 @write gradient2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4976.315742015838623, 1246.49121618270874, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-213",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4981.57889986038208, 1193.85963773727417, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-214",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5029.82451343536377, 1192.105251789093018, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap2 @threads 30 17 1 @read flow2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-215",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5235.087669372558594, 1163.157883644104004, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5032.456092357635498, 1094.736831665039062, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow2 @threads 30 17 1 @read gradient2 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4952.631531715393066, 1094.736831665039062, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5032.456092357635498, 1048.245604038238525, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad2 @threads 30 17 1 @read level2 @write gradient2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-205",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4978.947320938110352, 1049.122797012329102, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4983.333285808563232, 996.491218566894531, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5032.456092357635498, 995.614025592803955, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap2 @threads 30 17 1 @read flow2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5237.719248294830322, 966.666657447814941, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4109.649083614349365, 1308.771917343139648, 493.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow3 @threads 15 9 1 @read gradient3 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4029.824522972106934, 1308.771917343139648, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4109.649083614349365, 1262.280689716339111, 560.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad3 @threads 15 9 1 @read level3 @write gradient3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4056.140312194824219, 1263.157882690429688, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4060.5262770652771, 1210.526304244995117, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4109.649083614349365, 1209.649111270904541, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap3 @threads 15 9 1 @read flow3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4314.912239551544189, 1180.701743125915527, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4109.649083614349365, 1105.263147354125977, 493.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow3 @threads 15 9 1 @read gradient3 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4029.824522972106934, 1105.263147354125977, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4109.649083614349365, 1059.649112701416016, 560.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad3 @threads 15 9 1 @read level3 @write gradient3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4056.140312194824219, 1060.526305675506592, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4060.5262770652771, 1007.894727230072021, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4109.649083614349365, 1006.140341281890869, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap3 @threads 15 9 1 @read flow3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4314.912239551544189, 977.192973136901855, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1317.54384708404541, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow4 @threads 8 5 1 @read gradient4 @readwrite flow4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1271.929812431335449, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad4 @threads 8 5 1 @read level4 @write gradient4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-186",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1218.421041011810303, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap4 @threads 8 5 1 @read flow4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3410.526283264160156, 1189.473672866821289, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1105.263147354125977, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow4 @threads 8 5 1 @read gradient4 @readwrite flow4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1059.649112701416016, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad4 @threads 8 5 1 @read level4 @write gradient4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3205.263127326965332, 1006.140341281890869, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap4 @threads 8 5 1 @read flow4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3410.526283264160156, 977.192973136901855, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1264.91226863861084, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow5 @threads 4 3 1 @read gradient5 @readwrite flow5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1218.421041011810303, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad5 @threads 4 3 1 @read level5 @write gradient5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1165.789462566375732, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap5 @threads 4 3 1 @read flow5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2535.087695121765137, 1136.842094421386719, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1087.719287872314453, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow5 @threads 4 3 1 @read gradient5 @readwrite flow5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 1041.228060245513916, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad5 @threads 4 3 1 @read level5 @write gradient5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 988.596481800079346, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap5 @threads 4 3 1 @read flow5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2535.087695121765137, 959.649113655090332, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6558.385907649993896, 2258.0, 213.0, 22.0 ],
					"text" : "jit.gpu.shader @name upsampleFlow1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flowOut1; // livello L+1\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow0; // livello L\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 sizeHigh = imageSize(flow0);\n    ivec2 sizeLow = imageSize(flowOut1);\n    if (coord.x >= sizeHigh.x || coord.y >= sizeHigh.y) return;\n\n    // Coord corrispondente nel livello più piccolo\n    vec2 uvLow = vec2(coord) / 2.0;\n\n    uvLow = clamp(uvLow, vec2(0.0), vec2(sizeLow - 1));\n    ivec2 iuv = ivec2(floor(uvLow));\n    vec2 f = fract(uvLow);\n\n    vec2 a = imageLoad(flowOut1, iuv).xy;\n    vec2 b = imageLoad(flowOut1, iuv + ivec2(1, 0)).xy;\n    vec2 c = imageLoad(flowOut1, iuv + ivec2(0, 1)).xy;\n    vec2 d = imageLoad(flowOut1, iuv + ivec2(1, 1)).xy;\n\n    vec2 ab = mix(a, b, f.x);\n    vec2 cd = mix(c, d, f.x);\n    vec2 upsampledFlow = mix(ab, cd, f.y);\n\n\n    //vec2 upsampledFlow = bilinearSampleVec2(flowLowRes, uvLow, sizeLow);\n\n    // Scala il flow (perché 1 px in low = 2 px in high)\n    upsampledFlow *= 2.0;\n\n    imageStore(flow0, coord, vec4(upsampledFlow, 0.0, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6004.385907649993896, 2258.0, 497.0, 22.0 ],
					"text" : "jit.gpu.compute @shader upsampleFlow1 @threads 120 68 1 @read flowOut1 @write flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5912.385907649993896, 2259.0, 85.0, 20.0 ],
					"text" : "upsample flow"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6585.964849472045898, 909.64911413192749, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient1;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow1; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n    vec2 confidence;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient1);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient1, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow1, coord).xy;\n    float confidence = smoothstep(settings.confidence.x, settings.confidence.y, det);\n    delta *= confidence;\n    imageStore(flow1, coord, vec4(currentFlow + delta, confidence, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6009.649065494537354, 909.64911413192749, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow1 @threads 60 34 1 @read gradient1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5928.947311878204346, 909.64911413192749, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-161",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6585.964849472045898, 863.157886505126953, 160.0, 22.0 ],
					"text" : "jit.gpu.shader @name grad1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\n// Immagini in scala di grigi (canale R)\nlayout(binding = 0, rgba32f) uniform readonly image2D level1;        // Frame precedente\nlayout(binding = 1, rgba32f) uniform image2D prevlevel1; // Frame corrente warpat\nlayout(binding = 2, rgba32f) uniform image2D gradient1;  // Output: (Ix, Iy, It, 0)\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level1);\n\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Coordinate dei pixel vicini, con gestione dei bordi\n    int x0 = max(coord.x - 1, 0);\n    int x1 = min(coord.x + 1, size.x - 1);\n    int y0 = max(coord.y - 1, 0);\n    int y1 = min(coord.y + 1, size.y - 1);\n\n    // Lettura intensità frame0\n    float I0_left   = imageLoad(level1, ivec2(x0, coord.y)).r;\n    float I0_right  = imageLoad(level1, ivec2(x1, coord.y)).r;\n    float I0_top    = imageLoad(level1, ivec2(coord.x, y0)).r;\n    float I0_bottom = imageLoad(level1, ivec2(coord.x, y1)).r;\n    float I0_center = imageLoad(level1, coord).r;\n\n    // Lettura intensità frame1 warped\n    float I1_left   = imageLoad(prevlevel1, ivec2(x0, coord.y)).g;\n    float I1_right  = imageLoad(prevlevel1, ivec2(x1, coord.y)).g;\n    float I1_top    = imageLoad(prevlevel1, ivec2(coord.x, y0)).g;\n    float I1_bottom = imageLoad(prevlevel1, ivec2(coord.x, y1)).g;\n    float I1_center = imageLoad(prevlevel1, coord).g;\n\n    // Calcolo dei gradienti spaziali mediati\n    float Ix = 0.25 * ((I0_right - I0_left) + (I1_right - I1_left));\n    float Iy = 0.25 * ((I0_bottom - I0_top) + (I1_bottom - I1_top));\n\n    // Calcolo gradiente temporale\n    float It = I1_center - I0_center;\n\n    imageStore(gradient1, coord, vec4(Ix, Iy, It, 0.0));\n\n    //move wrapped to the fist plane\n    //float wrapped = imageLoad(prevlevel1, coord).g;\n    //imageStore(prevlevel1, coord, vec4(wrapped));\n\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6009.649065494537354, 863.157886505126953, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad1 @threads 60 34 1 @read level1 @write gradient1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5955.263101100921631, 864.912272453308105, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5960.526258945465088, 811.403501033782959, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6585.964849472045898, 810.526308059692383, 162.0, 22.0 ],
					"text" : "jit.gpu.shader @name wrap1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow1;\nlayout(binding = 1, rgba32f) uniform image2D prevlevel1;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow1);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    vec2 displacement = imageLoad(flow1, gid).xy;\n    vec2 wrappedCoord = clamp(vec2(gid) + displacement, vec2(0.0), vec2(size) - vec2(1.0));\n\n    ivec2 iuv = ivec2(floor(wrappedCoord));\n    vec2 f = fract(wrappedCoord);\n\n    float a = imageLoad(prevlevel1, iuv).r;                   \n    float b = imageLoad(prevlevel1, iuv + ivec2(1, 0)).r;     \n    float c = imageLoad(prevlevel1, iuv + ivec2(0, 1)).r;   \n    float d = imageLoad(prevlevel1, iuv + ivec2(1, 1)).r;     \n\n    float ab = mix(a, b, f.x); \n    float cd = mix(c, d, f.x); \n    float warped = mix(ab, cd, f.y); \n\n    float original = imageLoad(prevlevel1, gid).r;\n    imageStore(prevlevel1, gid, vec4(original, warped, 0, 0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6009.649065494537354, 810.526308059692383, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap1 @threads 60 34 1 @read flow1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6214.035028457641602, 781.578939914703369, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-141",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5570.438548564910889, 2257.0, 213.0, 22.0 ],
					"text" : "jit.gpu.shader @name upsampleFlow2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flowOut2; // livello L+1\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow1; // livello L\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 sizeHigh = imageSize(flow1);\n    ivec2 sizeLow = imageSize(flowOut2);\n    if (coord.x >= sizeHigh.x || coord.y >= sizeHigh.y) return;\n\n    // Coord corrispondente nel livello più piccolo\n    vec2 uvLow = vec2(coord) / 2.0;\n\n    uvLow = clamp(uvLow, vec2(0.0), vec2(sizeLow - 1));\n    ivec2 iuv = ivec2(floor(uvLow));\n    vec2 f = fract(uvLow);\n\n    vec2 a = imageLoad(flowOut2, iuv).xy;\n    vec2 b = imageLoad(flowOut2, iuv + ivec2(1, 0)).xy;\n    vec2 c = imageLoad(flowOut2, iuv + ivec2(0, 1)).xy;\n    vec2 d = imageLoad(flowOut2, iuv + ivec2(1, 1)).xy;\n\n    vec2 ab = mix(a, b, f.x);\n    vec2 cd = mix(c, d, f.x);\n    vec2 upsampledFlow = mix(ab, cd, f.y);\n\n\n    //vec2 upsampledFlow = bilinearSampleVec2(flowLowRes, uvLow, sizeLow);\n\n    // Scala il flow (perché 1 px in low = 2 px in high)\n    upsampledFlow *= 2.0;\n\n    imageStore(flow1, coord, vec4(upsampledFlow, 0.0, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5015.438548564910889, 2257.0, 491.0, 22.0 ],
					"text" : "jit.gpu.compute @shader upsampleFlow2 @threads 60 34 1 @read flowOut2 @write flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4923.438548564910889, 2259.0, 85.0, 20.0 ],
					"text" : "upsample flow"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5610.526262283325195, 909.64911413192749, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient2;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow2; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n    vec2 confidence;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient2);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient2, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow2, coord).xy;\n    float confidence = smoothstep(settings.confidence.x, settings.confidence.y, det);\n    delta *= confidence;\n    imageStore(flow2, coord, vec4(currentFlow + delta, confidence, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5035.087671279907227, 909.64911413192749, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow2 @threads 30 17 1 @read gradient2 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4955.263110637664795, 909.64911413192749, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5610.526262283325195, 863.157886505126953, 160.0, 22.0 ],
					"text" : "jit.gpu.shader @name grad2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\n// Immagini in scala di grigi (canale R)\nlayout(binding = 0, rgba32f) uniform readonly image2D level2;        // Frame precedente\nlayout(binding = 1, rgba32f) uniform image2D prevlevel2; // Frame corrente warpat\nlayout(binding = 2, rgba32f) uniform writeonly image2D gradient2;  // Output: (Ix, Iy, It, 0)\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level2);\n\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Coordinate dei pixel vicini, con gestione dei bordi\n    int x0 = max(coord.x - 1, 0);\n    int x1 = min(coord.x + 1, size.x - 1);\n    int y0 = max(coord.y - 1, 0);\n    int y1 = min(coord.y + 1, size.y - 1);\n\n    // Lettura intensità frame0\n    float I0_left   = imageLoad(level2, ivec2(x0, coord.y)).r;\n    float I0_right  = imageLoad(level2, ivec2(x1, coord.y)).r;\n    float I0_top    = imageLoad(level2, ivec2(coord.x, y0)).r;\n    float I0_bottom = imageLoad(level2, ivec2(coord.x, y1)).r;\n    float I0_center = imageLoad(level2, coord).r;\n\n    // Lettura intensità frame1 warped\n    float I1_left   = imageLoad(prevlevel2, ivec2(x0, coord.y)).g;\n    float I1_right  = imageLoad(prevlevel2, ivec2(x1, coord.y)).g;\n    float I1_top    = imageLoad(prevlevel2, ivec2(coord.x, y0)).g;\n    float I1_bottom = imageLoad(prevlevel2, ivec2(coord.x, y1)).g;\n    float I1_center = imageLoad(prevlevel2, coord).g;\n\n    // Calcolo dei gradienti spaziali mediati\n    float Ix = 0.25 * ((I0_right - I0_left) + (I1_right - I1_left));\n    float Iy = 0.25 * ((I0_bottom - I0_top) + (I1_bottom - I1_top));\n\n    // Calcolo gradiente temporale\n    float It = I1_center - I0_center;\n\n    imageStore(gradient2, coord, vec4(Ix, Iy, It, 0.0));\n\n    //move wrapped to the fist plane\n    //float wrapped = imageLoad(prevlevel2, coord).g;\n    //imageStore(prevlevel2, coord, vec4(wrapped));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5035.087671279907227, 863.157886505126953, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad2 @threads 30 17 1 @read level2 @write gradient2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4981.57889986038208, 864.912272453308105, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4985.964864730834961, 811.403501033782959, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5610.526262283325195, 810.526308059692383, 162.0, 22.0 ],
					"text" : "jit.gpu.shader @name wrap2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow2;\nlayout(binding = 1, rgba32f) uniform image2D prevlevel2;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow2);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    vec2 displacement = imageLoad(flow2, gid).xy;\n    vec2 wrappedCoord = clamp(vec2(gid) + displacement, vec2(0.0), vec2(size) - vec2(1.0));\n\n    ivec2 iuv = ivec2(floor(wrappedCoord));\n    vec2 f = fract(wrappedCoord);\n\n    float a = imageLoad(prevlevel2, iuv).r;                   \n    float b = imageLoad(prevlevel2, iuv + ivec2(1, 0)).r;     \n    float c = imageLoad(prevlevel2, iuv + ivec2(0, 1)).r;   \n    float d = imageLoad(prevlevel2, iuv + ivec2(1, 1)).r;     \n\n    float ab = mix(a, b, f.x); \n    float cd = mix(c, d, f.x); \n    float warped = mix(ab, cd, f.y); \n\n    float original = imageLoad(prevlevel2, gid).r;\n    imageStore(prevlevel2, gid, vec4(original, warped, 0, 0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5035.087671279907227, 810.526308059692383, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap2 @threads 30 17 1 @read flow2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5240.350827217102051, 781.578939914703369, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4624.385925769805908, 2257.0, 213.0, 22.0 ],
					"text" : "jit.gpu.shader @name upsampleFlow3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flowOut3; // livello L+1\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow2; // livello L\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 sizeHigh = imageSize(flow2);\n    ivec2 sizeLow = imageSize(flowOut3);\n    if (coord.x >= sizeHigh.x || coord.y >= sizeHigh.y) return;\n\n    // Coord corrispondente nel livello più piccolo\n    vec2 uvLow = vec2(coord) / 2.0;\n\n    uvLow = clamp(uvLow, vec2(0.0), vec2(sizeLow - 1));\n    ivec2 iuv = ivec2(floor(uvLow));\n    vec2 f = fract(uvLow);\n\n    vec2 a = imageLoad(flowOut3, iuv).xy;\n    vec2 b = imageLoad(flowOut3, iuv + ivec2(1, 0)).xy;\n    vec2 c = imageLoad(flowOut3, iuv + ivec2(0, 1)).xy;\n    vec2 d = imageLoad(flowOut3, iuv + ivec2(1, 1)).xy;\n\n    vec2 ab = mix(a, b, f.x);\n    vec2 cd = mix(c, d, f.x);\n    vec2 upsampledFlow = mix(ab, cd, f.y);\n\n\n    //vec2 upsampledFlow = bilinearSampleVec2(flowLowRes, uvLow, sizeLow);\n\n    // Scala il flow (perché 1 px in low = 2 px in high)\n    upsampledFlow *= 2.0;\n\n    imageStore(flow2, coord, vec4(upsampledFlow, 0.0, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4102.385925769805908, 2257.0, 491.0, 22.0 ],
					"text" : "jit.gpu.compute @shader upsampleFlow3 @threads 30 17 1 @read flowOut3 @write flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4010.385925769805908, 2259.0, 85.0, 20.0 ],
					"text" : "upsample flow"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4702.631534099578857, 908.771921157836914, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient3;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow3; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n    vec2 confidence;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient3);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient3, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow3, coord).xy;\n    float confidence = smoothstep(settings.confidence.x, settings.confidence.y, det);\n    delta *= confidence;\n    imageStore(flow3, coord, vec4(currentFlow + delta, confidence, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4112.280662536621094, 909.64911413192749, 493.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow3 @threads 15 9 1 @read gradient3 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4032.456101894378662, 909.64911413192749, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4702.631534099578857, 862.280693531036377, 160.0, 22.0 ],
					"text" : "jit.gpu.shader @name grad3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\n// Immagini in scala di grigi (canale R)\nlayout(binding = 0, rgba32f) uniform readonly image2D level3;        // Frame precedente\nlayout(binding = 1, rgba32f) uniform image2D prevlevel3; // Frame corrente warpat\nlayout(binding = 2, rgba32f) uniform writeonly image2D gradient3;  // Output: (Ix, Iy, It, 0)\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level3);\n\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Coordinate dei pixel vicini, con gestione dei bordi\n    int x0 = max(coord.x - 1, 0);\n    int x1 = min(coord.x + 1, size.x - 1);\n    int y0 = max(coord.y - 1, 0);\n    int y1 = min(coord.y + 1, size.y - 1);\n\n    // Lettura intensità frame0\n    float I0_left   = imageLoad(level3, ivec2(x0, coord.y)).r;\n    float I0_right  = imageLoad(level3, ivec2(x1, coord.y)).r;\n    float I0_top    = imageLoad(level3, ivec2(coord.x, y0)).r;\n    float I0_bottom = imageLoad(level3, ivec2(coord.x, y1)).r;\n    float I0_center = imageLoad(level3, coord).r;\n\n    // Lettura intensità frame1 warped\n    float I1_left   = imageLoad(prevlevel3, ivec2(x0, coord.y)).g;\n    float I1_right  = imageLoad(prevlevel3, ivec2(x1, coord.y)).g;\n    float I1_top    = imageLoad(prevlevel3, ivec2(coord.x, y0)).g;\n    float I1_bottom = imageLoad(prevlevel3, ivec2(coord.x, y1)).g;\n    float I1_center = imageLoad(prevlevel3, coord).g;\n\n    // Calcolo dei gradienti spaziali mediati\n    float Ix = 0.25 * ((I0_right - I0_left) + (I1_right - I1_left));\n    float Iy = 0.25 * ((I0_bottom - I0_top) + (I1_bottom - I1_top));\n\n    // Calcolo gradiente temporale\n    float It = I1_center - I0_center;\n\n    imageStore(gradient3, coord, vec4(Ix, Iy, It, 0.0));\n\n    //move wrapped to the fist plane\n    //float wrapped = imageLoad(prevlevel3, coord).g;\n    //imageStore(prevlevel3, coord, vec4(wrapped));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4112.280662536621094, 863.157886505126953, 560.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad3 @threads 15 9 1 @read level3 @write gradient3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4057.894698143005371, 864.912272453308105, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4063.157855987548828, 811.403501033782959, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4702.631534099578857, 809.649115085601807, 162.0, 22.0 ],
					"text" : "jit.gpu.shader @name wrap3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow3;\nlayout(binding = 1, rgba32f) uniform image2D prevlevel3;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow3);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    vec2 displacement = imageLoad(flow3, gid).xy;\n    vec2 wrappedCoord = clamp(vec2(gid) + displacement, vec2(0.0), vec2(size) - vec2(1.0));\n\n    ivec2 iuv = ivec2(floor(wrappedCoord));\n    vec2 f = fract(wrappedCoord);\n\n    float a = imageLoad(prevlevel3, iuv).r;                   \n    float b = imageLoad(prevlevel3, iuv + ivec2(1, 0)).r;     \n    float c = imageLoad(prevlevel3, iuv + ivec2(0, 1)).r;   \n    float d = imageLoad(prevlevel3, iuv + ivec2(1, 1)).r;     \n\n    float ab = mix(a, b, f.x); \n    float cd = mix(c, d, f.x); \n    float warped = mix(ab, cd, f.y); \n\n    float original = imageLoad(prevlevel3, gid).r;\n    imageStore(prevlevel3, gid, vec4(original, warped, 0, 0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4112.280662536621094, 810.526308059692383, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap3 @threads 15 9 1 @read flow3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4317.543818473815918, 781.578939914703369, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3710.763127326965332, 2257.0, 213.0, 22.0 ],
					"text" : "jit.gpu.shader @name upsampleFlow4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flowOut4; // livello L+1\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow3; // livello L\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 sizeHigh = imageSize(flow3);\n    ivec2 sizeLow = imageSize(flowOut4);\n    if (coord.x >= sizeHigh.x || coord.y >= sizeHigh.y) return;\n\n    // Coord corrispondente nel livello più piccolo\n    vec2 uvLow = vec2(coord) / 2.0;\n\n    uvLow = clamp(uvLow, vec2(0.0), vec2(sizeLow - 1));\n    ivec2 iuv = ivec2(floor(uvLow));\n    vec2 f = fract(uvLow);\n\n    vec2 a = imageLoad(flowOut4, iuv).xy;\n    vec2 b = imageLoad(flowOut4, iuv + ivec2(1, 0)).xy;\n    vec2 c = imageLoad(flowOut4, iuv + ivec2(0, 1)).xy;\n    vec2 d = imageLoad(flowOut4, iuv + ivec2(1, 1)).xy;\n\n    vec2 ab = mix(a, b, f.x);\n    vec2 cd = mix(c, d, f.x);\n    vec2 upsampledFlow = mix(ab, cd, f.y);\n\n\n    //vec2 upsampledFlow = bilinearSampleVec2(flowLowRes, uvLow, sizeLow);\n\n    // Scala il flow (perché 1 px in low = 2 px in high)\n    upsampledFlow *= 2.0;\n\n    imageStore(flow3, coord, vec4(upsampledFlow, 0.0, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3202.763127326965332, 2257.0, 484.0, 22.0 ],
					"text" : "jit.gpu.compute @shader upsampleFlow4 @threads 15 9 1 @read flowOut4 @write flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3119.298215866088867, 1032.456130504608154, 85.0, 20.0 ],
					"text" : "upsample flow"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3779.824525356292725, 909.64911413192749, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient4;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow4; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n    vec2 confidence;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient4);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient4, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow4, coord).xy;\n    float confidence = smoothstep(settings.confidence.x, settings.confidence.y, det);\n    delta *= confidence;\n    imageStore(flow4, coord, vec4(currentFlow + delta, confidence, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3209.649092197418213, 909.64911413192749, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow4 @threads 8 5 1 @read gradient4 @readwrite flow4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3128.947338581085205, 909.64911413192749, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3779.824525356292725, 863.157886505126953, 160.0, 22.0 ],
					"text" : "jit.gpu.shader @name grad4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\n// Immagini in scala di grigi (canale R)\nlayout(binding = 0, rgba32f) uniform readonly image2D level4;        // Frame precedente\nlayout(binding = 1, rgba32f) uniform image2D prevlevel4; // Frame corrente warpat\nlayout(binding = 2, rgba32f) uniform writeonly image2D gradient4;  // Output: (Ix, Iy, It, 0)\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level4);\n\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Coordinate dei pixel vicini, con gestione dei bordi\n    int x0 = max(coord.x - 1, 0);\n    int x1 = min(coord.x + 1, size.x - 1);\n    int y0 = max(coord.y - 1, 0);\n    int y1 = min(coord.y + 1, size.y - 1);\n\n    // Lettura intensità frame0\n    float I0_left   = imageLoad(level4, ivec2(x0, coord.y)).r;\n    float I0_right  = imageLoad(level4, ivec2(x1, coord.y)).r;\n    float I0_top    = imageLoad(level4, ivec2(coord.x, y0)).r;\n    float I0_bottom = imageLoad(level4, ivec2(coord.x, y1)).r;\n    float I0_center = imageLoad(level4, coord).r;\n\n    // Lettura intensità frame1 warped\n    float I1_left   = imageLoad(prevlevel4, ivec2(x0, coord.y)).g;\n    float I1_right  = imageLoad(prevlevel4, ivec2(x1, coord.y)).g;\n    float I1_top    = imageLoad(prevlevel4, ivec2(coord.x, y0)).g;\n    float I1_bottom = imageLoad(prevlevel4, ivec2(coord.x, y1)).g;\n    float I1_center = imageLoad(prevlevel4, coord).g;\n\n    // Calcolo dei gradienti spaziali mediati\n    float Ix = 0.25 * ((I0_right - I0_left) + (I1_right - I1_left));\n    float Iy = 0.25 * ((I0_bottom - I0_top) + (I1_bottom - I1_top));\n\n    // Calcolo gradiente temporale\n    float It = I1_center - I0_center;\n\n    imageStore(gradient4, coord, vec4(Ix, Iy, It, 0.0));\n\n    //move wrapped to the fist plane\n    //float wrapped = imageLoad(prevlevel4, coord).g;\n    //imageStore(prevlevel4, coord, vec4(wrapped));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3209.649092197418213, 863.157886505126953, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad4 @threads 8 5 1 @read level4 @write gradient4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3155.26312780380249, 864.912272453308105, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3160.526285648345947, 811.403501033782959, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3779.824525356292725, 810.526308059692383, 162.0, 22.0 ],
					"text" : "jit.gpu.shader @name wrap4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow4;\nlayout(binding = 1, rgba32f) uniform image2D prevlevel4;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow4);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    vec2 displacement = imageLoad(flow4, gid).xy;\n    vec2 wrappedCoord = clamp(vec2(gid) + displacement, vec2(0.0), vec2(size) - vec2(1.0));\n\n    ivec2 iuv = ivec2(floor(wrappedCoord));\n    vec2 f = fract(wrappedCoord);\n\n    float a = imageLoad(prevlevel4, iuv).r;                   \n    float b = imageLoad(prevlevel4, iuv + ivec2(1, 0)).r;     \n    float c = imageLoad(prevlevel4, iuv + ivec2(0, 1)).r;   \n    float d = imageLoad(prevlevel4, iuv + ivec2(1, 1)).r;     \n\n    float ab = mix(a, b, f.x); \n    float cd = mix(c, d, f.x); \n    float warped = mix(ab, cd, f.y); \n\n    float original = imageLoad(prevlevel4, gid).r;\n    imageStore(prevlevel4, gid, vec4(original, warped, 0, 0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3209.649092197418213, 810.526308059692383, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap4 @threads 8 5 1 @read flow4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3414.035055160522461, 781.578939914703369, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2821.500069439411163, 2316.0, 213.0, 22.0 ],
					"text" : "jit.gpu.shader @name upsampleFlow5",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flowOut5; // livello L+1\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow4; // livello L\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 sizeHigh = imageSize(flow4);\n    ivec2 sizeLow = imageSize(flowOut5);\n    if (coord.x >= sizeHigh.x || coord.y >= sizeHigh.y) return;\n\n    // Coord corrispondente nel livello più piccolo\n    vec2 uvLow = vec2(coord) / 2.0;\n\n    uvLow = clamp(uvLow, vec2(0.0), vec2(sizeLow - 1));\n    ivec2 iuv = ivec2(floor(uvLow));\n    vec2 f = fract(uvLow);\n\n    vec2 a = imageLoad(flowOut5, iuv).xy;\n    vec2 b = imageLoad(flowOut5, iuv + ivec2(1, 0)).xy;\n    vec2 c = imageLoad(flowOut5, iuv + ivec2(0, 1)).xy;\n    vec2 d = imageLoad(flowOut5, iuv + ivec2(1, 1)).xy;\n\n    vec2 ab = mix(a, b, f.x);\n    vec2 cd = mix(c, d, f.x);\n    vec2 upsampledFlow = mix(ab, cd, f.y);\n\n    // Scala il flow (perché 1 px in low = 2 px in high)\n    upsampledFlow *= 2.0;\n\n    imageStore(flow4, coord, vec4(upsampledFlow, 0.0, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2327.500069439411163, 2316.0, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader upsampleFlow5 @threads 8 5 1 @read flowOut5 @write flow4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2240.350855827331543, 1032.456130504608154, 85.0, 20.0 ],
					"text" : "upsample flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 42.982455730438232, 620.175432682037354, 85.0, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1428.947354793548584, 459.649118423461914, 125.0, 22.0 ],
					"text" : "loadmess automatic 0"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2886.842077732086182, 909.64911413192749, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow5",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient5;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow5; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n    vec2 confidence;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient5);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient5, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow5, coord).xy;\n    float confidence = smoothstep(settings.confidence.x, settings.confidence.y, det);\n    delta *= confidence;\n    imageStore(flow5, coord, vec4(currentFlow + delta, confidence, 0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 909.64911413192749, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow5 @threads 4 3 1 @read gradient5 @readwrite flow5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2249.999978542327881, 909.64911413192749, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2886.842077732086182, 863.157886505126953, 160.0, 22.0 ],
					"text" : "jit.gpu.shader @name grad5",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\n// Immagini in scala di grigi (canale R)\nlayout(binding = 0, rgba32f) uniform readonly image2D level5;        // Frame precedente\nlayout(binding = 1, rgba32f) uniform image2D prevlevel5; // Frame corrente warpat\nlayout(binding = 2, rgba32f) uniform writeonly image2D gradient5;  // Output: (Ix, Iy, It, 0)\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level5);\n\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    // Coordinate dei pixel vicini, con gestione dei bordi\n    int x0 = max(coord.x - 1, 0);\n    int x1 = min(coord.x + 1, size.x - 1);\n    int y0 = max(coord.y - 1, 0);\n    int y1 = min(coord.y + 1, size.y - 1);\n\n    // Lettura intensità frame0\n    float I0_left   = imageLoad(level5, ivec2(x0, coord.y)).r;\n    float I0_right  = imageLoad(level5, ivec2(x1, coord.y)).r;\n    float I0_top    = imageLoad(level5, ivec2(coord.x, y0)).r;\n    float I0_bottom = imageLoad(level5, ivec2(coord.x, y1)).r;\n    float I0_center = imageLoad(level5, coord).r;\n\n    // Lettura intensità frame1 warped\n    float I1_left   = imageLoad(prevlevel5, ivec2(x0, coord.y)).g;\n    float I1_right  = imageLoad(prevlevel5, ivec2(x1, coord.y)).g;\n    float I1_top    = imageLoad(prevlevel5, ivec2(coord.x, y0)).g;\n    float I1_bottom = imageLoad(prevlevel5, ivec2(coord.x, y1)).g;\n    float I1_center = imageLoad(prevlevel5, coord).g;\n\n    // Calcolo dei gradienti spaziali mediati\n    float Ix = 0.25 * ((I0_right - I0_left) + (I1_right - I1_left));\n    float Iy = 0.25 * ((I0_bottom - I0_top) + (I1_bottom - I1_top));\n\n    // Calcolo gradiente temporale\n    float It = I1_center - I0_center;\n\n    imageStore(gradient5, coord, vec4(Ix, Iy, It, 0.0));\n\n    //move wrapped to the fist plane\n    //float wrapped = imageLoad(prevlevel5, coord).g;\n    //imageStore(prevlevel5, coord, vec4(wrapped));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 863.157886505126953, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad5 @threads 4 3 1 @read level5 @write gradient5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1424.561389923095703, 1525.438581943511963, 398.0, 22.0 ],
					"text" : "jit.gpu.image @name gradient5 @format RGBA32_FLOAT @dim 60 34 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1424.561389923095703, 1493.859634876251221, 405.0, 22.0 ],
					"text" : "jit.gpu.image @name gradient4 @format RGBA32_FLOAT @dim 120 68 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1424.561389923095703, 1465.789459705352783, 412.0, 22.0 ],
					"text" : "jit.gpu.image @name gradient3 @format RGBA32_FLOAT @dim 240 135 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1424.561389923095703, 1438.596477508544922, 412.0, 22.0 ],
					"text" : "jit.gpu.image @name gradient2 @format RGBA32_FLOAT @dim 480 270 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1424.561389923095703, 1409.649109363555908, 412.0, 22.0 ],
					"text" : "jit.gpu.image @name gradient1 @format RGBA32_FLOAT @dim 960 540 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1424.561389923095703, 1380.701741218566895, 425.0, 22.0 ],
					"text" : "jit.gpu.image @name gradient0 @format RGBA32_FLOAT @dim 1920 1080 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2276.315767765045166, 864.912272453308105, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2281.578925609588623, 811.403501033782959, 47.0, 20.0 ],
					"text" : "wrap"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2886.842077732086182, 810.526308059692383, 162.0, 22.0 ],
					"text" : "jit.gpu.shader @name wrap5",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow5;\nlayout(binding = 1, rgba32f) uniform image2D prevlevel5;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow5);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    vec2 displacement = imageLoad(flow5, gid).xy;\n    vec2 wrappedCoord = clamp(vec2(gid) + displacement, vec2(0.0), vec2(size) - vec2(1.0));\n\n    ivec2 iuv = ivec2(floor(wrappedCoord));\n    vec2 f = fract(wrappedCoord);\n\n    float a = imageLoad(prevlevel5, iuv).r;                   \n    float b = imageLoad(prevlevel5, iuv + ivec2(1, 0)).r;     \n    float c = imageLoad(prevlevel5, iuv + ivec2(0, 1)).r;   \n    float d = imageLoad(prevlevel5, iuv + ivec2(1, 1)).r;     \n\n    float ab = mix(a, b, f.x); \n    float cd = mix(c, d, f.x); \n    float warped = mix(ab, cd, f.y); \n\n    float original = imageLoad(prevlevel5, gid).r;\n    imageStore(prevlevel5, gid, vec4(original, warped, 0, 0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2329.824539184570312, 810.526308059692383, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap5 @threads 4 3 1 @read flow5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2535.087695121765137, 781.578939914703369, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2033.333313941955566, 1040.35086727142334, 184.0, 22.0 ],
					"text" : "jit.gpu.shader @name resetflow5",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform writeonly image2D flow5;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow5);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(flow5, gid, vec4(0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1595.614019870758057, 1040.35086727142334, 382.0, 22.0 ],
					"text" : "jit.gpu.compute @shader resetflow5 @threads 4 3 1 @readwrite flow5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2033.333313941955566, 994.736832618713379, 184.0, 22.0 ],
					"text" : "jit.gpu.shader @name resetflow4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform writeonly image2D flow4;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow4);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(flow4, gid, vec4(0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1595.614019870758057, 994.736832618713379, 382.0, 22.0 ],
					"text" : "jit.gpu.compute @shader resetflow4 @threads 8 5 1 @readwrite flow4"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2033.333313941955566, 948.245604991912842, 184.0, 22.0 ],
					"text" : "jit.gpu.shader @name resetflow3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform writeonly image2D flow3;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow3);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(flow3, gid, vec4(0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1595.614019870758057, 948.245604991912842, 389.0, 22.0 ],
					"text" : "jit.gpu.compute @shader resetflow3 @threads 15 9 1 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2033.333313941955566, 902.631570339202881, 184.0, 22.0 ],
					"text" : "jit.gpu.shader @name resetflow2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform writeonly image2D flow2;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow2);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(flow2, gid, vec4(0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1595.614019870758057, 902.631570339202881, 395.0, 22.0 ],
					"text" : "jit.gpu.compute @shader resetflow2 @threads 30 17 1 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2033.333313941955566, 856.140342712402344, 184.0, 22.0 ],
					"text" : "jit.gpu.shader @name resetflow1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform writeonly image2D flow1;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow1);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(flow1, gid, vec4(0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1595.614019870758057, 856.140342712402344, 395.0, 22.0 ],
					"text" : "jit.gpu.compute @shader resetflow1 @threads 60 34 1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2033.333313941955566, 810.526308059692383, 184.0, 22.0 ],
					"text" : "jit.gpu.shader @name resetflow0",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform writeonly image2D flow0;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(flow0);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(flow0, gid, vec4(0.0));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1595.614019870758057, 810.526308059692383, 402.0, 22.0 ],
					"text" : "jit.gpu.compute @shader resetflow0 @threads 120 68 1 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1762.280684947967529, 774.56139612197876, 80.0, 20.0 ],
					"text" : "reset the flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.12279748916626, 1525.438581943511963, 376.0, 22.0 ],
					"text" : "jit.gpu.image @name flow5 @format RGBA32_FLOAT @dim 60 34 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.12279748916626, 1493.859634876251221, 383.0, 22.0 ],
					"text" : "jit.gpu.image @name flow4 @format RGBA32_FLOAT @dim 120 68 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.12279748916626, 1465.789459705352783, 390.0, 22.0 ],
					"text" : "jit.gpu.image @name flow3 @format RGBA32_FLOAT @dim 240 135 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.12279748916626, 1438.596477508544922, 390.0, 22.0 ],
					"text" : "jit.gpu.image @name flow2 @format RGBA32_FLOAT @dim 480 270 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.12279748916626, 1409.649109363555908, 390.0, 22.0 ],
					"text" : "jit.gpu.image @name flow1 @format RGBA32_FLOAT @dim 960 540 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 999.12279748916626, 1380.701741218566895, 403.0, 22.0 ],
					"text" : "jit.gpu.image @name flow0 @format RGBA32_FLOAT @dim 1920 1080 1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.333327770233154, 1147.368410110473633, 161.0, 22.0 ],
					"text" : "jit.gpu.shader @name copy5",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level5;\nlayout(binding = 1, rgba32f) uniform writeonly image2D prevlevel5;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level5);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(prevlevel5, gid, imageLoad(level5, gid));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 82.45613956451416, 1147.368410110473633, 436.0, 22.0 ],
					"text" : "jit.gpu.compute @shader copy5 @threads 4 3 1 @read level5 @write prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.333327770233154, 1099.122796535491943, 161.0, 22.0 ],
					"text" : "jit.gpu.shader @name copy4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level4;\nlayout(binding = 1, rgba32f) uniform writeonly image2D prevlevel4;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level4);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(prevlevel4, gid, imageLoad(level4, gid));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 82.45613956451416, 1099.122796535491943, 436.0, 22.0 ],
					"text" : "jit.gpu.compute @shader copy4 @threads 8 5 1 @read level4 @write prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.333327770233154, 1054.385954856872559, 161.0, 22.0 ],
					"text" : "jit.gpu.shader @name copy3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level3;\nlayout(binding = 1, rgba32f) uniform writeonly image2D prevlevel3;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level3);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(prevlevel3, gid, imageLoad(level3, gid));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 82.45613956451416, 1054.385954856872559, 443.0, 22.0 ],
					"text" : "jit.gpu.compute @shader copy3 @threads 15 9 1 @read level3 @write prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.333327770233154, 1006.140341281890869, 161.0, 22.0 ],
					"text" : "jit.gpu.shader @name copy2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level2;\nlayout(binding = 1, rgba32f) uniform writeonly image2D prevlevel2;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level2);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(prevlevel2, gid, imageLoad(level2, gid));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 82.45613956451416, 1006.140341281890869, 449.0, 22.0 ],
					"text" : "jit.gpu.compute @shader copy2 @threads 30 17 1 @read level2 @write prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.333327770233154, 954.385955810546875, 161.0, 22.0 ],
					"text" : "jit.gpu.shader @name copy1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level1;\nlayout(binding = 1, rgba32f) uniform writeonly image2D prevlevel1;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level1);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(prevlevel1, gid, imageLoad(level1, gid));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 82.45613956451416, 954.385955810546875, 449.0, 22.0 ],
					"text" : "jit.gpu.compute @shader copy1 @threads 60 34 1 @read level1 @write prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.333327770233154, 908.771921157836914, 161.0, 22.0 ],
					"text" : "jit.gpu.shader @name copy0",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level0;\nlayout(binding = 1, rgba32f) uniform writeonly image2D prevlevel0;\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level0);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    imageStore(prevlevel0, gid, imageLoad(level0, gid));\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 82.45613956451416, 908.771921157836914, 456.0, 22.0 ],
					"text" : "jit.gpu.compute @shader copy0 @threads 120 68 1 @read level0 @write prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 194.73684024810791, 880.701745986938477, 272.0, 20.0 ],
					"text" : "copy the pyramid into the previous-frame pyramid"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 961.403499603271484, 783.333325862884521, 141.0, 20.0 ],
					"text" : "build the blurred pyramid"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 893.859640598297119, 676.315783023834229, 167.0, 20.0 ],
					"text" : "turn the current frame to luma"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 76.315788745880127, 1525.438581943511963, 403.0, 22.0 ],
					"text" : "jit.gpu.image @name prevlevel5 @format RGBA32_FLOAT @dim 60 34 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 76.315788745880127, 1493.859634876251221, 410.0, 22.0 ],
					"text" : "jit.gpu.image @name prevlevel4 @format RGBA32_FLOAT @dim 120 68 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 76.315788745880127, 1465.789459705352783, 416.0, 22.0 ],
					"text" : "jit.gpu.image @name prevlevel3 @format RGBA32_FLOAT @dim 240 135 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 76.315788745880127, 1438.596477508544922, 416.0, 22.0 ],
					"text" : "jit.gpu.image @name prevlevel2 @format RGBA32_FLOAT @dim 480 270 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 76.315788745880127, 1409.649109363555908, 416.0, 22.0 ],
					"text" : "jit.gpu.image @name prevlevel1 @format RGBA32_FLOAT @dim 960 540 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 76.315788745880127, 1380.701741218566895, 430.0, 22.0 ],
					"text" : "jit.gpu.image @name prevlevel0 @format RGBA32_FLOAT @dim 1920 1080 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 817.543851852416992, 1237.719286441802979, 422.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurV4 @threads 60 5 1 @read level4 @write level5"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1290.350864887237549, 1237.719286441802979, 164.0, 22.0 ],
					"text" : "jit.gpu.shader @name blurV4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 1, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level4;\nlayout(binding = 1, rgba32f) uniform writeonly image2D level5;\n\n// +4 per i bordi sopra e sotto\nshared float column[16 + 4];\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy); // pixel globale\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);  // indice locale\n    ivec2 size = imageSize(level4) / ivec2(2,1);\n\n    int sharedIndex = lid.y + 2;\n\n    // Carica pixel centrale\n    int yCenter = clamp(gid.y, 0, size.y - 1);\n    column[sharedIndex] = imageLoad(level4, ivec2(gid.x, yCenter)).g;\n\n    // Bordi superiori\n    if (lid.y < 2) {\n        int borderY = clamp(gid.y - 2, 0, size.y - 1);\n        column[lid.y] = imageLoad(level4, ivec2(gid.x, borderY)).g;\n    }\n\n    // Bordi inferiori\n    if (lid.y >= 14) {\n        int borderY = clamp(gid.y + 2, 0, size.y - 1);\n        column[sharedIndex + 2] = imageLoad(level4, ivec2(gid.x, borderY)).g;\n    }\n\n    barrier();\n\n    // Applica kernel Gaussiano verticale 5x1\n    float kernel[5] = float[](1.0, 4.0, 6.0, 4.0, 1.0);\n\n    float res = 0.0;\n    for (int i = -2; i <= 2; ++i) {\n        res += column[sharedIndex + i] * kernel[i + 2];\n    }\n    res /= 16.0;\n\n    // Scrivi risultato\n    if (gid.x < size.x && gid.y < size.y && gid.y % 2 == 0) {\n        ivec2 halfCoord = gid / ivec2(1,2);\n        imageStore(level5, halfCoord, vec4(res));\n    }\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1289.473671913146973, 1189.473672866821289, 165.0, 22.0 ],
					"text" : "jit.gpu.shader @name blurH4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 1) in;\n\nlayout(binding = 0, rgba32f) uniform image2D level4;\n\n// +4 per bordi a sinistra e destra\nshared float tile[16 + 4];\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    ivec2 size = imageSize(level4);\n\n    int sharedIndex = lid.x + 2;\n\n    // Carica pixel centrale\n    int globalX = clamp(gid.x, 0, size.x - 1);\n    tile[sharedIndex] = imageLoad(level4, ivec2(globalX, gid.y)).r;\n\n    // Carica bordi sinistri\n    if (lid.x < 2) {\n        int borderX = clamp(gid.x - 2, 0, size.x - 1);\n        tile[lid.x] = imageLoad(level4, ivec2(borderX, gid.y)).r;\n    }\n\n    // Carica bordi destri\n    if (lid.x >= 14) {\n        int borderX = clamp(gid.x + 2, 0, size.x - 1);\n        tile[sharedIndex + 2] = imageLoad(level4, ivec2(borderX, gid.y)).r;\n    }\n\n    // Sincronizza per garantire che tutta la shared sia caricata\n    barrier();\n\n    // Applica kernel gaussiano 5x1\n    float kernel[5] = float[](1.0, 4.0, 6.0, 4.0, 1.0);\n\n    float res = 0;\n    for (int i = -2; i <= 2; ++i) {\n        res += tile[sharedIndex + i] * kernel[i + 2];\n    }\n\n    res /= 16;\n\n    // Scrivi risultato\n    if (gid.x < size.x && gid.y < size.y && gid.x % 2 == 0) {\n        ivec2 halfCoord = gid / ivec2(2,1);\n        float original = imageLoad(level4, halfCoord).r;\n        imageStore(level4, halfCoord, vec4(original, res, 0,0));\n    }\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 820.175430774688721, 1189.473672866821289, 373.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurH4 @threads 8 68 1 @readwrite level4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 550.877187728881836, 1525.438581943511963, 380.0, 22.0 ],
					"text" : "jit.gpu.image @name level5 @format RGBA32_FLOAT @dim 60 34 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 817.543851852416992, 1147.368410110473633, 429.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurV3 @threads 120 9 1 @read level3 @write level4"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1290.350864887237549, 1147.368410110473633, 164.0, 22.0 ],
					"text" : "jit.gpu.shader @name blurV3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 1, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level3;\nlayout(binding = 1, rgba32f) uniform writeonly image2D level4;\n\n// +4 per i bordi sopra e sotto\nshared float column[16 + 4];\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy); // pixel globale\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);  // indice locale\n    ivec2 size = imageSize(level3) / ivec2(2,1);\n\n    int sharedIndex = lid.y + 2;\n\n    // Carica pixel centrale\n    int yCenter = clamp(gid.y, 0, size.y - 1);\n    column[sharedIndex] = imageLoad(level3, ivec2(gid.x, yCenter)).g;\n\n    // Bordi superiori\n    if (lid.y < 2) {\n        int borderY = clamp(gid.y - 2, 0, size.y - 1);\n        column[lid.y] = imageLoad(level3, ivec2(gid.x, borderY)).g;\n    }\n\n    // Bordi inferiori\n    if (lid.y >= 14) {\n        int borderY = clamp(gid.y + 2, 0, size.y - 1);\n        column[sharedIndex + 2] = imageLoad(level3, ivec2(gid.x, borderY)).g;\n    }\n\n    barrier();\n\n    // Applica kernel Gaussiano verticale 5x1\n    float kernel[5] = float[](1.0, 4.0, 6.0, 4.0, 1.0);\n\n    float res = 0.0;\n    for (int i = -2; i <= 2; ++i) {\n        res += column[sharedIndex + i] * kernel[i + 2];\n    }\n    res /= 16.0;\n\n    // Scrivi risultato\n    if (gid.x < size.x && gid.y < size.y && gid.y % 2 == 0) {\n        ivec2 halfCoord = gid / ivec2(1,2);\n        imageStore(level4, halfCoord, vec4(res));\n    }\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1289.473671913146973, 1099.122796535491943, 165.0, 22.0 ],
					"text" : "jit.gpu.shader @name blurH3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 1) in;\n\nlayout(binding = 0, rgba32f) uniform image2D level3;\n\n// +4 per bordi a sinistra e destra\nshared float tile[16 + 4];\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    ivec2 size = imageSize(level3);\n\n    int sharedIndex = lid.x + 2;\n\n    // Carica pixel centrale\n    int globalX = clamp(gid.x, 0, size.x - 1);\n    tile[sharedIndex] = imageLoad(level3, ivec2(globalX, gid.y)).r;\n\n    // Carica bordi sinistri\n    if (lid.x < 2) {\n        int borderX = clamp(gid.x - 2, 0, size.x - 1);\n        tile[lid.x] = imageLoad(level3, ivec2(borderX, gid.y)).r;\n    }\n\n    // Carica bordi destri\n    if (lid.x >= 14) {\n        int borderX = clamp(gid.x + 2, 0, size.x - 1);\n        tile[sharedIndex + 2] = imageLoad(level3, ivec2(borderX, gid.y)).r;\n    }\n\n    // Sincronizza per garantire che tutta la shared sia caricata\n    barrier();\n\n    // Applica kernel gaussiano 5x1\n    float kernel[5] = float[](1.0, 4.0, 6.0, 4.0, 1.0);\n\n    float res = 0;\n    for (int i = -2; i <= 2; ++i) {\n        res += tile[sharedIndex + i] * kernel[i + 2];\n    }\n\n    res /= 16;\n\n    // Scrivi risultato\n    if (gid.x < size.x && gid.y < size.y && gid.x % 2 == 0) {\n        ivec2 halfCoord = gid / ivec2(2,1);\n        float original = imageLoad(level3, halfCoord).r;\n        imageStore(level3, halfCoord, vec4(original, res, 0,0));\n    }\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 820.175430774688721, 1099.122796535491943, 386.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurH3 @threads 15 135 1 @readwrite level3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 550.877187728881836, 1493.859634876251221, 386.0, 22.0 ],
					"text" : "jit.gpu.image @name level4 @format RGBA32_FLOAT @dim 120 68 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 817.543851852416992, 1049.122797012329102, 435.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurV2 @threads 240 17 1 @read level2 @write level3"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1290.350864887237549, 1049.122797012329102, 164.0, 22.0 ],
					"text" : "jit.gpu.shader @name blurV2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 1, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level2;\nlayout(binding = 1, rgba32f) uniform writeonly image2D level3;\n\n// +4 per i bordi sopra e sotto\nshared float column[16 + 4];\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy); // pixel globale\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);  // indice locale\n    ivec2 size = imageSize(level2) / ivec2(2,1);\n\n    int sharedIndex = lid.y + 2;\n\n    // Carica pixel centrale\n    int yCenter = clamp(gid.y, 0, size.y - 1);\n    column[sharedIndex] = imageLoad(level2, ivec2(gid.x, yCenter)).g;\n\n    // Bordi superiori\n    if (lid.y < 2) {\n        int borderY = clamp(gid.y - 2, 0, size.y - 1);\n        column[lid.y] = imageLoad(level2, ivec2(gid.x, borderY)).g;\n    }\n\n    // Bordi inferiori\n    if (lid.y >= 14) {\n        int borderY = clamp(gid.y + 2, 0, size.y - 1);\n        column[sharedIndex + 2] = imageLoad(level2, ivec2(gid.x, borderY)).g;\n    }\n\n    barrier();\n\n    // Applica kernel Gaussiano verticale 5x1\n    float kernel[5] = float[](1.0, 4.0, 6.0, 4.0, 1.0);\n\n    float res = 0.0;\n    for (int i = -2; i <= 2; ++i) {\n        res += column[sharedIndex + i] * kernel[i + 2];\n    }\n    res /= 16.0;\n\n    // Scrivi risultato\n    if (gid.x < size.x && gid.y < size.y && gid.y % 2 == 0) {\n        ivec2 halfCoord = gid / ivec2(1,2);\n        imageStore(level3, halfCoord, vec4(res));\n    }\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1289.473671913146973, 1001.754376411437988, 165.0, 22.0 ],
					"text" : "jit.gpu.shader @name blurH2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 1) in;\n\nlayout(binding = 0, rgba32f) uniform image2D level2;\n\n// +4 per bordi a sinistra e destra\nshared float tile[16 + 4];\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    ivec2 size = imageSize(level2);\n\n    int sharedIndex = lid.x + 2;\n\n    // Carica pixel centrale\n    int globalX = clamp(gid.x, 0, size.x - 1);\n    tile[sharedIndex] = imageLoad(level2, ivec2(globalX, gid.y)).r;\n\n    // Carica bordi sinistri\n    if (lid.x < 2) {\n        int borderX = clamp(gid.x - 2, 0, size.x - 1);\n        tile[lid.x] = imageLoad(level2, ivec2(borderX, gid.y)).r;\n    }\n\n    // Carica bordi destri\n    if (lid.x >= 14) {\n        int borderX = clamp(gid.x + 2, 0, size.x - 1);\n        tile[sharedIndex + 2] = imageLoad(level2, ivec2(borderX, gid.y)).r;\n    }\n\n    // Sincronizza per garantire che tutta la shared sia caricata\n    barrier();\n\n    // Applica kernel gaussiano 5x1\n    float kernel[5] = float[](1.0, 4.0, 6.0, 4.0, 1.0);\n\n    float res = 0;\n    for (int i = -2; i <= 2; ++i) {\n        res += tile[sharedIndex + i] * kernel[i + 2];\n    }\n\n    res /= 16;\n\n    // Scrivi risultato\n    if (gid.x < size.x && gid.y < size.y && gid.x % 2 == 0) {\n        ivec2 halfCoord = gid / ivec2(2,1);\n        float original = imageLoad(level2, halfCoord).r;\n        imageStore(level2, halfCoord, vec4(original, res, 0,0));\n    }\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 820.175430774688721, 1001.754376411437988, 386.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurH2 @threads 30 270 1 @readwrite level2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 791.228062629699707, 437.71929407119751, 80.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 817.543851852416992, 956.140341758728027, 435.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurV1 @threads 480 34 1 @read level1 @write level2"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1290.350864887237549, 956.140341758728027, 164.0, 22.0 ],
					"text" : "jit.gpu.shader @name blurV1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 1, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level1;\nlayout(binding = 1, rgba32f) uniform writeonly image2D level2;\n\n// +4 per i bordi sopra e sotto\nshared float column[16 + 4];\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy); // pixel globale\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);  // indice locale\n    ivec2 size = imageSize(level1) / ivec2(2,1);\n\n    int sharedIndex = lid.y + 2;\n\n    // Carica pixel centrale\n    int yCenter = clamp(gid.y, 0, size.y - 1);\n    column[sharedIndex] = imageLoad(level1, ivec2(gid.x, yCenter)).g;\n\n    // Bordi superiori\n    if (lid.y < 2) {\n        int borderY = clamp(gid.y - 2, 0, size.y - 1);\n        column[lid.y] = imageLoad(level1, ivec2(gid.x, borderY)).g;\n    }\n\n    // Bordi inferiori\n    if (lid.y >= 14) {\n        int borderY = clamp(gid.y + 2, 0, size.y - 1);\n        column[sharedIndex + 2] = imageLoad(level1, ivec2(gid.x, borderY)).g;\n    }\n\n    barrier();\n\n    // Applica kernel Gaussiano verticale 5x1\n    float kernel[5] = float[](1.0, 4.0, 6.0, 4.0, 1.0);\n\n    float res = 0.0;\n    for (int i = -2; i <= 2; ++i) {\n        res += column[sharedIndex + i] * kernel[i + 2];\n    }\n    res /= 16.0;\n\n    // Scrivi risultato\n    if (gid.x < size.x && gid.y < size.y && gid.y % 2 == 0) {\n        ivec2 halfCoord = gid / ivec2(1,2);\n        imageStore(level2, halfCoord, vec4(res));\n    }\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1289.473671913146973, 908.771921157836914, 165.0, 22.0 ],
					"text" : "jit.gpu.shader @name blurH1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 1) in;\n\nlayout(binding = 0, rgba32f) uniform image2D level1;\n\n// +4 per bordi a sinistra e destra\nshared float tile[16 + 4];\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    ivec2 size = imageSize(level1);\n\n    int sharedIndex = lid.x + 2;\n\n    // Carica pixel centrale\n    int globalX = clamp(gid.x, 0, size.x - 1);\n    tile[sharedIndex] = imageLoad(level1, ivec2(globalX, gid.y)).r;\n\n    // Carica bordi sinistri\n    if (lid.x < 2) {\n        int borderX = clamp(gid.x - 2, 0, size.x - 1);\n        tile[lid.x] = imageLoad(level1, ivec2(borderX, gid.y)).r;\n    }\n\n    // Carica bordi destri\n    if (lid.x >= 14) {\n        int borderX = clamp(gid.x + 2, 0, size.x - 1);\n        tile[sharedIndex + 2] = imageLoad(level1, ivec2(borderX, gid.y)).r;\n    }\n\n    // Sincronizza per garantire che tutta la shared sia caricata\n    barrier();\n\n    // Applica kernel gaussiano 5x1\n    float kernel[5] = float[](1.0, 4.0, 6.0, 4.0, 1.0);\n\n    float res = 0;\n    for (int i = -2; i <= 2; ++i) {\n        res += tile[sharedIndex + i] * kernel[i + 2];\n    }\n\n    res /= 16;\n\n    // Scrivi risultato\n    if (gid.x < size.x && gid.y < size.y && gid.x % 2 == 0) {\n        ivec2 halfCoord = gid / ivec2(2,1);\n        float original = imageLoad(level1, halfCoord).r;\n        imageStore(level1, halfCoord, vec4(original, res, 0,0));\n    }\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 820.175430774688721, 908.771921157836914, 386.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurH1 @threads 60 540 1 @readwrite level1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 72.807016849517822, 55.263157367706299, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 817.543851852416992, 856.140342712402344, 435.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurV0 @threads 960 68 1 @read level0 @write level1"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1291.228057861328125, 856.140342712402344, 164.0, 22.0 ],
					"text" : "jit.gpu.shader @name blurV0",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 1, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D level0;\nlayout(binding = 1, rgba32f) uniform writeonly image2D level1;\n\n// +4 per i bordi sopra e sotto\nshared float column[16 + 4];\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy); // pixel globale\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);  // indice locale\n    ivec2 size = imageSize(level0) / ivec2(2,1);\n\n    int sharedIndex = lid.y + 2;\n\n    // Carica pixel centrale\n    int yCenter = clamp(gid.y, 0, size.y - 1);\n    column[sharedIndex] = imageLoad(level0, ivec2(gid.x, yCenter)).g;\n\n    // Bordi superiori\n    if (lid.y < 2) {\n        int borderY = clamp(gid.y - 2, 0, size.y - 1);\n        column[lid.y] = imageLoad(level0, ivec2(gid.x, borderY)).g;\n    }\n\n    // Bordi inferiori\n    if (lid.y >= 14) {\n        int borderY = clamp(gid.y + 2, 0, size.y - 1);\n        column[sharedIndex + 2] = imageLoad(level0, ivec2(gid.x, borderY)).g;\n    }\n\n    barrier();\n\n    // Applica kernel Gaussiano verticale 5x1\n    float kernel[5] = float[](1.0, 4.0, 6.0, 4.0, 1.0);\n\n    float res = 0.0;\n    for (int i = -2; i <= 2; ++i) {\n        res += column[sharedIndex + i] * kernel[i + 2];\n    }\n    res /= 16.0;\n\n    // Scrivi risultato\n    if (gid.x < size.x && gid.y < size.y && gid.y % 2 == 0) {\n        ivec2 halfCoord = gid / ivec2(1,2);\n        imageStore(level1, halfCoord, vec4(res));\n    }\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1290.350864887237549, 810.526308059692383, 165.0, 22.0 ],
					"text" : "jit.gpu.shader @name blurH0",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 1) in;\n\nlayout(binding = 0, rgba32f) uniform image2D level0;\n\n// +4 per bordi a sinistra e destra\nshared float tile[16 + 4];\n\nvoid main() {\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    ivec2 size = imageSize(level0);\n\n    int sharedIndex = lid.x + 2;\n\n    // Carica pixel centrale\n    int globalX = clamp(gid.x, 0, size.x - 1);\n    tile[sharedIndex] = imageLoad(level0, ivec2(globalX, gid.y)).r;\n\n    // Carica bordi sinistri\n    if (lid.x < 2) {\n        int borderX = clamp(gid.x - 2, 0, size.x - 1);\n        tile[lid.x] = imageLoad(level0, ivec2(borderX, gid.y)).r;\n    }\n\n    // Carica bordi destri\n    if (lid.x >= 14) {\n        int borderX = clamp(gid.x + 2, 0, size.x - 1);\n        tile[sharedIndex + 2] = imageLoad(level0, ivec2(borderX, gid.y)).r;\n    }\n\n    // Sincronizza per garantire che tutta la shared sia caricata\n    barrier();\n\n    // Applica kernel gaussiano 5x1\n    float kernel[5] = float[](1.0, 4.0, 6.0, 4.0, 1.0);\n\n    float res = 0;\n    for (int i = -2; i <= 2; ++i) {\n        res += tile[sharedIndex + i] * kernel[i + 2];\n    }\n\n    res /= 16;\n\n    // Scrivi risultato\n    if (gid.x < size.x && gid.y < size.y && gid.x % 2 == 0) {\n        ivec2 halfCoord = gid / ivec2(2,1);\n        float original = imageLoad(level0, halfCoord).r;\n        imageStore(level0, halfCoord, vec4(original, res, 0,0));\n    }\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 817.543851852416992, 810.526308059692383, 399.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurH0 @threads 120 1080 1 @readwrite level0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 550.877187728881836, 1465.789459705352783, 393.0, 22.0 ],
					"text" : "jit.gpu.image @name level3 @format RGBA32_FLOAT @dim 240 135 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 550.877187728881836, 1438.596477508544922, 393.0, 22.0 ],
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
					"patching_rect" : [ 550.877187728881836, 1409.649109363555908, 393.0, 22.0 ],
					"text" : "jit.gpu.image @name level1 @format RGBA32_FLOAT @dim 960 540 1"
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
					"patching_rect" : [ 43.859648704528809, 55.263157367706299, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 108.982455730438232, 696.49122142791748, 404.0, 22.0 ],
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
					"patching_rect" : [ 108.982455730438232, 655.2631516456604, 175.0, 22.0 ],
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
					"patching_rect" : [ 43.859648704528809, 203.508769989013672, 58.0, 22.0 ],
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
					"patching_rect" : [ 43.859648704528809, 238.596488952636719, 233.0, 22.0 ],
					"text" : "output_texture 1, vol 0, unique 1, loop 1, 1"
				}

			}
, 			{
				"box" : 				{
					"clipheight" : 30.428571428571427,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "/Users/matteomarson/Downloads/computer/161423_blue_circuit_board_CGI_By_jmg_visuals_Artlist_HD.mp4",
								"filename" : "161423_blue_circuit_board_CGI_By_jmg_visuals_Artlist_HD.mp4",
								"filekind" : "moviefile",
								"id" : "u698000527",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1,
									"vol" : 0,
									"unique" : 1
								}

							}
, 							{
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
, 							{
								"absolutepath" : "/Users/matteomarson/Downloads/computer/231351_Computers_Printing_Plates_Tech_Electronics_By_Sjoerd_Wess_Artlist_HD.mp4",
								"filename" : "231351_Computers_Printing_Plates_Tech_Electronics_By_Sjoerd_Wess_Artlist_HD.mp4",
								"filekind" : "moviefile",
								"id" : "u460002352",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1,
									"vol" : 0,
									"unique" : 1
								}

							}
, 							{
								"absolutepath" : "sunflower.mp4",
								"filename" : "sunflower.mp4",
								"filekind" : "moviefile",
								"id" : "u613011804",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1,
									"vol" : 0,
									"unique" : 1
								}

							}
, 							{
								"absolutepath" : "/Users/matteomarson/Downloads/computer/161425_yellow_circuit_board_CGI_By_jmg_visuals_Artlist_HD.mp4",
								"filename" : "161425_yellow_circuit_board_CGI_By_jmg_visuals_Artlist_HD.mp4",
								"filekind" : "moviefile",
								"id" : "u023002147",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1,
									"vol" : 0,
									"unique" : 1
								}

							}
, 							{
								"absolutepath" : "Tennis-ball.mp4",
								"filename" : "Tennis-ball.mp4",
								"filekind" : "moviefile",
								"id" : "u695009989",
								"loop" : 1,
								"content_state" : 								{
									"vol" : 0,
									"unique" : 1,
									"loop" : 1
								}

							}
, 							{
								"absolutepath" : "/Users/matteomarson/Downloads/854336-hd_1920_1080_24fps.mp4",
								"filename" : "854336-hd_1920_1080_24fps.mp4",
								"filekind" : "moviefile",
								"id" : "u020002465",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1,
									"vol" : 0,
									"unique" : 1
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
					"patching_rect" : [ 43.859648704528809, 296.491225242614746, 297.0, 220.0 ],
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
					"patching_rect" : [ 764.912273406982422, 390.350873470306396, 193.0, 22.0 ],
					"text" : "jit.gpu.totexture @source flowOut0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 550.877187728881836, 1380.701741218566895, 406.0, 22.0 ],
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
					"patching_rect" : [ 1291.228057861328125, 768.421045303344727, 179.0, 22.0 ],
					"text" : "jit.gpu.shader @name rgb2luma",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16, local_size_z = 1) in;\n\nlayout(binding = 0, rgba32f) readonly uniform image2D inImg;\nlayout(binding = 1, rgba32f) writeonly uniform image2D level0;\n\nvoid main() {\n\n    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(level0);\n\n    if(gid.x >= size.x || gid.y >= size.y) return;\n\n    vec3 col = imageLoad(inImg, gid).rgb;\n    col = floor(col*256);\n    float luma = (col.x + col.y*256 + col.z*65536)/16777216;\n    //float luma = dot(vec3(0.299, 0.587, 0.114), col);\n    //float luma = length(col);\n    imageStore(level0, gid, vec4(luma));\n}",
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
					"patching_rect" : [ 817.543851852416992, 709.649116039276123, 449.0, 22.0 ],
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
					"patching_rect" : [ 43.859648704528809, 97.368420124053955, 197.0, 22.0 ],
					"text" : "jit.world @floating 1 @size 960 540"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 1 ],
					"source" : [ "obj-100", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 1 ],
					"source" : [ "obj-103", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 1 ],
					"source" : [ "obj-105", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 1 ],
					"source" : [ "obj-107", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 1 ],
					"source" : [ "obj-109", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 1 ],
					"source" : [ "obj-111", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"source" : [ "obj-113", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 1 ],
					"source" : [ "obj-117", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 1 ],
					"source" : [ "obj-120", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 1 ],
					"source" : [ "obj-124", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 1 ],
					"source" : [ "obj-128", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-193", 1 ],
					"source" : [ "obj-131", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 1 ],
					"source" : [ "obj-134", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 1 ],
					"source" : [ "obj-138", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-364", 1 ],
					"source" : [ "obj-140", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 1 ],
					"source" : [ "obj-142", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-207", 1 ],
					"source" : [ "obj-145", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 1 ],
					"source" : [ "obj-148", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 1 ],
					"source" : [ "obj-152", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-305", 1 ],
					"source" : [ "obj-156", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-221", 1 ],
					"source" : [ "obj-159", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 1 ],
					"source" : [ "obj-162", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-162", 1 ],
					"source" : [ "obj-166", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-389", 1 ],
					"source" : [ "obj-170", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 1 ],
					"source" : [ "obj-172", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 1 ],
					"source" : [ "obj-173", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 1 ],
					"source" : [ "obj-174", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 1 ],
					"source" : [ "obj-176", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 1 ],
					"source" : [ "obj-177", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 1 ],
					"source" : [ "obj-178", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 1 ],
					"source" : [ "obj-180", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 1 ],
					"source" : [ "obj-181", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 1 ],
					"source" : [ "obj-182", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-243", 1 ],
					"source" : [ "obj-184", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 1 ],
					"source" : [ "obj-185", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 1 ],
					"source" : [ "obj-186", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-200", 1 ],
					"source" : [ "obj-188", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 1 ],
					"source" : [ "obj-190", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 1 ],
					"source" : [ "obj-193", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-254", 1 ],
					"source" : [ "obj-195", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 1 ],
					"source" : [ "obj-197", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 1 ],
					"source" : [ "obj-200", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 1 ],
					"source" : [ "obj-202", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-202", 1 ],
					"source" : [ "obj-204", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 1 ],
					"source" : [ "obj-207", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-268", 1 ],
					"source" : [ "obj-209", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 1 ],
					"source" : [ "obj-211", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-211", 1 ],
					"source" : [ "obj-214", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 1 ],
					"source" : [ "obj-216", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 1 ],
					"source" : [ "obj-218", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 1 ],
					"source" : [ "obj-221", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 1 ],
					"source" : [ "obj-223", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 1 ],
					"source" : [ "obj-225", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-225", 1 ],
					"source" : [ "obj-228", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"midpoints" : [ 561.078941822052002, 532.0, 644.903160572052002, 532.0, 644.903160572052002, 440.877188682556152, 591.078941822052002, 440.877188682556152 ],
					"order" : 1,
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-342", 0 ],
					"order" : 0,
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-230", 1 ],
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 1 ],
					"source" : [ "obj-233", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-233", 1 ],
					"source" : [ "obj-234", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-234", 1 ],
					"source" : [ "obj-235", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-237", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 1 ],
					"source" : [ "obj-238", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-238", 1 ],
					"source" : [ "obj-239", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-350", 1 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-247", 1 ],
					"source" : [ "obj-241", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 1 ],
					"source" : [ "obj-242", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-242", 1 ],
					"source" : [ "obj-243", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"source" : [ "obj-245", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 1 ],
					"source" : [ "obj-246", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-246", 1 ],
					"source" : [ "obj-247", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 1 ],
					"source" : [ "obj-249", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-348", 1 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-249", 1 ],
					"source" : [ "obj-251", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-251", 1 ],
					"source" : [ "obj-254", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"source" : [ "obj-256", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 1 ],
					"source" : [ "obj-258", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 1 ],
					"source" : [ "obj-261", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-275", 1 ],
					"source" : [ "obj-263", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 1 ],
					"source" : [ "obj-265", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 1 ],
					"source" : [ "obj-268", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"source" : [ "obj-270", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-270", 1 ],
					"source" : [ "obj-272", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 1 ],
					"source" : [ "obj-275", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-289", 1 ],
					"source" : [ "obj-277", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-277", 1 ],
					"source" : [ "obj-279", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-279", 1 ],
					"source" : [ "obj-282", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"source" : [ "obj-284", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-284", 1 ],
					"source" : [ "obj-286", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-286", 1 ],
					"source" : [ "obj-289", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-296", 0 ],
					"source" : [ "obj-292", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-293", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-294", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-293", 0 ],
					"source" : [ "obj-295", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-370", 2 ],
					"source" : [ "obj-296", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 1 ],
					"source" : [ "obj-298", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-298", 1 ],
					"source" : [ "obj-301", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-301", 1 ],
					"source" : [ "obj-305", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 1 ],
					"source" : [ "obj-307", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-307", 1 ],
					"source" : [ "obj-309", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-309", 1 ],
					"source" : [ "obj-312", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-326", 1 ],
					"source" : [ "obj-314", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 1 ],
					"source" : [ "obj-316", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-316", 1 ],
					"source" : [ "obj-319", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-333", 1 ],
					"source" : [ "obj-321", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 1 ],
					"source" : [ "obj-323", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-323", 1 ],
					"source" : [ "obj-326", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 1 ],
					"source" : [ "obj-328", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-328", 1 ],
					"source" : [ "obj-330", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-330", 1 ],
					"source" : [ "obj-333", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-336", 0 ],
					"source" : [ "obj-335", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-117", 0 ],
					"order" : 20,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-131", 0 ],
					"order" : 15,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-145", 0 ],
					"order" : 10,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-159", 0 ],
					"order" : 7,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-172", 0 ],
					"order" : 28,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-176", 0 ],
					"order" : 27,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-180", 0 ],
					"order" : 24,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-184", 0 ],
					"order" : 23,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-188", 0 ],
					"order" : 17,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-195", 0 ],
					"order" : 16,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-202", 0 ],
					"order" : 11,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-209", 0 ],
					"order" : 12,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-216", 0 ],
					"order" : 6,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-223", 0 ],
					"order" : 5,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-233", 0 ],
					"order" : 26,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-237", 0 ],
					"order" : 25,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-241", 0 ],
					"order" : 22,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-245", 0 ],
					"order" : 21,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-249", 0 ],
					"order" : 18,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-256", 0 ],
					"order" : 19,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-263", 0 ],
					"order" : 13,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-270", 0 ],
					"order" : 14,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-277", 0 ],
					"order" : 8,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-284", 0 ],
					"order" : 9,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-298", 0 ],
					"order" : 0,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-307", 0 ],
					"order" : 1,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-314", 0 ],
					"order" : 2,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-321", 0 ],
					"order" : 3,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-328", 0 ],
					"order" : 4,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.176470588235294, 0.376470588235294, 0.631372549019608, 1.0 ],
					"destination" : [ "obj-39", 0 ],
					"order" : 29,
					"source" : [ "obj-336", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-337", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-354", 1 ],
					"source" : [ "obj-348", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-355", 1 ],
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-352", 1 ],
					"source" : [ "obj-350", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-368", 1 ],
					"source" : [ "obj-352", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-377", 1 ],
					"source" : [ "obj-354", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-357", 1 ],
					"source" : [ "obj-355", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-379", 1 ],
					"source" : [ "obj-357", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-360", 1 ],
					"source" : [ "obj-358", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-381", 1 ],
					"source" : [ "obj-360", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-363", 1 ],
					"source" : [ "obj-361", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-383", 1 ],
					"source" : [ "obj-363", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-366", 1 ],
					"source" : [ "obj-364", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-385", 1 ],
					"source" : [ "obj-366", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 1 ],
					"source" : [ "obj-368", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 0 ],
					"source" : [ "obj-369", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-371", 0 ],
					"source" : [ "obj-370", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-335", 0 ],
					"source" : [ "obj-371", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-391", 1 ],
					"source" : [ "obj-372", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-370", 0 ],
					"source" : [ "obj-373", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-370", 1 ],
					"source" : [ "obj-374", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-374", 0 ],
					"source" : [ "obj-375", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-373", 0 ],
					"source" : [ "obj-376", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-372", 1 ],
					"source" : [ "obj-377", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-393", 1 ],
					"source" : [ "obj-378", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-378", 1 ],
					"source" : [ "obj-379", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-395", 1 ],
					"source" : [ "obj-380", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-380", 1 ],
					"source" : [ "obj-381", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-397", 1 ],
					"source" : [ "obj-382", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-382", 1 ],
					"source" : [ "obj-383", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-399", 1 ],
					"source" : [ "obj-384", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-384", 1 ],
					"source" : [ "obj-385", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-337", 0 ],
					"source" : [ "obj-387", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 1 ],
					"source" : [ "obj-388", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-388", 1 ],
					"source" : [ "obj-389", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 1 ],
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 1 ],
					"source" : [ "obj-390", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-390", 1 ],
					"source" : [ "obj-391", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 1 ],
					"source" : [ "obj-392", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-392", 1 ],
					"source" : [ "obj-393", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 1 ],
					"source" : [ "obj-394", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-394", 1 ],
					"source" : [ "obj-395", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 1 ],
					"source" : [ "obj-396", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-396", 1 ],
					"source" : [ "obj-397", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-398", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-398", 1 ],
					"source" : [ "obj-399", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 1 ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"source" : [ "obj-46", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-358", 1 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-10", 0 ],
					"order" : 151,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-100", 0 ],
					"order" : 111,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-103", 0 ],
					"order" : 141,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-105", 0 ],
					"order" : 140,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-107", 0 ],
					"order" : 139,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-109", 0 ],
					"order" : 138,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-111", 0 ],
					"order" : 137,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-113", 0 ],
					"order" : 131,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-117", 0 ],
					"order" : 91,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-120", 0 ],
					"order" : 92,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-124", 0 ],
					"order" : 93,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-128", 0 ],
					"order" : 86,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-131", 0 ],
					"order" : 68,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-134", 0 ],
					"order" : 69,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-138", 0 ],
					"order" : 70,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-140", 0 ],
					"order" : 18,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-142", 0 ],
					"order" : 67,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-145", 0 ],
					"order" : 45,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-148", 0 ],
					"order" : 46,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-152", 0 ],
					"order" : 47,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-156", 0 ],
					"order" : 34,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-159", 0 ],
					"order" : 28,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-162", 0 ],
					"order" : 29,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-166", 0 ],
					"order" : 30,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-170", 0 ],
					"order" : 133,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-172", 0 ],
					"order" : 124,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-173", 0 ],
					"order" : 125,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-174", 0 ],
					"order" : 126,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-176", 0 ],
					"order" : 121,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-177", 0 ],
					"order" : 122,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-178", 0 ],
					"order" : 123,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-180", 0 ],
					"order" : 108,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-181", 0 ],
					"order" : 109,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-182", 0 ],
					"order" : 110,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-184", 0 ],
					"order" : 105,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-185", 0 ],
					"order" : 106,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-186", 0 ],
					"order" : 107,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-188", 0 ],
					"order" : 74,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-190", 0 ],
					"order" : 75,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-193", 0 ],
					"order" : 76,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-195", 0 ],
					"order" : 71,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-197", 0 ],
					"order" : 72,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-200", 0 ],
					"order" : 73,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-202", 0 ],
					"order" : 48,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-204", 0 ],
					"order" : 49,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-207", 0 ],
					"order" : 50,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-209", 0 ],
					"order" : 51,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-211", 0 ],
					"order" : 52,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-214", 0 ],
					"order" : 53,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-216", 0 ],
					"order" : 25,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-218", 0 ],
					"order" : 26,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-221", 0 ],
					"order" : 27,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-223", 0 ],
					"order" : 22,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-225", 0 ],
					"order" : 23,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-228", 0 ],
					"order" : 24,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-233", 0 ],
					"order" : 118,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-234", 0 ],
					"order" : 119,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-235", 0 ],
					"order" : 120,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-237", 0 ],
					"order" : 115,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-238", 0 ],
					"order" : 116,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-239", 0 ],
					"order" : 117,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-24", 0 ],
					"order" : 114,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-241", 0 ],
					"order" : 102,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-242", 0 ],
					"order" : 103,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-243", 0 ],
					"order" : 104,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-245", 0 ],
					"order" : 99,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-246", 0 ],
					"order" : 100,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-247", 0 ],
					"order" : 101,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-249", 0 ],
					"order" : 77,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-25", 0 ],
					"order" : 98,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-251", 0 ],
					"order" : 78,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-254", 0 ],
					"order" : 79,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-256", 0 ],
					"order" : 83,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-258", 0 ],
					"order" : 84,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-261", 0 ],
					"order" : 85,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-263", 0 ],
					"order" : 54,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-265", 0 ],
					"order" : 55,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-268", 0 ],
					"order" : 56,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-270", 0 ],
					"order" : 62,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-272", 0 ],
					"order" : 63,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-275", 0 ],
					"order" : 64,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-277", 0 ],
					"order" : 31,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-279", 0 ],
					"order" : 32,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-282", 0 ],
					"order" : 33,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-284", 0 ],
					"order" : 40,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-286", 0 ],
					"order" : 41,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-289", 0 ],
					"order" : 42,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-29", 0 ],
					"order" : 153,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-298", 0 ],
					"order" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-301", 0 ],
					"order" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-305", 0 ],
					"order" : 2,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-307", 0 ],
					"order" : 3,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-309", 0 ],
					"order" : 4,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-312", 0 ],
					"order" : 5,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-314", 0 ],
					"order" : 6,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-316", 0 ],
					"order" : 7,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-319", 0 ],
					"order" : 8,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-32", 0 ],
					"order" : 130,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-321", 0 ],
					"order" : 12,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-323", 0 ],
					"order" : 13,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-326", 0 ],
					"order" : 14,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-328", 0 ],
					"order" : 19,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-330", 0 ],
					"order" : 20,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-333", 0 ],
					"order" : 21,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-348", 0 ],
					"order" : 97,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-35", 0 ],
					"order" : 82,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-350", 0 ],
					"order" : 129,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-352", 0 ],
					"order" : 128,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-354", 0 ],
					"order" : 96,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-355", 0 ],
					"order" : 81,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-357", 0 ],
					"order" : 80,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-358", 0 ],
					"order" : 60,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-360", 0 ],
					"order" : 59,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-361", 0 ],
					"order" : 38,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-363", 0 ],
					"order" : 37,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-364", 0 ],
					"order" : 17,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-366", 0 ],
					"order" : 11,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-368", 0 ],
					"order" : 134,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-37", 0 ],
					"order" : 146,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-372", 0 ],
					"order" : 112,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-377", 0 ],
					"order" : 113,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-378", 0 ],
					"order" : 87,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-379", 0 ],
					"order" : 88,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-380", 0 ],
					"order" : 57,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-381", 0 ],
					"order" : 58,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-382", 0 ],
					"order" : 35,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-383", 0 ],
					"order" : 36,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-384", 0 ],
					"order" : 10,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-385", 0 ],
					"order" : 16,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-388", 0 ],
					"order" : 135,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-389", 0 ],
					"order" : 136,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-39", 0 ],
					"order" : 127,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-390", 0 ],
					"order" : 94,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-391", 0 ],
					"order" : 95,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-392", 0 ],
					"order" : 89,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-393", 0 ],
					"order" : 90,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-394", 0 ],
					"order" : 65,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-395", 0 ],
					"order" : 66,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-396", 0 ],
					"order" : 43,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-397", 0 ],
					"order" : 44,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-398", 0 ],
					"order" : 9,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-399", 0 ],
					"order" : 15,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-40", 0 ],
					"order" : 150,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-43", 0 ],
					"order" : 149,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-46", 0 ],
					"order" : 145,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-48", 0 ],
					"order" : 148,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"order" : 152,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-51", 0 ],
					"order" : 144,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-55", 0 ],
					"order" : 61,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-57", 0 ],
					"order" : 147,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-60", 0 ],
					"order" : 143,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-63", 0 ],
					"order" : 132,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-75", 0 ],
					"order" : 159,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-80", 0 ],
					"order" : 158,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-82", 0 ],
					"order" : 157,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-84", 0 ],
					"order" : 156,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-86", 0 ],
					"order" : 155,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-88", 0 ],
					"order" : 154,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-89", 0 ],
					"order" : 39,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-99", 0 ],
					"order" : 142,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 1 ],
					"source" : [ "obj-57", 1 ]
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
					"destination" : [ "obj-57", 1 ],
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 1 ],
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-230", 0 ],
					"order" : 2,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 1 ],
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-293", 0 ],
					"order" : 0,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 1,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 1 ],
					"source" : [ "obj-80", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 1 ],
					"source" : [ "obj-82", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 1 ],
					"source" : [ "obj-84", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 1 ],
					"source" : [ "obj-86", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"source" : [ "obj-88", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-361", 1 ],
					"source" : [ "obj-89", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 1 ],
					"source" : [ "obj-99", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "161423_blue_circuit_board_CGI_By_jmg_visuals_Artlist_HD.mp4",
				"bootpath" : "~/Downloads/computer",
				"patcherrelativepath" : "../../../Downloads/computer",
				"type" : "mpg4",
				"implicit" : 1
			}
, 			{
				"name" : "161425_yellow_circuit_board_CGI_By_jmg_visuals_Artlist_HD.mp4",
				"bootpath" : "~/Downloads/computer",
				"patcherrelativepath" : "../../../Downloads/computer",
				"type" : "mpg4",
				"implicit" : 1
			}
, 			{
				"name" : "231351_Computers_Printing_Plates_Tech_Electronics_By_Sjoerd_Wess_Artlist_HD.mp4",
				"bootpath" : "~/Downloads/computer",
				"patcherrelativepath" : "../../../Downloads/computer",
				"type" : "mpg4",
				"implicit" : 1
			}
, 			{
				"name" : "854336-hd_1920_1080_24fps.mp4",
				"bootpath" : "~/Downloads",
				"patcherrelativepath" : "../../../Downloads",
				"type" : "mpg4",
				"implicit" : 1
			}
, 			{
				"name" : "Tennis-ball.mp4",
				"bootpath" : "~/Documents/Max 9/Packages/cv.jit/media",
				"patcherrelativepath" : "../../Max 9/Packages/cv.jit/media",
				"type" : "mpg4",
				"implicit" : 1
			}
, 			{
				"name" : "chickens.mp4",
				"bootpath" : "C74:/media/jitter",
				"type" : "mpg4",
				"implicit" : 1
			}
, 			{
				"name" : "sunflower.mp4",
				"bootpath" : "C74:/media/jitter",
				"type" : "mpg4",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
