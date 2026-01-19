
// ---------------------------------------------
// Microfacet helpers (GGX / Disney-ish)
// ---------------------------------------------

// Dielectric Fresnel with TIR handling when transitioning from higher->lower IOR.
// VoH is cosine between view direction and half-vector.
float Fresnel(float n1, float n2, float VoH, float f0, float f90) {
    float r0 = (n1-n2) / (n1+n2);
    r0 *= r0;

    // Total internal reflection when leaving denser medium.
    if (n1 > n2) {
        float n = n1/n2;
        float sinT2 = n*n*(1.0 - VoH*VoH);
        if (sinT2 > 1.0) return f90;
        VoH = sqrt(1.0 - sinT2);
    }

    // Schlick-like interpolation from r0.
    float x   = 1.0 - VoH;
    float ret = r0 + (1.0 - r0) * pow(x, 5.0);
    return mix(f0, f90, ret);
}

// Schlick Fresnel for RGB f0 (metal/rough workflows often use this).
vec3 F_Schlick(vec3 f0, float theta) {
    float val  = 1.0 - theta;
    float val2 = val * val;
    return f0 + (1.0 - f0) * val2*val2*val;
}

// Scalar Schlick Fresnel.
float F_Schlick(float f0, float f90, float theta) {
    float val  = 1.0 - theta;
    float val2 = val * val;
    return f0 + (f90 - f0) * val2*val2*val;
}

// Generalized Trowbridge-Reitz distribution (GTR). k=2 => GGX.
float D_GTR(float roughness, float NoH, float k) {
    float a2 = roughness * roughness;
    return a2 / (PI * pow((NoH*NoH)*(a2*a2-1.0)+1.0, k));
}

// Smith masking term (single direction).
float SmithG(float NoV, float roughness2) {
    float a = roughness2 * roughness2;
    float b = NoV * NoV;
    return (2.0*NoV) / (NoV + sqrt(a + b - a*b));
}

// Full geometry term = G1(NoV) * G1(NoL).
float GeometryTerm(float NoL, float NoV, float roughness) {
    float a2 = roughness * roughness;
    float G1 = SmithG(NoV, a2);
    float G2 = SmithG(NoL, a2);
    return G1 * G2;
}

// Sample GGX Visible Normal Distribution Function (VNDF).
// Input V is view direction in local space (Z is normal).
vec3 SampleGGXVNDF(vec3 V, float ax, float ay, float r1, float r2) {
    // Stretch view direction
    vec3 Vh = normalize(vec3(ax * V.x, ay * V.y, V.z));

    // Build orthonormal basis around Vh
    float lensq = Vh.x*Vh.x + Vh.y*Vh.y;
    vec3 T1 = lensq > 0.0 ? vec3(-Vh.y, Vh.x, 0.0) * inversesqrt(lensq) : vec3(1,0,0);
    vec3 T2 = cross(Vh, T1);

    // Sample a point on a disk
    float r   = sqrt(r1);
    float phi = TWOPI * r2;
    float t1  = r * cos(phi);
    float t2  = r * sin(phi);

    // Warp to hemisphere
    float s = 0.5 * (1.0 + Vh.z);
    t2 = (1.0 - s) * sqrt(max(0.0, 1.0 - t1*t1)) + s * t2;

    // Construct normal in stretched space, then unstretch
    vec3 Nh = t1*T1 + t2*T2 + sqrt(max(0.0, 1.0 - t1*t1 - t2*t2)) * Vh;
    return normalize(vec3(ax * Nh.x, ay * Nh.y, max(0.0, Nh.z)));
}

// PDF for VNDF-sampled half-vector.
float GGXVNDFPdf(float NoH, float NoV, float roughness) {
    float D  = D_GTR(roughness, NoH, 2.0);
    float G1 = SmithG(NoV, roughness*roughness);
    return (D * G1) / max(0.00001, 4.0 * NoV);
}