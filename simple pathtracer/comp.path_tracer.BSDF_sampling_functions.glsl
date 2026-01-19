
// ---------------------------------------------
// Basis transforms (Pixar Orthonormal Basis)
// ---------------------------------------------

// Robust orthonormal basis from Pixar paper.
// Given normal n, outputs tangent and bitangent.
void basis(in vec3 n, out vec3 tangent, out vec3 bitangent) {
    if (n.z < 0.0) {
        float a = 1.0 / (1.0 - n.z);
        float b = n.x * n.y * a;
        tangent   = vec3(1.0 - n.x*n.x*a, -b,  n.x);
        bitangent = vec3(b,  n.y*n.y*a - 1.0, -n.y);
    } else {
        float a = 1.0 / (1.0 + n.z);
        float b = -n.x * n.y * a;
        tangent   = vec3(1.0 - n.x*n.x*a,  b, -n.x);
        bitangent = vec3(b,  1.0 - n.y*n.y*a, -n.y);
    }
}

// Convert vector between local and world frames defined by (x,y,z) basis.
vec3 toWorld(vec3 x, vec3 y, vec3 z, vec3 v) { return v.x*x + v.y*y + v.z*z; }
vec3 toLocal(vec3 x, vec3 y, vec3 z, vec3 v) { return vec3(dot(v,x), dot(v,y), dot(v,z)); }

// Luminance approximation used to weight reflection probability.
float luma(vec3 c) { return dot(c, vec3(0.299, 0.587, 0.114)); }

// ---------------------------------------------
// BSDF sampling
// ---------------------------------------------
// Samples one of three lobes: diffuse / specular reflection / specular refraction.
// Returns vec4(f*cos, pdf) where:
//   - rgb is BSDF * |N·wo| (so caller can do throughput *= rgb / pdf)
//   - a   is the *selected-lobe* pdf for the sampled direction
vec4 sampleDisneyBSDF(
    vec3 wi, vec3 n, in material mat,
    out vec3 wo,
    inout State state,
    inout uint rngState
) {
    // Remember whether previous segment was inside a medium.
    state.hasBeenRefracted = state.isRefracted;

    // GGX alpha (using roughness^2 convention)
    float alpha = mat.roughness * mat.roughness;

    // Build local frame around normal
    vec3 tangent, bitangent;
    basis(n, tangent, bitangent);

    // View direction in local space
    vec3 V = toLocal(tangent, bitangent, n, wi);

    // Sample half-vector (microfacet normal) in local space via VNDF
    vec3 hLocal = SampleGGXVNDF(V, alpha, alpha, RandomFloat01(rngState), RandomFloat01(rngState));
    if (hLocal.z < 0.0) hLocal = -hLocal; // ensure upper hemisphere
    vec3 h = toWorld(tangent, bitangent, n, hLocal);

    // Fresnel at the microfacet
    float VoH = dot(wi, h);
    vec3  f0  = mix(vec3(0.04), mat.diffAlbedo, mat.metallic);
    vec3  F   = F_Schlick(f0, VoH);

    // Separate dielectric Fresnel for transmission probability (includes TIR behavior)
    float dielF = Fresnel(state.lastIOR, mat.ior, abs(VoH), 0.0, 1.0);

    // --- Lobe selection probabilities ---
    // Diffuse only if non-metal and not transmissive.
    float diffW    = (1.0 - mat.metallic) * (1.0 - mat.specTrans);
    // Reflection weighted by Fresnel magnitude.
    float reflectW = luma(F);
    // Refraction only if non-metal, transmissive, and not reflected by Fresnel.
    float refractW = (1.0 - mat.metallic) * mat.specTrans * (1.0 - dielF);

    // Normalize probabilities
    float invW = 1.0 / (diffW + reflectW + refractW);
    diffW    *= invW;
    reflectW *= invW;
    refractW *= invW;

    // CDF for lobe selection
    float cdf0 = diffW;
    float cdf1 = cdf0 + reflectW;

    vec4  bsdf = vec4(0.0);
    float rnd  = RandomFloat01(rngState);

    // -------------------------
    // Diffuse lobe
    // -------------------------
    if (rnd < cdf0) {
        // Cosine-ish hemisphere sample by biasing a random sphere vector towards the normal.
        wo = normalize(RandomUnitVector(rngState) + n);

        // For Disney diffuse, LoH uses the half-vector between wo and wi.
        h  = normalize(wo + wi);

        float NoL = dot(n, wo);
        float NoV = dot(n, wi);
        if (NoL <= 0.0 || NoV <= 0.0) return vec4(0.0);

        float LoH  = dot(wo, h);

        // Cosine hemisphere pdf
        float pdf  = NoL * INV_PI;

        // Diffuse term * (1 - F) to reduce diffuse as specular increases
        vec3 diff = evalDisneyDiffuse(mat, NoL, NoV, LoH, alpha) * (1.0 - F);

        bsdf.rgb = diff;
        bsdf.a   = diffW * pdf; // include lobe selection probability
    }
    // -------------------------
    // Specular reflection lobe
    // -------------------------
    else if (rnd < cdf1) {
        wo = reflect(-wi, h);

        float NoL = dot(n, wo);
        float NoV = dot(n, wi);
        if (NoL <= 0.0 || NoV <= 0.0) return vec4(0.0);

        float NoH = min(0.99, dot(n, h)); // avoid extreme values in pdf/divs
        float pdf = GGXVNDFPdf(NoH, NoV, alpha);

        vec3 spec = evalDisneySpecularReflection(mat, F, NoH, NoV, NoL);

        bsdf.rgb = spec;
        bsdf.a   = reflectW * pdf;
    }
    // -------------------------
    // Specular refraction lobe
    // -------------------------
    else {
        // Toggle inside/outside state (simple model: each refraction flips medium state)
        state.isRefracted = !state.isRefracted;

        // eta = n1 / n2 (current medium -> material medium)
        float eta = state.lastIOR / mat.ior;

        wo = refract(-wi, h, eta);

        // Update the medium IOR to the material IOR (kept as in your code).
        state.lastIOR = mat.ior;

        float NoL = dot(n, wo);
        if (NoL <= 0.0) return vec4(0.0);

        float NoV = dot(n, wi);
        float NoH = min(0.99, dot(n, h));
        float LoH = dot(wo, h);

        float pdf;
        vec3 spec = evalDisneySpecularRefraction(mat, dielF, NoH, NoV, NoL, VoH, LoH, eta, pdf);

        bsdf.rgb = spec;
        bsdf.a   = refractW * pdf;
    }

    // Multiply by |N·wo| so caller can do: throughput *= bsdf.rgb / bsdf.a
    bsdf.rgb *= abs(dot(n, wo));
    return bsdf;
}
