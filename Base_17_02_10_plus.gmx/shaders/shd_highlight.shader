attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_texcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    v_texcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texcoord;

uniform float gm_blue;
uniform float gm_red;
uniform float gm_green;

uniform float decal;

uniform float glowSize;

uniform float gm_alpha;

void main()
{
    float offsetX = 0.0;
    float offsetY = 0.0;
    

    vec4 currentTex = texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y));
    if (currentTex.a > 0.00001)
    {
        gl_FragColor = vec4(gm_red, gm_green, gm_blue, currentTex.a*gm_alpha);
    }
}

