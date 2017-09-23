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

uniform vec2 obj_pos;

uniform vec2 p1;
uniform vec2 p2;
uniform vec2 p3;

uniform float gm_alpha;
uniform float gm_blue;
uniform float gm_red;
uniform float gm_green;

uniform float res_x;
uniform float res_y;

//441 //396

void main()
{ 
    float X = res_x * 0.5;//v_texcoord.x;
    float Y = res_y * 0.5;//v_texcoord.y;
    /*float r1 = (X+obj_pos.x - p2.x) * (p1.y - p2.y) - (p1.x - p2.x) * (Y+obj_pos.y - p2.y);
    float r2 = (X+obj_pos.x - p3.x) * (p2.y - p3.y) - (p2.x - p3.x) * (Y+obj_pos.y - p3.y);
    float r3 = (X+obj_pos.x - p1.x) * (p3.y - p1.y) - (p3.x - p1.x) * (Y+obj_pos.y - p1.y);*/
    if (obj_pos.x+X >= p1.x)
    {
        gl_FragColor = texture2D(gm_BaseTexture, v_texcoord);
    }
    else
    {
        gl_FragColor = vec4(0,0,0,0);
    }
}

