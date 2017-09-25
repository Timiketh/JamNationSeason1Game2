attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_texcoord;
varying vec4 v_color;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_color = in_Colour;
    v_texcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texcoord;
varying vec4 v_color;

vec2 radial_size = vec2(0.0, 0.0);
uniform float radial_bright;
uniform vec2 radial_origin;
uniform float radial_blur;
 
void main()
{
  vec2 TexCoord = vec2(v_texcoord);
 
  vec4 SumColor = vec4(0.0, 0.0, 0.0, 0.0);
  TexCoord += radial_size * 0.5 - radial_origin;
 
  for (int i = 0; i < 12; i++) 
  {
    float Scale = 1.0 - radial_blur * (float(i) / 11.0);
    SumColor += texture2D(gm_BaseTexture, TexCoord * Scale + radial_origin);
  }
 
  gl_FragColor = SumColor / 12.0 * radial_bright;
}
