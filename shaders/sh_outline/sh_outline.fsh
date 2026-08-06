//
// Simple passthrough fragment shader
//

precision mediump float;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float r_outline;
uniform float g_outline;
uniform float b_outline;

void main()
{
    vec2 uv = v_vTexcoord;
    
    vec4 color = texture2D(gm_BaseTexture, uv);
    
    color.rgb = vec3(r_outline, g_outline, b_outline);
    
    gl_FragColor = color * v_vColour;
}
