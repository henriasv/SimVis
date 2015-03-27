uniform highp float lightFalloffDistance;
uniform highp float normalVectorSign;
uniform highp float scale;

attribute highp vec4 a_position;
attribute highp vec3 a_normal;
attribute highp vec3 a_color;

varying highp float attenuationFactor;
varying highp vec3 normal;
varying highp vec3 color;
varying highp vec3 vertexPosition;

void main() {
    vertexPosition = a_position.xyz;
    highp vec4 scaledPosition = vec4(a_position.xyz*scale, a_position.w);

    normal = a_normal*normalVectorSign;
    attenuationFactor = attenuation(vertexPosition);
    color = a_color;

    gl_Position = cp_modelViewProjectionMatrix*scaledPosition;
//    highp vec4 lightPositionProjected = cp_modelViewProjectionMatrix*vec4(cp_lightPosition, 1.0);
//    highp float lightDistance = lightPositionProjected.z;
//    light = clamp((lightFalloffDistance * 0.85 - lightDistance) / (lightFalloffDistance * 0.7), 0.4, 1.0);
}
