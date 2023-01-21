#version 300 es
precision highp float;
out vec4 outColor;

uniform float RAND_HASH;

void main() {
    outColor = vec4(RAND_HASH, 0, 0, 1);
}