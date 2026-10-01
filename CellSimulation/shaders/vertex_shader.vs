#version 330 core
layout (location = 0) in vec2 pos;

uniform mat3 transform;
uniform mat3 camera;

void main()
{
    vec3 npos = camera * transform * vec3(pos, 1.0f);
    gl_Position = vec4(npos.x, npos.y, 1.0, 1.0);
}