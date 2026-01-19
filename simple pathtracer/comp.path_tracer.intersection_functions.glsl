// Ray-sphere intersection.
// Updates 'h' if this sphere is closer than current best (h.t).
bool intersectSphere(in ray r, inout hit h, in vec3 center, in float radius) {
    // Solve |(origin + t*dir) - center|^2 = radius^2
    vec3  m = r.origin - center;
    float b = dot(m, r.direction);
    float c = dot(m, m) - radius * radius;

    // If origin is outside sphere and ray points away, early-out.
    if (c > 0.0 && b > 0.0) return false;

    float discr = b*b - c;
    if (discr < 0.0) return false;

    float s    = sqrt(discr);
    float dist = -b - s; // near root

    // If near root is behind camera, take far root => we started inside sphere.
    bool fromInside = false;
    if (dist < 0.0) { fromInside = true; dist = -b + s; }

    // Accept if valid epsilon and closer than current hit.
    if (dist > MIN_DIST && dist < h.t) {
        h.t = dist;

        // Point and normal at hit.
        vec3 p = r.origin + r.direction * dist;
        vec3 n = (p - center) / radius; // already ~unit length

        // Ensure normal always opposes incoming ray (important for shading/refraction logic).
        h.normal = fromInside ? -n : n;
        return true;
    }
    return false;
}