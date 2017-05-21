
layout(std140) uniform shadow_render_block {
	mat4 ShadowMatrix[6];
	vec4 lampPosition;
	int layer;
};

in vec3 worldPosition;

out vec4 FragColor;

void main() {
	float dist = distance(lampPosition.xyz, worldPosition.xyz);
	FragColor = vec4(exp(5.0 * dist), 0.0, 0.0, 1.0);
}
