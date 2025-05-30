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
					"filename" : "jit.fx.cf.bilateral.jxs",
					"id" : "obj-339",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 1043.0, 321.0, 88.0, 22.0 ],
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
					"id" : "obj-338",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 531.0, 24.0, 133.0, 22.0 ],
					"text" : "qmetro 4000 @active 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-337",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1742.0, 133.0, 53.0, 22.0 ],
					"text" : "* 0.0001"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1742.0, 166.0, 127.0, 22.0 ],
					"text" : "set threshold $1, bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-292",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1742.0, 45.0, 100.0, 22.0 ],
					"text" : "loadmess 0.0058"
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
					"patching_rect" : [ 1742.0, 88.0, 127.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-335",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 1742.0, 201.0, 98.0, 22.0 ],
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
					"patching_rect" : [ 1742.0, 238.0, 213.0, 22.0 ],
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
					"patching_rect" : [ 6931.5, 1578.0, 507.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow0 @threads 120 68 1 @read gradient0 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-329",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6851.5, 1578.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 6931.5, 1532.0, 573.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad0 @threads 120 68 1 @read level0 @write gradient0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-331",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6877.5, 1533.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-332",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6882.5, 1480.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6931.5, 1479.0, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap0 @threads 120 68 1 @read flow0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-334",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7136.5, 1450.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6934.0, 1387.0, 507.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow0 @threads 120 68 1 @read gradient0 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-322",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6854.0, 1387.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 6934.0, 1341.0, 573.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad0 @threads 120 68 1 @read level0 @write gradient0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-324",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6880.0, 1342.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-325",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6885.0, 1289.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6934.0, 1288.0, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap0 @threads 120 68 1 @read flow0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-327",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7139.0, 1259.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6936.5, 1212.0, 507.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow0 @threads 120 68 1 @read gradient0 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-315",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6856.5, 1212.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 6936.5, 1166.0, 573.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad0 @threads 120 68 1 @read level0 @write gradient0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-317",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6882.5, 1167.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-318",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6887.5, 1114.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6936.5, 1113.0, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap0 @threads 120 68 1 @read flow0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-320",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7141.5, 1084.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6939.0, 971.0, 507.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow0 @threads 120 68 1 @read gradient0 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-308",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6859.0, 971.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 6939.0, 925.0, 573.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad0 @threads 120 68 1 @read level0 @write gradient0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-310",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6885.0, 926.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-311",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6890.0, 873.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6939.0, 872.0, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap0 @threads 120 68 1 @read flow0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-313",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7144.0, 843.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 7547.0, 765.0, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow0",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient0;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow0; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient0);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient0, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow0, coord).xy;\n    imageStore(flow0, coord, vec4(currentFlow + delta, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 6944.0, 765.0, 507.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow0 @threads 120 68 1 @read gradient0 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-299",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6864.0, 765.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 7547.0, 719.0, 160.0, 22.0 ],
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
					"patching_rect" : [ 6944.0, 719.0, 573.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad0 @threads 120 68 1 @read level0 @write gradient0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-302",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6890.0, 720.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-303",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6895.0, 667.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 7547.0, 666.0, 162.0, 22.0 ],
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
					"patching_rect" : [ 6944.0, 666.0, 477.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap0 @threads 120 68 1 @read flow0 @readwrite prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-306",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7149.0, 637.0, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 263.0, 25.0, 93.0, 22.0 ],
					"text" : "vdevice 1, open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 226.0, 101.0, 359.0, 22.0 ],
					"text" : "jit.grab @output_texture 1 @adapt 0 @dim 1920 1080 @unique 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-294",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 660.0, 35.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1435.0, 65.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
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
					"patching_rect" : [ 483.0, 62.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-293",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 356.0, 251.0, 344.0, 22.0 ],
					"text" : "jit.gl.texture @dim 1920 1080 @adapt 0 @type float32 @thru 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-291",
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
					"patching_rect" : [ 669.0, 331.0, 49.0, 22.0 ],
					"text" : "jit.gl.pix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-284",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6006.0, 1603.0, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow1 @threads 60 34 1 @read gradient1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-285",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5926.0, 1603.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 6006.0, 1557.0, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad1 @threads 60 34 1 @read level1 @write gradient1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-287",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5952.0, 1558.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-288",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5957.0, 1505.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6006.0, 1504.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap1 @threads 60 34 1 @read flow1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-290",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6211.0, 1475.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6008.5, 1392.0, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow1 @threads 60 34 1 @read gradient1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-278",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5928.5, 1392.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 6008.5, 1346.0, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad1 @threads 60 34 1 @read level1 @write gradient1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-280",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5954.5, 1347.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-281",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5959.5, 1294.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6008.5, 1293.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap1 @threads 60 34 1 @read flow1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-283",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6213.5, 1264.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 5027.0, 1565.0, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow2 @threads 30 17 1 @read gradient2 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-271",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4947.0, 1565.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 5027.0, 1519.0, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad2 @threads 30 17 1 @read level2 @write gradient2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-273",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4973.0, 1520.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-274",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4978.0, 1467.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 5027.0, 1466.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap2 @threads 30 17 1 @read flow2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-276",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5232.0, 1437.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 5029.5, 1334.0, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow2 @threads 30 17 1 @read gradient2 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-264",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4949.5, 1334.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 5029.5, 1288.0, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad2 @threads 30 17 1 @read level2 @write gradient2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-266",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4975.5, 1289.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-267",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4980.5, 1236.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 5029.5, 1235.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap2 @threads 30 17 1 @read flow2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-269",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5234.5, 1206.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 4106.5, 1551.0, 493.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow3 @threads 15 9 1 @read gradient3 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-257",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4026.5, 1551.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 4106.5, 1505.0, 560.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad3 @threads 15 9 1 @read level3 @write gradient3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-259",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4052.5, 1506.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-260",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4057.5, 1453.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 4106.5, 1452.0, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap3 @threads 15 9 1 @read flow3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-262",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4311.5, 1423.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 4109.0, 1352.0, 493.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow3 @threads 15 9 1 @read gradient3 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-250",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4029.0, 1352.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 4109.0, 1306.0, 560.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad3 @threads 15 9 1 @read level3 @write gradient3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-252",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4055.0, 1307.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-253",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4060.0, 1254.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 4109.0, 1253.0, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap3 @threads 15 9 1 @read flow3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-255",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4314.0, 1224.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 3207.0, 1569.0, 487.0, 22.0 ],
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
					"patching_rect" : [ 3207.0, 1523.0, 553.0, 22.0 ],
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
					"patching_rect" : [ 3207.0, 1470.0, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap4 @threads 8 5 1 @read flow4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-248",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3412.0, 1441.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 3207.0, 1362.0, 487.0, 22.0 ],
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
					"patching_rect" : [ 3207.0, 1316.0, 553.0, 22.0 ],
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
					"patching_rect" : [ 3207.0, 1263.0, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap4 @threads 8 5 1 @read flow4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-244",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3412.0, 1234.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 2332.0, 1492.0, 487.0, 22.0 ],
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
					"patching_rect" : [ 2332.0, 1446.0, 553.0, 22.0 ],
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
					"patching_rect" : [ 2332.0, 1393.0, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap5 @threads 4 3 1 @read flow5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-240",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2537.0, 1364.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 2332.0, 1309.0, 487.0, 22.0 ],
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
					"patching_rect" : [ 2332.0, 1263.0, 553.0, 22.0 ],
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
					"patching_rect" : [ 2332.0, 1210.0, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap5 @threads 4 3 1 @read flow5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-236",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2537.0, 1181.0, 47.0, 20.0 ],
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
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 424.0, 487.0, 29.5, 22.0 ],
									"text" : "*"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 488.0, 365.0, 36.0, 22.0 ],
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
									"patching_rect" : [ 501.0, 335.0, 33.0, 22.0 ],
									"text" : "* 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 522.0, 298.0, 27.0, 22.0 ],
									"text" : "cos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 457.0, 29.0, 22.0 ],
									"text" : "% 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 343.0, 365.0, 29.5, 22.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 395.0, 287.0, 41.0, 22.0 ],
									"text" : "swiz y"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 287.0, 41.0, 22.0 ],
									"text" : "swiz x"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 357.0, 199.0, 32.0, 22.0 ],
									"text" : "floor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 334.0, 115.0, 29.0, 22.0 ],
									"text" : "/ 40"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 51.0, 27.0, 22.0 ],
									"text" : "cell"
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
									"patching_rect" : [ 176.0, 418.0, 35.0, 22.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
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
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 583.0, 205.0, 41.0, 22.0 ],
					"text" : "jit.gen"
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
					"patching_rect" : [ 583.0, 306.0, 49.0, 22.0 ],
					"text" : "jit.gl.pix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-230",
					"maxclass" : "newobj",
					"numinlets" : 3,
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
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 676.0, 341.0, 40.0, 22.0 ],
									"text" : "?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 292.0, 49.0, 22.0 ],
									"text" : "> 0.007"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 665.0, 226.0, 41.0, 22.0 ],
									"text" : "length"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 129.0, 28.0, 22.0 ],
									"text" : "in 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 345.0, 36.0, 22.0 ],
									"text" : "+ 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 427.0, 459.0, 35.0, 22.0 ],
									"text" : "/ dim"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 394.0, 25.0, 22.0 ],
									"text" : "0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 460.0, 341.0, 46.0, 22.0 ],
									"text" : "+ norm"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 522.0, 217.0, 47.0, 22.0 ],
									"text" : "!- norm"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 368.0, 377.0, 35.0, 22.0 ],
									"text" : "/ dim"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 380.0, 306.0, 32.0, 22.0 ],
									"text" : "floor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 371.0, 261.0, 36.0, 22.0 ],
									"text" : "* dim"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 496.0, 147.0, 33.0, 22.0 ],
									"text" : "* 0.5"
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
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 250.0, 23.0, 22.0 ],
									"text" : "* 5"
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
									"destination" : [ "obj-12", 0 ],
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
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-18", 0 ]
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
									"destination" : [ "obj-21", 1 ],
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
									"destination" : [ "obj-21", 2 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"order" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
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
 ]
					}
