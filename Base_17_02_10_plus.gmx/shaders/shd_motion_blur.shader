//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec2 pos;//x,y
uniform float facteurRayon;//1.01 - 5.0, a peu pres
uniform float facteurIntens;//1.01 - 8000.0, a peu pres, en fx du facteurRayon
const int Quality = 16;
const vec2 centre = vec2(0.5, 0.5);


uniform float gm_blue;
uniform float gm_red;
uniform float gm_green;
uniform float gm_alpha;

void main()
{
    vec4 Color;
    float v;
    vec2 ratioDistanceCentre = v_vTexcoord-centre;
    float value = sqrt((ratioDistanceCentre.x*ratioDistanceCentre.x)+(ratioDistanceCentre.y*ratioDistanceCentre.y));
    for( float i=0.0;i<1.0;i+=1.0/float(Quality) )
    {
        v = 0.9+i*0.1;//convert "i" to the 0.9 to 1 range
        float superValue = 1.0-v;
        superValue *= value/sqrt(2.0);
        superValue = pow(superValue, facteurRayon);
        superValue *= facteurIntens;
        Color += texture2D( gm_BaseTexture, v_vTexcoord+(centre-pos)*(superValue));
        
    }
    Color /= float(Quality);
    gl_FragColor =  Color *  v_vColour;
}
