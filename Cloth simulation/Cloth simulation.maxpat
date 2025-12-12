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
        "rect": [ 92.0, 100.0, 1020.0, 893.0 ],
        "boxes": [
            {
                "box": {
                    "filename": "none",
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 116.0, 998.0, 817.0, 22.0 ],
                    "text": "jit.gpu.compute @threads 5 5 1 @gravity -10. @mass 0.1 @springK 10000 @deltaT 0.00004 @damping 0.18 @posImg posImg @velImg velImg @eo 1",
                    "textfile": {
                        "text": "#version 460\n\nlayout(rgba32f, set = 0, binding = 0) uniform image2D posImg;\nlayout(rgba32f, set = 0, binding = 1) uniform image2D velImg;\n\nlayout(set = 0, binding = 2) uniform Config\n{\n    float gravity;\n    float mass;\n    float springK;\n    float deltaT;\n    float damping;\n    float restLengthHoriz;\n    float restLengthVert;\n    float restLengthDiag;\n};\n\nlayout(binding = 3) uniform EO {\n\tint eo;\n};\n\nlayout(local_size_x = 16, local_size_y = 16) in;\n\n// shared tile with a 1-pixel halo on each side\nconst int TILE_X = int(gl_WorkGroupSize.x);\nconst int TILE_Y = int(gl_WorkGroupSize.y);\nshared vec3 p[(TILE_X + 2) * (TILE_Y + 2)];\n\nint id2Index(ivec2 lid) { return lid.x + lid.y * (TILE_X + 2); }\n\n//read from shared array (adds +1 halo offset)\nvec3 readShared(ivec2 lid) {\n    ivec2 sh = lid + ivec2(1);\n    return p[id2Index(sh)];\n}\n\n// cooperative loading of (TILE_X+2)x(TILE_Y+2)\nvoid loadTileWithHalo(ivec2 groupOrigin, ivec2 size, ivec2 readBase)\n{\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n\n    // every thread loads one or more texels into shared memory\n    for (int y = lid.y; y < TILE_Y + 2; y += TILE_Y){\n        for (int x = lid.x; x < TILE_X + 2; x += TILE_X){\n            ivec2 local = ivec2(x, y);\n            ivec2 global = groupOrigin + local - ivec2(1);\n            global = clamp(global, ivec2(0), size - ivec2(1));\n            p[id2Index(local)] = imageLoad(posImg, global + readBase).xyz;\n        }\n    }\n\n    barrier();\n}\n\nvec3 calcSpringForce(ivec2 offset, float dist, float springK)\n{\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    vec3 v = readShared(lid + offset) - readShared(lid);\n\n    float l2 = dot(v, v);\n    if (l2 < 1e-6) return vec3(0.0);\n\n    float invL = inversesqrt(l2);\n    float diff = (1.0 / invL) - dist;\n    return v * springK * diff * invL;\n}\n\nvoid main()\n{\n    ivec2 gid  = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    ivec2 size = imageSize(posImg) / ivec2(2, 1);\n    if (gid.x >= size.x || gid.y >= size.y) return;\n    ivec2 groupOrigin = ivec2(gl_WorkGroupID.xy) * ivec2(TILE_X, TILE_Y);\n\n    ivec2 readBase = ivec2(eo * size.x, 0);\n\n    //cooperative tile load \n    loadTileWithHalo(groupOrigin, size, readBase);\n\n    ivec2 writeUV = gid + ivec2((1 - eo) * size.x, 0);\n\n    bool isFixed =  gid.y == size.y - 1 &&\n                    (gid.x == 0 || gid.x == int(size.x * 0.333) ||\n                    gid.x == int(size.x * 0.6666) || gid.x == size.x - 1);\n\n    // fixed points\n    if (isFixed) {\n            imageStore(posImg, writeUV, vec4(readShared(lid), 1.0));\n    } else {\n\n        // constants cached locally\n        float m = mass, k = springK, dt = deltaT, damp = damping;\n\n        vec3 force = m * vec3(0.0, gravity, 0.0);\n\n        // 8 structural/shear springs\n        force += calcSpringForce(ivec2(+0, -1), restLengthVert,  k);\n        force += calcSpringForce(ivec2(+0, +1), restLengthVert,  k);\n        force += calcSpringForce(ivec2(-1, +0), restLengthHoriz, k);\n        force += calcSpringForce(ivec2(+1, +0), restLengthHoriz, k);\n        force += calcSpringForce(ivec2(-1, -1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(+1, -1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(-1, +1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(+1, +1), restLengthDiag,  k);\n\n        vec3 vel = imageLoad(velImg, gid).xyz;\n        force += -vel * damp;\n\n        vec3 a = force / m;\n        vec3 newVel = vel + a * dt;\n        vec3 newPos = readShared(lid)\n                    + newVel * dt + 0.5 * a * dt * dt;\n\n        imageStore(posImg, writeUV, vec4(newPos, 1.0));\n        imageStore(velImg, gid, vec4(newVel, 1.0));\n    }\n}\n",
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
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 116.0, 955.0, 817.0, 22.0 ],
                    "text": "jit.gpu.compute @threads 5 5 1 @gravity -10. @mass 0.1 @springK 10000 @deltaT 0.00004 @damping 0.18 @posImg posImg @velImg velImg @eo 0",
                    "textfile": {
                        "text": "#version 460\n\nlayout(rgba32f, set = 0, binding = 0) uniform image2D posImg;\nlayout(rgba32f, set = 0, binding = 1) uniform image2D velImg;\n\nlayout(set = 0, binding = 2) uniform Config\n{\n    float gravity;\n    float mass;\n    float springK;\n    float deltaT;\n    float damping;\n    float restLengthHoriz;\n    float restLengthVert;\n    float restLengthDiag;\n};\n\nlayout(set = 0, binding = 3) uniform EO {\n\tint eo;\n};\n\nlayout(local_size_x = 16, local_size_y = 16) in;\n\n// shared tile with a 1-pixel halo on each side\nconst int TILE_X = int(gl_WorkGroupSize.x);\nconst int TILE_Y = int(gl_WorkGroupSize.y);\nshared vec3 p[(TILE_X + 2) * (TILE_Y + 2)];\n\nint id2Index(ivec2 lid) { return lid.x + lid.y * (TILE_X + 2); }\n\n//read from shared array (adds +1 halo offset)\nvec3 readShared(ivec2 lid) {\n    ivec2 sh = lid + ivec2(1);\n    return p[id2Index(sh)];\n}\n\n// cooperative loading of (TILE_X+2)x(TILE_Y+2)\nvoid loadTileWithHalo(ivec2 groupOrigin, ivec2 size, ivec2 readBase)\n{\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n\n    // every thread loads one or more texels into shared memory\n    for (int y = lid.y; y < TILE_Y + 2; y += TILE_Y){\n        for (int x = lid.x; x < TILE_X + 2; x += TILE_X){\n            ivec2 local = ivec2(x, y);\n            ivec2 global = groupOrigin + local - ivec2(1);\n            global = clamp(global, ivec2(0), size - ivec2(1));\n            p[id2Index(local)] = imageLoad(posImg, global + readBase).xyz;\n        }\n    }\n\n    barrier();\n}\n\nvec3 calcSpringForce(ivec2 offset, float dist, float springK)\n{\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    vec3 v = readShared(lid + offset) - readShared(lid);\n\n    float l2 = dot(v, v);\n    if (l2 < 1e-6) return vec3(0.0);\n\n    float invL = inversesqrt(l2);\n    float diff = (1.0 / invL) - dist;\n    return v * springK * diff * invL;\n}\n\nvoid main()\n{\n    ivec2 gid  = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    ivec2 size = imageSize(posImg) / ivec2(2, 1);\n    if (gid.x >= size.x || gid.y >= size.y) return;\n    ivec2 groupOrigin = ivec2(gl_WorkGroupID.xy) * ivec2(TILE_X, TILE_Y);\n\n    ivec2 readBase = ivec2(eo * size.x, 0);\n\n    //cooperative tile load \n    loadTileWithHalo(groupOrigin, size, readBase);\n\n    ivec2 writeUV = gid + ivec2((1 - eo) * size.x, 0);\n\n    bool isFixed =  gid.y == size.y - 1 &&\n                    (gid.x == 0 || gid.x == int(size.x * 0.333) ||\n                    gid.x == int(size.x * 0.6666) || gid.x == size.x - 1);\n\n    // fixed points\n    if (isFixed) {\n            imageStore(posImg, writeUV, vec4(readShared(lid), 1.0));\n    } else {\n\n        // constants cached locally\n        float m = mass, k = springK, dt = deltaT, damp = damping;\n\n        vec3 force = m * vec3(0.0, gravity, 0.0);\n\n        // 8 structural/shear springs\n        force += calcSpringForce(ivec2(+0, -1), restLengthVert,  k);\n        force += calcSpringForce(ivec2(+0, +1), restLengthVert,  k);\n        force += calcSpringForce(ivec2(-1, +0), restLengthHoriz, k);\n        force += calcSpringForce(ivec2(+1, +0), restLengthHoriz, k);\n        force += calcSpringForce(ivec2(-1, -1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(+1, -1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(-1, +1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(+1, +1), restLengthDiag,  k);\n\n        vec3 vel = imageLoad(velImg, gid).xyz;\n        force += -vel * damp;\n\n        vec3 a = force / m;\n        vec3 newVel = vel + a * dt;\n        vec3 newPos = readShared(lid)\n                    + newVel * dt + 0.5 * a * dt * dt;\n\n        imageStore(posImg, writeUV, vec4(newPos, 1.0));\n        imageStore(velImg, gid, vec4(newVel, 1.0));\n    }\n}\n",
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
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 116.0, 914.0, 817.0, 22.0 ],
                    "text": "jit.gpu.compute @threads 5 5 1 @gravity -10. @mass 0.1 @springK 10000 @deltaT 0.00004 @damping 0.18 @posImg posImg @velImg velImg @eo 1",
                    "textfile": {
                        "text": "#version 460\n\nlayout(rgba32f, set = 0, binding = 0) uniform image2D posImg;\nlayout(rgba32f, set = 0, binding = 1) uniform image2D velImg;\n\nlayout(set = 0, binding = 2) uniform Config\n{\n    float gravity;\n    float mass;\n    float springK;\n    float deltaT;\n    float damping;\n    float restLengthHoriz;\n    float restLengthVert;\n    float restLengthDiag;\n};\n\nlayout(binding = 3) uniform EO {\n\tint eo;\n};\n\nlayout(local_size_x = 16, local_size_y = 16) in;\n\n// shared tile with a 1-pixel halo on each side\nconst int TILE_X = int(gl_WorkGroupSize.x);\nconst int TILE_Y = int(gl_WorkGroupSize.y);\nshared vec3 p[(TILE_X + 2) * (TILE_Y + 2)];\n\nint id2Index(ivec2 lid) { return lid.x + lid.y * (TILE_X + 2); }\n\n//read from shared array (adds +1 halo offset)\nvec3 readShared(ivec2 lid) {\n    ivec2 sh = lid + ivec2(1);\n    return p[id2Index(sh)];\n}\n\n// cooperative loading of (TILE_X+2)x(TILE_Y+2)\nvoid loadTileWithHalo(ivec2 groupOrigin, ivec2 size, ivec2 readBase)\n{\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n\n    // every thread loads one or more texels into shared memory\n    for (int y = lid.y; y < TILE_Y + 2; y += TILE_Y){\n        for (int x = lid.x; x < TILE_X + 2; x += TILE_X){\n            ivec2 local = ivec2(x, y);\n            ivec2 global = groupOrigin + local - ivec2(1);\n            global = clamp(global, ivec2(0), size - ivec2(1));\n            p[id2Index(local)] = imageLoad(posImg, global + readBase).xyz;\n        }\n    }\n\n    barrier();\n}\n\nvec3 calcSpringForce(ivec2 offset, float dist, float springK)\n{\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    vec3 v = readShared(lid + offset) - readShared(lid);\n\n    float l2 = dot(v, v);\n    if (l2 < 1e-6) return vec3(0.0);\n\n    float invL = inversesqrt(l2);\n    float diff = (1.0 / invL) - dist;\n    return v * springK * diff * invL;\n}\n\nvoid main()\n{\n    ivec2 gid  = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    ivec2 size = imageSize(posImg) / ivec2(2, 1);\n    if (gid.x >= size.x || gid.y >= size.y) return;\n    ivec2 groupOrigin = ivec2(gl_WorkGroupID.xy) * ivec2(TILE_X, TILE_Y);\n\n    ivec2 readBase = ivec2(eo * size.x, 0);\n\n    //cooperative tile load \n    loadTileWithHalo(groupOrigin, size, readBase);\n\n    ivec2 writeUV = gid + ivec2((1 - eo) * size.x, 0);\n\n    bool isFixed =  gid.y == size.y - 1 &&\n                    (gid.x == 0 || gid.x == int(size.x * 0.333) ||\n                    gid.x == int(size.x * 0.6666) || gid.x == size.x - 1);\n\n    // fixed points\n    if (isFixed) {\n            imageStore(posImg, writeUV, vec4(readShared(lid), 1.0));\n    } else {\n\n        // constants cached locally\n        float m = mass, k = springK, dt = deltaT, damp = damping;\n\n        vec3 force = m * vec3(0.0, gravity, 0.0);\n\n        // 8 structural/shear springs\n        force += calcSpringForce(ivec2(+0, -1), restLengthVert,  k);\n        force += calcSpringForce(ivec2(+0, +1), restLengthVert,  k);\n        force += calcSpringForce(ivec2(-1, +0), restLengthHoriz, k);\n        force += calcSpringForce(ivec2(+1, +0), restLengthHoriz, k);\n        force += calcSpringForce(ivec2(-1, -1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(+1, -1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(-1, +1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(+1, +1), restLengthDiag,  k);\n\n        vec3 vel = imageLoad(velImg, gid).xyz;\n        force += -vel * damp;\n\n        vec3 a = force / m;\n        vec3 newVel = vel + a * dt;\n        vec3 newPos = readShared(lid)\n                    + newVel * dt + 0.5 * a * dt * dt;\n\n        imageStore(posImg, writeUV, vec4(newPos, 1.0));\n        imageStore(velImg, gid, vec4(newVel, 1.0));\n    }\n}\n",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 424.0, 707.0, 119.0, 22.0 ],
                    "text": "param deltaT 0.0005"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_geometry", "" ],
                    "patching_rect": [ 786.0, 138.0, 94.0, 22.0 ],
                    "text": "jit.geom.togeom"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 812.0, 362.0, 226.0, 22.0 ],
                    "text": "exprfill 0 norm[0], exprfill 1 norm[1], bang"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 892.0, 412.0, 136.0, 22.0 ],
                    "text": "jit.matrix 2 float32 80 80"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 679.0, 212.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 688.0, 263.0, 70.0, 22.0 ],
                    "text": "jit.gl.texture"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 686.0, 468.0, 201.0, 22.0 ],
                    "text": "jit.gl.pbr @mat_diffuse 0.2 0.7 0.2 1."
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 699.0, 577.0, 352.0, 22.0 ],
                    "text": "jit.gl.mesh @auto_normals 1 @draw_mode tri_grid @cull_face 1"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 735.0, 527.0, 128.0, 22.0 ],
                    "text": "jit.dimmap @invert 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 634.0, 439.0, 208.0, 22.0 ],
                    "text": "jit.gl.pbr @mat_diffuse 1. 0.45 0.45 1."
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 400.0, 577.0, 352.0, 22.0 ],
                    "text": "jit.gl.mesh @auto_normals 1 @draw_mode tri_grid @cull_face 1"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "jit_matrix" ],
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
                        "rect": [ 59.0, 119.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "int" ],
                                    "patching_rect": [ 169.0, 47.0, 40.0, 22.0 ],
                                    "text": "uzi 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 207.0, 166.0, 73.0, 22.0 ],
                                    "text": "jit.normalize"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 207.0, 138.0, 340.0, 22.0 ],
                                    "text": "jit.bfg 3 float32 80 80 @scale 0.4 0.4 0.2 @basis fractal.hetero"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 1,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "jit.gen",
                                        "rect": [ 178.0, 311.0, 600.0, 450.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 351.0, 313.0, 43.0, 22.0 ],
                                                    "text": "* 0 0 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 414.0, 243.0, 26.0, 22.0 ],
                                                    "text": "!- 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 277.0, 110.0, 29.5, 22.0 ],
                                                    "text": "*"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 411.0, 199.0, 41.0, 22.0 ],
                                                    "text": "swiz y"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 404.0, 148.0, 36.0, 22.0 ],
                                                    "text": "norm"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 277.0, 70.0, 71.0, 22.0 ],
                                                    "text": "mix -0.2 0.2"
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
                                                    "text": "+"
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
                                                    "source": [ "obj-10", 0 ]
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
                                                    "destination": [ "obj-4", 0 ],
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
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 1 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 144.0, 41.0, 22.0 ],
                                    "text": "jit.gen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 50.5, 229.0, 244.0, 22.0 ],
                                    "text": "jit.matrix 4 float32 80 80 @planemap 3 0 1 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 50.5, 186.0, 117.0, 22.0 ],
                                    "text": "jit.pack 2 @jump 3 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 50.5, 100.0, 498.0, 22.0 ],
                                    "text": "jit.gl.gridshape @shape plane @dim 80 80 @matrixoutput 2 @automatic 0 @rotatexyz 0 0 0"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-47",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 80.0, 20.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-48",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.5, 311.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
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
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 348.5, 200.0, 108.0, 22.0 ],
                    "text": "p create gridshape"
                }
            },
            {
                "box": {
                    "attr": "gravity",
                    "id": "obj-30",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 155.0, 726.0, 176.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 121.0, 665.0, 178.0, 22.0 ],
                    "text": "prepend param restLengthHoriz"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 121.0, 635.0, 171.0, 22.0 ],
                    "text": "prepend param restLengthVert"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 122.5, 689.0, 175.0, 22.0 ],
                    "text": "prepend param restLengthDiag"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 400.0, 615.0, 578.0, 22.0 ],
                    "text": "jit.gl.gridshape @shape cylinder @rotatexyz 0 90 0 @scale 0.03 0.03 1.2 @position 0 1 0 @poly_mode 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 253.0, 337.0, 29.5, 22.0 ],
                    "text": "!- 1"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 253.0, 368.0, 44.0, 22.0 ],
                    "text": "s even"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 207.0, 368.0, 38.0, 22.0 ],
                    "text": "s odd"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 78.0, 597.0, 153.0, 22.0 ],
                    "text": "expr sqrt($f1*$f1 + $f2*$f2)"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 120.0, 541.0, 29.5, 22.0 ],
                    "text": "!/ 2."
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 78.0, 541.0, 29.5, 22.0 ],
                    "text": "!/ 2."
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 78.0, 508.0, 61.0, 22.0 ],
                    "text": "unpack f f"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 79.0, 472.0, 59.0, 22.0 ],
                    "text": "route dim"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 79.0, 439.0, 73.0, 22.0 ],
                    "text": "jit.matrixinfo"
                }
            },
            {
                "box": {
                    "filename": "none",
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 116.0, 871.0, 817.0, 22.0 ],
                    "text": "jit.gpu.compute @threads 5 5 1 @gravity -10. @mass 0.1 @springK 10000 @deltaT 0.00004 @damping 0.18 @posImg posImg @velImg velImg @eo 0",
                    "textfile": {
                        "text": "#version 460\n\nlayout(rgba32f, set = 0, binding = 0) uniform image2D posImg;\nlayout(rgba32f, set = 0, binding = 1) uniform image2D velImg;\n\nlayout(set = 0, binding = 2) uniform Config\n{\n    float gravity;\n    float mass;\n    float springK;\n    float deltaT;\n    float damping;\n    float restLengthHoriz;\n    float restLengthVert;\n    float restLengthDiag;\n};\n\nlayout(set = 0, binding = 3) uniform EO {\n\tint eo;\n};\n\nlayout(local_size_x = 16, local_size_y = 16) in;\n\n// shared tile with a 1-pixel halo on each side\nconst int TILE_X = int(gl_WorkGroupSize.x);\nconst int TILE_Y = int(gl_WorkGroupSize.y);\nshared vec3 p[(TILE_X + 2) * (TILE_Y + 2)];\n\nint id2Index(ivec2 lid) { return lid.x + lid.y * (TILE_X + 2); }\n\n//read from shared array (adds +1 halo offset)\nvec3 readShared(ivec2 lid) {\n    ivec2 sh = lid + ivec2(1);\n    return p[id2Index(sh)];\n}\n\n// cooperative loading of (TILE_X+2)x(TILE_Y+2)\nvoid loadTileWithHalo(ivec2 groupOrigin, ivec2 size, ivec2 readBase)\n{\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n\n    // every thread loads one or more texels into shared memory\n    for (int y = lid.y; y < TILE_Y + 2; y += TILE_Y){\n        for (int x = lid.x; x < TILE_X + 2; x += TILE_X){\n            ivec2 local = ivec2(x, y);\n            ivec2 global = groupOrigin + local - ivec2(1);\n            global = clamp(global, ivec2(0), size - ivec2(1));\n            p[id2Index(local)] = imageLoad(posImg, global + readBase).xyz;\n        }\n    }\n\n    barrier();\n}\n\nvec3 calcSpringForce(ivec2 offset, float dist, float springK)\n{\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    vec3 v = readShared(lid + offset) - readShared(lid);\n\n    float l2 = dot(v, v);\n    if (l2 < 1e-6) return vec3(0.0);\n\n    float invL = inversesqrt(l2);\n    float diff = (1.0 / invL) - dist;\n    return v * springK * diff * invL;\n}\n\nvoid main()\n{\n    ivec2 gid  = ivec2(gl_GlobalInvocationID.xy);\n    ivec2 lid = ivec2(gl_LocalInvocationID.xy);\n    ivec2 size = imageSize(posImg) / ivec2(2, 1);\n    if (gid.x >= size.x || gid.y >= size.y) return;\n    ivec2 groupOrigin = ivec2(gl_WorkGroupID.xy) * ivec2(TILE_X, TILE_Y);\n\n    ivec2 readBase = ivec2(eo * size.x, 0);\n\n    //cooperative tile load \n    loadTileWithHalo(groupOrigin, size, readBase);\n\n    ivec2 writeUV = gid + ivec2((1 - eo) * size.x, 0);\n\n    bool isFixed =  gid.y == size.y - 1 &&\n                    (gid.x == 0 || gid.x == int(size.x * 0.333) ||\n                    gid.x == int(size.x * 0.6666) || gid.x == size.x - 1);\n\n    // fixed points\n    if (isFixed) {\n            imageStore(posImg, writeUV, vec4(readShared(lid), 1.0));\n    } else {\n\n        // constants cached locally\n        float m = mass, k = springK, dt = deltaT, damp = damping;\n\n        vec3 force = m * vec3(0.0, gravity, 0.0);\n\n        // 8 structural/shear springs\n        force += calcSpringForce(ivec2(+0, -1), restLengthVert,  k);\n        force += calcSpringForce(ivec2(+0, +1), restLengthVert,  k);\n        force += calcSpringForce(ivec2(-1, +0), restLengthHoriz, k);\n        force += calcSpringForce(ivec2(+1, +0), restLengthHoriz, k);\n        force += calcSpringForce(ivec2(-1, -1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(+1, -1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(-1, +1), restLengthDiag,  k);\n        force += calcSpringForce(ivec2(+1, +1), restLengthDiag,  k);\n\n        vec3 vel = imageLoad(velImg, gid).xyz;\n        force += -vel * damp;\n\n        vec3 a = force / m;\n        vec3 newVel = vel + a * dt;\n        vec3 newPos = readShared(lid)\n                    + newVel * dt + 0.5 * a * dt * dt;\n\n        imageStore(posImg, writeUV, vec4(newPos, 1.0));\n        imageStore(velImg, gid, vec4(newVel, 1.0));\n    }\n}\n",
                        "filename": "none",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "attr": "damping",
                    "id": "obj-44",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 155.0, 828.0, 176.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "mass",
                    "id": "obj-36",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 155.0, 751.0, 176.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "springK",
                    "id": "obj-40",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 155.0, 777.0, 176.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "deltaT",
                    "id": "obj-43",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 436.5, 786.0, 176.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 207.0, 298.0, 69.0, 22.0 ],
                    "text": "counter 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 400.0, 472.0, 175.0, 22.0 ],
                    "text": "jit.unpack 1 @jump 3 @offset 1"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 207.5, 117.0, 68.0, 22.0 ],
                    "text": "anim_reset"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 232.0, 228.0, 29.5, 22.0 ],
                    "text": "0"
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
                    "patching_rect": [ 47.0, 38.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 423.5, 262.0, 80.0, 22.0 ],
                    "text": "setall 0, bang"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 423.5, 294.0, 136.0, 22.0 ],
                    "text": "jit.matrix 4 float32 80 80"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 400.0, 442.0, 205.0, 22.0 ],
                    "text": "jit.submatrix @dim 80 80 @offset 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 400.0, 399.0, 181.0, 22.0 ],
                    "text": "jit.gpu.tomatrix @source posImg"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 348.5, 148.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 348.5, 328.0, 56.0, 22.0 ],
                    "text": "jit.concat"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 423.5, 328.0, 384.0, 22.0 ],
                    "text": "jit.gpu.image @format RGBA32_FLOAT @name velImg @dim 80 80 1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 348.5, 362.0, 394.0, 22.0 ],
                    "text": "jit.gpu.image @format RGBA32_FLOAT @name posImg @dim 160 80 1"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 47.0, 117.0, 145.0, 22.0 ],
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
                    "patching_rect": [ 47.0, 152.0, 285.0, 22.0 ],
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
                    "patching_rect": [ 47.0, 75.0, 197.0, 22.0 ],
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
                    "patching_rect": [ 81.0, 39.0, 150.0, 22.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "order": 0,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 2 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-19", 0 ]
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
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 1 ],
                    "order": 0,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "order": 1,
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
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 3 ],
                    "source": [ "obj-26", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 2 ],
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 1 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 3 ],
                    "source": [ "obj-29", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 2 ],
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
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
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 0,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 0,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 1,
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "order": 0,
                    "source": [ "obj-38", 0 ]
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
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "order": 0,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 1,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "order": 1,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 2,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "order": 3,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "order": 0,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 3 ],
                    "source": [ "obj-5", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 2 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 1 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 1 ],
                    "order": 0,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "order": 1,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}