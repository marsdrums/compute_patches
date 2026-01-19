
// Seed RNG per pixel + frame iteration.
// The final "| 1u" makes seed odd to avoid some poor hash states.
uint initRngSeed() {
    return  gl_GlobalInvocationID.x * 4973u +
            gl_GlobalInvocationID.y * 9273u +
            render.iter             * 15229u | 1u;
}

// Wang hash: cheap integer hash used as RNG step.
uint wang_hash(inout uint seed) {
    seed = uint(seed ^ uint(61)) ^ uint(seed >> uint(16));
    seed *= uint(9);
    seed = seed ^ (seed >> 4);
    seed *= uint(0x27d4eb2d);
    seed = seed ^ (seed >> 15);
    return seed;
}

// Random float in [0,1).
float RandomFloat01(inout uint rngState) {
    return float(wang_hash(rngState)) / 4294967296.0;
}

// Uniform random direction on a unit sphere.
vec3 RandomUnitVector(inout uint rngState) {
    float z = RandomFloat01(rngState) * 2.0 - 1.0;
    float a = RandomFloat01(rngState) * TWOPI;
    float r = sqrt(max(0.0, 1.0 - z*z));
    return vec3(r * cos(a), r * sin(a), z);
}