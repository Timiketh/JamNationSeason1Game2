attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec4 v_vColour;
varying vec2 v_vTexcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
 
const float blurSize = 1.0/300.; //Replace 512 with size of blur surface
 
void main(void)
{
   vec4 sum = vec4(0.0);
 
   // blur in x (horizontal)
   // take nine samples, with the distance blurSize between them
   sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - 4.0*blurSize, v_vTexcoord.y)) * 0.05;
   sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - 3.0*blurSize, v_vTexcoord.y)) * 0.09;
   sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - 2.0*blurSize, v_vTexcoord.y)) * 0.12;
   sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - blurSize, v_vTexcoord.y)) * 0.15;
   sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y)) * 0.16;
   sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + blurSize, v_vTexcoord.y)) * 0.15;
   sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + 2.0*blurSize, v_vTexcoord.y)) * 0.12;
   sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + 3.0*blurSize, v_vTexcoord.y)) * 0.09;
   sum += texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + 4.0*blurSize, v_vTexcoord.y)) * 0.05;
 
   gl_FragColor = sum;
}
