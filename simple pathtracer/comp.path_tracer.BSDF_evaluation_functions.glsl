
// ---------------------------------------------
// BSDF evaluation
// ---------------------------------------------

// Disney diffuse (Burley). Returns BRDF value (includes 1/pi).
vec3 evalDisneyDiffuse(material mat, float NoL, float NoV, float LoH, float roughness) {
    float FD90 = 0.5 + 2.0 * roughness * LoH*LoH;
    float a = F_Schlick(1.0, FD90, NoL);
    float b = F_Schlick(1.0, FD90, NoV);
    return mat.diffAlbedo * a * b * INV_PI;
}

// Microfacet specular reflection BRDF (GGX).
vec3 evalDisneySpecularReflection(material mat, vec3 F, float NoH, float NoV, float NoL) {
    float roughness = mat.roughness * mat.roughness;
    float D = D_GTR(roughness, NoH, 2.0);

    // Slight roughness remap for the geometry term (kept as in original).
    float G = GeometryTerm(NoL, NoV, pow(0.5 + mat.roughness * 0.5, 2.0));

    return D * F * G / (4.0 * NoL * NoV);
}

// Microfacet specular refraction BTDF (GGX).
// Outputs pdf corresponding to the sampling strategy used.
vec3 evalDisneySpecularRefraction(
    material mat, float F,
    float NoH, float NoV, float NoL,
    float VoH, float LoH,
    float eta,
    out float pdf
) {
    float roughness = mat.roughness * mat.roughness;
    float D = D_GTR(roughness, NoH, 2.0);
    float G = GeometryTerm(NoL, NoV, pow(0.5 + mat.roughness * 0.5, 2.0));

    // Jacobian for mapping between half-vector PDF and direction PDF in transmission
    float denom    = pow(LoH + VoH*eta, 2.0);
    float jacobian = abs(LoH) / denom;

    // Direction pdf for refraction
    pdf = SmithG(abs(NoL), roughness*roughness) * max(0.0, VoH) * D * jacobian / NoV;

    // Tint transmission (rough heuristic) and evaluate BTDF
    vec3 tint = pow(1.0 - mat.diffAlbedo, vec3(0.5));
    return tint * D * (1.0 - F) * G * abs(VoH) * jacobian * eta*eta / abs(NoL * NoV);
}
