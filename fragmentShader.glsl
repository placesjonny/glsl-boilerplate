#version 300 es
precision highp float;
out vec4 outColor;

uniform float RAND_HASH;
uniform float u_time;
uniform vec2 u_resolution;

void main() {
	vec2 st = gl_FragCoord.xy/u_resolution;

    vec3 color = vec3(0.0, 0.0, 0.0);

    if (RAND_HASH < 0.5) {
        color = vec3(RAND_HASH, 0.0, 0.0);
    } else {
        color = vec3(0.0, RAND_HASH, 0.0);
    }

    color += st.x;

    outColor = vec4(color, 1);
}