,
					"patching_rect" : [ 519.0, 415.0, 49.0, 22.0 ],
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
					"patching_rect" : [ 587.0, 93.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 580.0, 139.0, 159.0, 22.0 ],
					"text" : "jit.noise 4 float32 1920 1080"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 45.0, 396.0, 298.0, 22.0 ],
					"text" : "jit.gl.texture @dim 1920 1080 @adapt 0 @type float32"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-169",
					"maxclass" : "jit.fpsgui",
					"mode" : 3,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 376.0, 429.0, 80.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6011.0, 1213.0, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow1 @threads 60 34 1 @read gradient1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-224",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5931.0, 1213.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 6011.0, 1167.0, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad1 @threads 60 34 1 @read level1 @write gradient1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-226",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5957.0, 1168.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5962.0, 1115.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6011.0, 1114.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap1 @threads 60 34 1 @read flow1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-229",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6216.0, 1085.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6011.0, 985.0, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow1 @threads 60 34 1 @read gradient1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-217",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5931.0, 985.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 6011.0, 939.0, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad1 @threads 60 34 1 @read level1 @write gradient1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5957.0, 940.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5962.0, 887.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6011.0, 886.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap1 @threads 60 34 1 @read flow1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6216.0, 857.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 5032.0, 1147.0, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow2 @threads 30 17 1 @read gradient2 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-210",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4952.0, 1147.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 5032.0, 1101.0, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad2 @threads 30 17 1 @read level2 @write gradient2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4978.0, 1102.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-213",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4983.0, 1049.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 5032.0, 1048.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap2 @threads 30 17 1 @read flow2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-215",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5237.0, 1019.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 5034.5, 950.0, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow2 @threads 30 17 1 @read gradient2 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4954.5, 950.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 5034.5, 904.0, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad2 @threads 30 17 1 @read level2 @write gradient2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-205",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4980.5, 905.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4985.5, 852.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 5034.5, 851.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap2 @threads 30 17 1 @read flow2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5239.5, 822.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 4111.5, 1164.0, 493.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow3 @threads 15 9 1 @read gradient3 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4031.5, 1164.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 4111.5, 1118.0, 560.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad3 @threads 15 9 1 @read level3 @write gradient3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4057.5, 1119.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4062.5, 1066.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 4111.5, 1065.0, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap3 @threads 15 9 1 @read flow3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4316.5, 1036.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 4111.5, 961.0, 493.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow3 @threads 15 9 1 @read gradient3 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4031.5, 961.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 4111.5, 915.0, 560.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad3 @threads 15 9 1 @read level3 @write gradient3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4057.5, 916.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4062.5, 863.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 4111.5, 862.0, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap3 @threads 15 9 1 @read flow3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4316.5, 833.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 3207.0, 1173.0, 487.0, 22.0 ],
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
					"patching_rect" : [ 3207.0, 1127.0, 553.0, 22.0 ],
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
					"patching_rect" : [ 3207.0, 1074.0, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap4 @threads 8 5 1 @read flow4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3412.0, 1045.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 3207.0, 961.0, 487.0, 22.0 ],
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
					"patching_rect" : [ 3207.0, 915.0, 553.0, 22.0 ],
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
					"patching_rect" : [ 3207.0, 862.0, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap4 @threads 8 5 1 @read flow4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3412.0, 833.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 2332.0, 1120.0, 487.0, 22.0 ],
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
					"patching_rect" : [ 2332.0, 1074.0, 553.0, 22.0 ],
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
					"patching_rect" : [ 2332.0, 1021.0, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap5 @threads 4 3 1 @read flow5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2537.0, 992.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 2332.0, 943.0, 487.0, 22.0 ],
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
					"patching_rect" : [ 2332.0, 897.0, 553.0, 22.0 ],
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
					"patching_rect" : [ 2332.0, 844.0, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap5 @threads 4 3 1 @read flow5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2537.0, 815.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6562.5, 1701.0, 213.0, 22.0 ],
					"text" : "jit.gpu.shader @name upsampleFlow1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow1; // livello L+1\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow0; // livello L\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 sizeHigh = imageSize(flow0);\n    ivec2 sizeLow = imageSize(flow1);\n    if (coord.x >= sizeHigh.x || coord.y >= sizeHigh.y) return;\n\n    // Coord corrispondente nel livello più piccolo\n    vec2 uvLow = vec2(coord) / 2.0;\n\n    uvLow = clamp(uvLow, vec2(0.0), vec2(sizeLow - 1));\n    ivec2 iuv = ivec2(floor(uvLow));\n    vec2 f = fract(uvLow);\n\n    vec2 a = imageLoad(flow1, iuv).xy;\n    vec2 b = imageLoad(flow1, iuv + ivec2(1, 0)).xy;\n    vec2 c = imageLoad(flow1, iuv + ivec2(0, 1)).xy;\n    vec2 d = imageLoad(flow1, iuv + ivec2(1, 1)).xy;\n\n    vec2 ab = mix(a, b, f.x);\n    vec2 cd = mix(c, d, f.x);\n    vec2 upsampledFlow = mix(ab, cd, f.y);\n\n\n    //vec2 upsampledFlow = bilinearSampleVec2(flowLowRes, uvLow, sizeLow);\n\n    // Scala il flow (perché 1 px in low = 2 px in high)\n    upsampledFlow *= 2.0;\n\n    imageStore(flow0, coord, vec4(upsampledFlow, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 6007.5, 1701.0, 478.0, 22.0 ],
					"text" : "jit.gpu.compute @shader upsampleFlow1 @threads 120 68 1 @read flow1 @write flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5915.5, 1702.0, 85.0, 20.0 ],
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
					"patching_rect" : [ 6588.0, 765.0, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow1",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient1;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow1; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient1);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient1, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow1, coord).xy;\n    imageStore(flow1, coord, vec4(currentFlow + delta, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 6011.0, 765.0, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow1 @threads 60 34 1 @read gradient1 @readwrite flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5931.0, 765.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 6588.0, 719.0, 160.0, 22.0 ],
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
					"patching_rect" : [ 6011.0, 719.0, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad1 @threads 60 34 1 @read level1 @write gradient1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5957.0, 720.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5962.0, 667.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 6588.0, 666.0, 162.0, 22.0 ],
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
					"patching_rect" : [ 6011.0, 666.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap1 @threads 60 34 1 @read flow1 @readwrite prevlevel1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6216.0, 637.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 5575.0, 1705.0, 213.0, 22.0 ],
					"text" : "jit.gpu.shader @name upsampleFlow2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow2; // livello L+1\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow1; // livello L\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 sizeHigh = imageSize(flow1);\n    ivec2 sizeLow = imageSize(flow2);\n    if (coord.x >= sizeHigh.x || coord.y >= sizeHigh.y) return;\n\n    // Coord corrispondente nel livello più piccolo\n    vec2 uvLow = vec2(coord) / 2.0;\n\n    uvLow = clamp(uvLow, vec2(0.0), vec2(sizeLow - 1));\n    ivec2 iuv = ivec2(floor(uvLow));\n    vec2 f = fract(uvLow);\n\n    vec2 a = imageLoad(flow2, iuv).xy;\n    vec2 b = imageLoad(flow2, iuv + ivec2(1, 0)).xy;\n    vec2 c = imageLoad(flow2, iuv + ivec2(0, 1)).xy;\n    vec2 d = imageLoad(flow2, iuv + ivec2(1, 1)).xy;\n\n    vec2 ab = mix(a, b, f.x);\n    vec2 cd = mix(c, d, f.x);\n    vec2 upsampledFlow = mix(ab, cd, f.y);\n\n\n    //vec2 upsampledFlow = bilinearSampleVec2(flowLowRes, uvLow, sizeLow);\n\n    // Scala il flow (perché 1 px in low = 2 px in high)\n    upsampledFlow *= 2.0;\n\n    imageStore(flow1, coord, vec4(upsampledFlow, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 5020.0, 1705.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader upsampleFlow2 @threads 60 34 1 @read flow2 @write flow1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4928.0, 1706.0, 85.0, 20.0 ],
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
					"patching_rect" : [ 5612.0, 765.0, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow2",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient2;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow2; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient2);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient2, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow2, coord).xy;\n    imageStore(flow2, coord, vec4(currentFlow + delta, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 5037.0, 765.0, 500.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow2 @threads 30 17 1 @read gradient2 @readwrite flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4957.0, 765.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 5612.0, 719.0, 160.0, 22.0 ],
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
					"patching_rect" : [ 5037.0, 719.0, 566.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad2 @threads 30 17 1 @read level2 @write gradient2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4983.0, 720.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4988.0, 667.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 5612.0, 666.0, 162.0, 22.0 ],
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
					"patching_rect" : [ 5037.0, 666.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap2 @threads 30 17 1 @read flow2 @readwrite prevlevel2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5242.0, 637.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 4631.0, 1705.0, 213.0, 22.0 ],
					"text" : "jit.gpu.shader @name upsampleFlow3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow3; // livello L+1\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow2; // livello L\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 sizeHigh = imageSize(flow2);\n    ivec2 sizeLow = imageSize(flow3);\n    if (coord.x >= sizeHigh.x || coord.y >= sizeHigh.y) return;\n\n    // Coord corrispondente nel livello più piccolo\n    vec2 uvLow = vec2(coord) / 2.0;\n\n    uvLow = clamp(uvLow, vec2(0.0), vec2(sizeLow - 1));\n    ivec2 iuv = ivec2(floor(uvLow));\n    vec2 f = fract(uvLow);\n\n    vec2 a = imageLoad(flow3, iuv).xy;\n    vec2 b = imageLoad(flow3, iuv + ivec2(1, 0)).xy;\n    vec2 c = imageLoad(flow3, iuv + ivec2(0, 1)).xy;\n    vec2 d = imageLoad(flow3, iuv + ivec2(1, 1)).xy;\n\n    vec2 ab = mix(a, b, f.x);\n    vec2 cd = mix(c, d, f.x);\n    vec2 upsampledFlow = mix(ab, cd, f.y);\n\n\n    //vec2 upsampledFlow = bilinearSampleVec2(flowLowRes, uvLow, sizeLow);\n\n    // Scala il flow (perché 1 px in low = 2 px in high)\n    upsampledFlow *= 2.0;\n\n    imageStore(flow2, coord, vec4(upsampledFlow, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 4109.0, 1705.0, 471.0, 22.0 ],
					"text" : "jit.gpu.compute @shader upsampleFlow3 @threads 30 17 1 @read flow3 @write flow2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4017.0, 1706.0, 85.0, 20.0 ],
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
					"patching_rect" : [ 4704.0, 764.0, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow3",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient3;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow3; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient3);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient3, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow3, coord).xy;\n    imageStore(flow3, coord, vec4(currentFlow + delta, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 4114.0, 765.0, 493.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow3 @threads 15 9 1 @read gradient3 @readwrite flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4034.0, 765.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 4704.0, 718.0, 160.0, 22.0 ],
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
					"patching_rect" : [ 4114.0, 719.0, 560.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad3 @threads 15 9 1 @read level3 @write gradient3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4060.0, 720.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4065.0, 667.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 4704.0, 665.0, 162.0, 22.0 ],
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
					"patching_rect" : [ 4114.0, 666.0, 464.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap3 @threads 15 9 1 @read flow3 @readwrite prevlevel3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4319.0, 637.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 3715.0, 1705.0, 213.0, 22.0 ],
					"text" : "jit.gpu.shader @name upsampleFlow4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow4; // livello L+1\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow3; // livello L\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 sizeHigh = imageSize(flow3);\n    ivec2 sizeLow = imageSize(flow4);\n    if (coord.x >= sizeHigh.x || coord.y >= sizeHigh.y) return;\n\n    // Coord corrispondente nel livello più piccolo\n    vec2 uvLow = vec2(coord) / 2.0;\n\n    uvLow = clamp(uvLow, vec2(0.0), vec2(sizeLow - 1));\n    ivec2 iuv = ivec2(floor(uvLow));\n    vec2 f = fract(uvLow);\n\n    vec2 a = imageLoad(flow4, iuv).xy;\n    vec2 b = imageLoad(flow4, iuv + ivec2(1, 0)).xy;\n    vec2 c = imageLoad(flow4, iuv + ivec2(0, 1)).xy;\n    vec2 d = imageLoad(flow4, iuv + ivec2(1, 1)).xy;\n\n    vec2 ab = mix(a, b, f.x);\n    vec2 cd = mix(c, d, f.x);\n    vec2 upsampledFlow = mix(ab, cd, f.y);\n\n\n    //vec2 upsampledFlow = bilinearSampleVec2(flowLowRes, uvLow, sizeLow);\n\n    // Scala il flow (perché 1 px in low = 2 px in high)\n    upsampledFlow *= 2.0;\n\n    imageStore(flow3, coord, vec4(upsampledFlow, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 3207.0, 1705.0, 465.0, 22.0 ],
					"text" : "jit.gpu.compute @shader upsampleFlow4 @threads 15 9 1 @read flow4 @write flow3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3121.0, 888.0, 85.0, 20.0 ],
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
					"patching_rect" : [ 3782.0, 765.0, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow4",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient4;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow4; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient4);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient4, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow4, coord).xy;\n    imageStore(flow4, coord, vec4(currentFlow + delta, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 3211.0, 765.0, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow4 @threads 8 5 1 @read gradient4 @readwrite flow4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3131.0, 765.0, 68.0, 20.0 ],
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
					"patching_rect" : [ 3782.0, 719.0, 160.0, 22.0 ],
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
					"patching_rect" : [ 3211.0, 719.0, 553.0, 22.0 ],
					"text" : "jit.gpu.compute @shader grad4 @threads 8 5 1 @read level4 @write gradient4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3157.0, 720.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3162.0, 667.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 3782.0, 666.0, 162.0, 22.0 ],
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
					"patching_rect" : [ 3211.0, 666.0, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap4 @threads 8 5 1 @read flow4 @readwrite prevlevel4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3416.0, 637.0, 47.0, 20.0 ],
					"text" : "Level 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2499.5, 1662.0, 85.0, 33.0 ],
					"text" : "insert here flow refinment"
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
					"patching_rect" : [ 2825.5, 1705.0, 213.0, 22.0 ],
					"text" : "jit.gpu.shader @name upsampleFlow5",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D flow5; // livello L+1\nlayout(binding = 1, rgba32f) uniform writeonly image2D flow4; // livello L\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 sizeHigh = imageSize(flow4);\n    ivec2 sizeLow = imageSize(flow5);\n    if (coord.x >= sizeHigh.x || coord.y >= sizeHigh.y) return;\n\n    // Coord corrispondente nel livello più piccolo\n    vec2 uvLow = vec2(coord) / 2.0;\n\n    uvLow = clamp(uvLow, vec2(0.0), vec2(sizeLow - 1));\n    ivec2 iuv = ivec2(floor(uvLow));\n    vec2 f = fract(uvLow);\n\n    vec2 a = imageLoad(flow5, iuv).xy;\n    vec2 b = imageLoad(flow5, iuv + ivec2(1, 0)).xy;\n    vec2 c = imageLoad(flow5, iuv + ivec2(0, 1)).xy;\n    vec2 d = imageLoad(flow5, iuv + ivec2(1, 1)).xy;\n\n    vec2 ab = mix(a, b, f.x);\n    vec2 cd = mix(c, d, f.x);\n    vec2 upsampledFlow = mix(ab, cd, f.y);\n\n    // Scala il flow (perché 1 px in low = 2 px in high)\n    upsampledFlow *= 2.0;\n\n    imageStore(flow4, coord, vec4(upsampledFlow, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 2331.5, 1705.0, 458.0, 22.0 ],
					"text" : "jit.gpu.compute @shader upsampleFlow5 @threads 8 5 1 @read flow5 @write flow4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2242.5, 888.0, 85.0, 20.0 ],
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
					"patching_rect" : [ 45.0, 476.0, 85.0, 22.0 ],
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
					"patching_rect" : [ 1431.0, 315.0, 125.0, 22.0 ],
					"text" : "loadmess automatic 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1448.0, 94.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1345.0, 155.0, 154.0, 22.0 ],
					"text" : "combine flow 0 @triggers 1"
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
					"patching_rect" : [ 2889.0, 765.0, 196.0, 22.0 ],
					"text" : "jit.gpu.shader @name opticalFlow5",
					"textfile" : 					{
						"text" : "#version 460\nlayout(local_size_x = 16, local_size_y = 16) in;\n\nlayout(binding = 0, rgba32f) uniform readonly image2D gradient5;  // (Ix, Iy, It)\nlayout(binding = 1, rgba32f) uniform image2D flow5; // (du, dv)\nlayout(binding = 2) uniform flow_settings\n{\n    float threshold;\n}\nsettings;\n\nvoid main() {\n    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 size = imageSize(gradient5);\n    if (coord.x >= size.x || coord.y >= size.y) return;\n\n    float kernel[5][5] = float[5][5](\n        float[5](1, 4, 6, 4, 1),\n        float[5](4,16,24,16,4),\n        float[5](6,24,36,24,6),\n        float[5](4,16,24,16,4),\n        float[5](1, 4, 6, 4, 1)\n    );\n\n    float A11 = 0.0, A12 = 0.0, A22 = 0.0;\n    float b1  = 0.0, b2  = 0.0;\n\n    for (int dy = -2; dy <= 2; dy++) {\n        for (int dx = -2; dx <= 2; dx++) {\n            ivec2 offset = ivec2(dx, dy);\n            ivec2 pos = clamp(coord + offset, ivec2(0), size - 1);\n            vec3 g = imageLoad(gradient5, pos).rgb;\n\n            float Ix = g.r;\n            float Iy = g.g;\n            float It = g.b;\n            float w = kernel[dy + 2][dx + 2];\n\n            A11 += w * Ix * Ix;\n            A12 += w * Ix * Iy;\n            A22 += w * Iy * Iy;\n\n            b1  += w * Ix * It;\n            b2  += w * Iy * It;\n        }\n    }\n\n    // Risolvi il sistema lineare 2x2\n    float det = A11 * A22 - A12 * A12;\n    vec2 delta = vec2(0.0);\n\n    if (abs(det) > settings.threshold) {\n        delta.x = (A22 * -b1 + A12 * b2) / det;\n        delta.y = (A11 * -b2 + A12 * b1) / det;\n    }\n\n    //add delta to previous flow\n    vec2 currentFlow = imageLoad(flow5, coord).xy;\n    imageStore(flow5, coord, vec4(currentFlow + delta, 0.0, 0.0));\n}\n",
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
					"patching_rect" : [ 2332.0, 765.0, 487.0, 22.0 ],
					"text" : "jit.gpu.compute @shader opticalFlow5 @threads 4 3 1 @read gradient5 @readwrite flow5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2252.0, 765.0, 68.0, 20.0 ],
					"text" : "optical flow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1252.0, 94.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1149.0, 155.0, 176.0, 22.0 ],
					"text" : "combine gradient 0 @triggers 1"
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
					"patching_rect" : [ 2889.0, 719.0, 160.0, 22.0 ],
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
					"patching_rect" : [ 2332.0, 719.0, 553.0, 22.0 ],
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
					"patching_rect" : [ 1426.0, 1381.0, 398.0, 22.0 ],
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
					"patching_rect" : [ 1426.0, 1349.0, 405.0, 22.0 ],
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
					"patching_rect" : [ 1426.0, 1321.0, 412.0, 22.0 ],
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
					"patching_rect" : [ 1426.0, 1294.0, 412.0, 22.0 ],
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
					"patching_rect" : [ 1426.0, 1265.0, 412.0, 22.0 ],
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
					"patching_rect" : [ 1426.0, 1236.0, 425.0, 22.0 ],
					"text" : "jit.gpu.image @name gradient0 @format RGBA32_FLOAT @dim 1920 1080 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2278.0, 720.0, 52.0, 20.0 ],
					"text" : "gradient"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2283.0, 667.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 2889.0, 666.0, 162.0, 22.0 ],
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
					"patching_rect" : [ 2332.0, 666.0, 457.0, 22.0 ],
					"text" : "jit.gpu.compute @shader wrap5 @threads 4 3 1 @read flow5 @readwrite prevlevel5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2537.0, 637.0, 47.0, 20.0 ],
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
					"patching_rect" : [ 2035.0, 896.0, 184.0, 22.0 ],
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
					"patching_rect" : [ 1597.0, 896.0, 382.0, 22.0 ],
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
					"patching_rect" : [ 2035.0, 850.0, 184.0, 22.0 ],
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
					"patching_rect" : [ 1597.0, 850.0, 382.0, 22.0 ],
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
					"patching_rect" : [ 2035.0, 804.0, 184.0, 22.0 ],
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
					"patching_rect" : [ 1597.0, 804.0, 389.0, 22.0 ],
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
					"patching_rect" : [ 2035.0, 758.0, 184.0, 22.0 ],
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
					"patching_rect" : [ 1597.0, 758.0, 395.0, 22.0 ],
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
					"patching_rect" : [ 2035.0, 712.0, 184.0, 22.0 ],
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
					"patching_rect" : [ 1597.0, 712.0, 395.0, 22.0 ],
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
					"patching_rect" : [ 2035.0, 666.0, 184.0, 22.0 ],
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
					"patching_rect" : [ 1597.0, 666.0, 402.0, 22.0 ],
					"text" : "jit.gpu.compute @shader resetflow0 @threads 120 68 1 @readwrite flow0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1764.0, 630.0, 80.0, 20.0 ],
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
					"patching_rect" : [ 1001.0, 1381.0, 376.0, 22.0 ],
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
					"patching_rect" : [ 1001.0, 1349.0, 383.0, 22.0 ],
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
					"patching_rect" : [ 1001.0, 1321.0, 390.0, 22.0 ],
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
					"patching_rect" : [ 1001.0, 1294.0, 390.0, 22.0 ],
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
					"patching_rect" : [ 1001.0, 1265.0, 390.0, 22.0 ],
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
					"patching_rect" : [ 1001.0, 1236.0, 403.0, 22.0 ],
					"text" : "jit.gpu.image @name flow0 @format RGBA32_FLOAT @dim 1920 1080 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1045.0, 94.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 942.0, 155.0, 181.0, 22.0 ],
					"text" : "combine prevlevel 0 @triggers 1"
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
					"patching_rect" : [ 585.5, 1003.0, 161.0, 22.0 ],
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
					"patching_rect" : [ 84.5, 1003.0, 436.0, 22.0 ],
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
					"patching_rect" : [ 585.5, 955.0, 161.0, 22.0 ],
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
					"patching_rect" : [ 84.5, 955.0, 436.0, 22.0 ],
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
					"patching_rect" : [ 585.5, 910.0, 161.0, 22.0 ],
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
					"patching_rect" : [ 84.5, 910.0, 443.0, 22.0 ],
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
					"patching_rect" : [ 585.5, 862.0, 161.0, 22.0 ],
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
					"patching_rect" : [ 84.5, 862.0, 449.0, 22.0 ],
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
					"patching_rect" : [ 585.5, 810.0, 161.0, 22.0 ],
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
					"patching_rect" : [ 84.5, 810.0, 449.0, 22.0 ],
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
					"patching_rect" : [ 585.5, 764.0, 161.0, 22.0 ],
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
					"patching_rect" : [ 84.5, 764.0, 456.0, 22.0 ],
					"text" : "jit.gpu.compute @shader copy0 @threads 120 68 1 @read level0 @write prevlevel0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 196.5, 736.0, 272.0, 20.0 ],
					"text" : "copy the pyramid into the previous-frame pyramid"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 963.0, 639.0, 141.0, 20.0 ],
					"text" : "build the blurred pyramid"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 896.0, 532.0, 167.0, 20.0 ],
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
					"patching_rect" : [ 78.0, 1381.0, 403.0, 22.0 ],
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
					"patching_rect" : [ 78.0, 1349.0, 410.0, 22.0 ],
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
					"patching_rect" : [ 78.0, 1321.0, 416.0, 22.0 ],
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
					"patching_rect" : [ 78.0, 1294.0, 416.0, 22.0 ],
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
					"patching_rect" : [ 78.0, 1265.0, 416.0, 22.0 ],
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
					"patching_rect" : [ 78.0, 1236.0, 430.0, 22.0 ],
					"text" : "jit.gpu.image @name prevlevel0 @format RGBA32_FLOAT @dim 1920 1080 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 799.0, 346.0, 192.0, 22.0 ],
					"text" : "loadmess sendoutput filter nearest"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 819.0, 1093.0, 422.0, 22.0 ],
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
					"patching_rect" : [ 1292.0, 1093.0, 164.0, 22.0 ],
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
					"patching_rect" : [ 1291.5, 1045.0, 165.0, 22.0 ],
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
					"patching_rect" : [ 822.0, 1045.0, 373.0, 22.0 ],
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
					"patching_rect" : [ 553.0, 1381.0, 380.0, 22.0 ],
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
					"patching_rect" : [ 819.0, 1003.0, 429.0, 22.0 ],
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
					"patching_rect" : [ 1292.0, 1003.0, 164.0, 22.0 ],
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
					"patching_rect" : [ 1291.5, 955.0, 165.0, 22.0 ],
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
					"patching_rect" : [ 822.0, 955.0, 386.0, 22.0 ],
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
					"patching_rect" : [ 553.0, 1349.0, 386.0, 22.0 ],
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
					"patching_rect" : [ 819.0, 905.0, 435.0, 22.0 ],
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
					"patching_rect" : [ 1292.0, 905.0, 164.0, 22.0 ],
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
					"patching_rect" : [ 1291.5, 857.0, 165.0, 22.0 ],
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
					"patching_rect" : [ 822.0, 857.0, 386.0, 22.0 ],
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
					"mode" : 3,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 793.0, 293.0, 80.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 819.0, 812.0, 435.0, 22.0 ],
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
					"patching_rect" : [ 1292.0, 812.0, 164.0, 22.0 ],
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
					"patching_rect" : [ 1291.5, 764.0, 165.0, 22.0 ],
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
					"patching_rect" : [ 822.0, 764.0, 386.0, 22.0 ],
					"text" : "jit.gpu.compute @shader blurH1 @threads 60 540 1 @readwrite level1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 767.0, 203.0, 92.0, 22.0 ],
					"text" : "prepend source"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 870.0, 94.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 767.0, 155.0, 157.0, 22.0 ],
					"text" : "combine level 0 @triggers 1"
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
						"rect" : [ 847.0, 155.0, 600.0, 450.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 217.0, 23.0, 22.0 ],
									"text" : "* 5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 92.0, 46.0, 22.0 ],
									"text" : "swiz rg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 286.0, 94.0, 22.0 ],
									"text" : "scale -1. 1. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 149.0, 35.0, 22.0 ],
									"text" : "/ dim"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 331.0, 392.0, 81.0, 22.0 ],
									"text" : "vec 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 385.0, 303.0, 41.0, 22.0 ],
									"text" : "max 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 428.0, 265.0, 41.0, 22.0 ],
									"text" : "max 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 294.0, 255.0, 42.0, 22.0 ],
									"text" : "swiz g"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 239.0, 255.0, 39.0, 22.0 ],
									"text" : "swiz r"
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
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 225.0, 149.0, 39.0, 22.0 ],
									"text" : "swiz r"
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
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 1,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 767.0, 394.0, 49.0, 22.0 ],
					"text" : "jit.gl.pix"
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
					"patching_rect" : [ 863.0, 393.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 819.0, 712.0, 435.0, 22.0 ],
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
					"patching_rect" : [ 1293.0, 712.0, 164.0, 22.0 ],
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
					"patching_rect" : [ 1292.5, 666.0, 165.0, 22.0 ],
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
					"patching_rect" : [ 819.0, 666.0, 399.0, 22.0 ],
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
					"patching_rect" : [ 553.0, 1321.0, 393.0, 22.0 ],
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
					"patching_rect" : [ 553.0, 1294.0, 393.0, 22.0 ],
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
					"patching_rect" : [ 553.0, 1265.0, 393.0, 22.0 ],
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
					"patching_rect" : [ 827.0, 393.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 112.0, 531.0, 404.0, 22.0 ],
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
					"patching_rect" : [ 112.0, 490.0, 175.0, 22.0 ],
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
					"patching_rect" : [ 46.0, 59.0, 58.0, 22.0 ],
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
					"patching_rect" : [ 46.0, 94.0, 233.0, 22.0 ],
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
					"patching_rect" : [ 46.0, 152.0, 297.0, 220.0 ],
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
					"patching_rect" : [ 767.0, 246.0, 177.0, 22.0 ],
					"text" : "jit.gpu.totexture @source level2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 553.0, 1236.0, 406.0, 22.0 ],
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
					"patching_rect" : [ 1293.0, 624.0, 179.0, 22.0 ],
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
					"patching_rect" : [ 819.0, 565.0, 449.0, 22.0 ],
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
					"patching_rect" : [ 767.0, 442.0, 197.0, 22.0 ],
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
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-140", 0 ]
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
					"destination" : [ "obj-335", 0 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"source" : [ "obj-171", 0 ]
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
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-22", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"order" : 0,
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"order" : 1,
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
					"destination" : [ "obj-63", 1 ],
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
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-24", 0 ]
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
					"destination" : [ "obj-100", 1 ],
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
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-25", 0 ]
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
					"destination" : [ "obj-128", 1 ],
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
					"destination" : [ "obj-142", 1 ],
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
					"destination" : [ "obj-156", 1 ],
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
					"destination" : [ "obj-230", 0 ],
					"source" : [ "obj-291", 0 ]
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
					"destination" : [ "obj-230", 2 ],
					"order" : 1,
					"source" : [ "obj-293", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"order" : 0,
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
					"destination" : [ "obj-337", 0 ],
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
					"destination" : [ "obj-7", 1 ],
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
					"destination" : [ "obj-170", 0 ],
					"source" : [ "obj-337", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-338", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-35", 0 ]
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
					"destination" : [ "obj-174", 1 ],
					"source" : [ "obj-39", 1 ]
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
					"destination" : [ "obj-55", 1 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-10", 0 ],
					"order" : 109,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-100", 0 ],
					"order" : 66,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-103", 0 ],
					"order" : 99,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-105", 0 ],
					"order" : 98,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-107", 0 ],
					"order" : 97,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-109", 0 ],
					"order" : 96,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-111", 0 ],
					"order" : 95,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-113", 0 ],
					"order" : 94,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-117", 0 ],
					"order" : 63,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-120", 0 ],
					"order" : 64,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-124", 0 ],
					"order" : 65,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-128", 0 ],
					"order" : 56,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-131", 0 ],
					"order" : 47,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-134", 0 ],
					"order" : 48,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-138", 0 ],
					"order" : 49,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-142", 0 ],
					"order" : 46,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-145", 0 ],
					"order" : 31,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-148", 0 ],
					"order" : 32,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-152", 0 ],
					"order" : 33,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-156", 0 ],
					"order" : 27,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-159", 0 ],
					"order" : 21,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-162", 0 ],
					"order" : 22,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-166", 0 ],
					"order" : 23,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-172", 0 ],
					"order" : 89,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-173", 0 ],
					"order" : 90,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-174", 0 ],
					"order" : 91,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-176", 0 ],
					"order" : 86,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-177", 0 ],
					"order" : 87,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-178", 0 ],
					"order" : 88,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-180", 0 ],
					"order" : 76,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-181", 0 ],
					"order" : 77,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-182", 0 ],
					"order" : 78,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-184", 0 ],
					"order" : 73,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-185", 0 ],
					"order" : 74,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-186", 0 ],
					"order" : 75,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-188", 0 ],
					"order" : 53,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-190", 0 ],
					"order" : 54,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-193", 0 ],
					"order" : 55,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-195", 0 ],
					"order" : 50,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-197", 0 ],
					"order" : 51,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-200", 0 ],
					"order" : 52,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-202", 0 ],
					"order" : 34,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-204", 0 ],
					"order" : 35,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-207", 0 ],
					"order" : 36,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-209", 0 ],
					"order" : 37,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-211", 0 ],
					"order" : 38,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-214", 0 ],
					"order" : 39,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-216", 0 ],
					"order" : 18,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-218", 0 ],
					"order" : 19,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-221", 0 ],
					"order" : 20,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-223", 0 ],
					"order" : 15,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-225", 0 ],
					"order" : 16,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-228", 0 ],
					"order" : 17,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-233", 0 ],
					"order" : 83,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-234", 0 ],
					"order" : 84,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-235", 0 ],
					"order" : 85,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-237", 0 ],
					"order" : 80,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-238", 0 ],
					"order" : 81,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-239", 0 ],
					"order" : 82,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-241", 0 ],
					"order" : 70,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-242", 0 ],
					"order" : 71,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-243", 0 ],
					"order" : 72,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-245", 0 ],
					"order" : 67,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-246", 0 ],
					"order" : 68,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-247", 0 ],
					"order" : 69,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-249", 0 ],
					"order" : 57,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-251", 0 ],
					"order" : 58,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-254", 0 ],
					"order" : 59,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-256", 0 ],
					"order" : 60,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-258", 0 ],
					"order" : 61,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-261", 0 ],
					"order" : 62,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-263", 0 ],
					"order" : 40,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-265", 0 ],
					"order" : 41,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-268", 0 ],
					"order" : 42,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-270", 0 ],
					"order" : 43,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-272", 0 ],
					"order" : 44,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-275", 0 ],
					"order" : 45,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-277", 0 ],
					"order" : 24,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-279", 0 ],
					"order" : 25,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-282", 0 ],
					"order" : 26,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-284", 0 ],
					"order" : 28,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-286", 0 ],
					"order" : 29,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-289", 0 ],
					"order" : 30,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-29", 0 ],
					"order" : 111,
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
					"order" : 93,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-321", 0 ],
					"order" : 9,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-323", 0 ],
					"order" : 10,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-326", 0 ],
					"order" : 11,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-328", 0 ],
					"order" : 12,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-330", 0 ],
					"order" : 13,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-333", 0 ],
					"order" : 14,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-37", 0 ],
					"order" : 104,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-39", 0 ],
					"order" : 92,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-40", 0 ],
					"order" : 108,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-43", 0 ],
					"order" : 107,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-46", 0 ],
					"order" : 103,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-48", 0 ],
					"order" : 106,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"order" : 110,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-51", 0 ],
					"order" : 102,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-57", 0 ],
					"order" : 105,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-60", 0 ],
					"order" : 101,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-63", 0 ],
					"order" : 79,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-75", 0 ],
					"order" : 117,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-80", 0 ],
					"order" : 116,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-82", 0 ],
					"order" : 115,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-84", 0 ],
					"order" : 114,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-86", 0 ],
					"order" : 113,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-88", 0 ],
					"order" : 112,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.850980392156863, 0.490196078431373, 0.490196078431373, 1.0 ],
					"destination" : [ "obj-99", 0 ],
					"order" : 100,
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
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-291", 0 ],
					"order" : 1,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-291", 0 ],
					"order" : 2,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 0,
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
					"destination" : [ "obj-169", 0 ],
					"order" : 0,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-293", 0 ],
					"order" : 1,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 2,
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
					"destination" : [ "obj-90", 1 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-90", 0 ]
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
