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

uniform vec3 x1[3];
uniform vec3 y1[3];
uniform vec3 taillex1[3];
uniform vec3 tailley1[3];
uniform vec3 bordure1[3];
uniform vec3 x2[3];
uniform vec3 y2[3];
uniform vec3 taillex2[3];
uniform vec3 tailley2[3];
uniform vec3 bordure2[3];
uniform vec2 seed;
float rand(vec2 co){
    return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);
}
void main()
{
    /*vec3 x1[3];
    vec3 y1[3];
    vec3 taillex1[3];
    vec3 tailley1[3];
    vec3 bordure1[3];
    vec3 x2[3];
    vec3 y2[3];
    vec3 taillex2[3];
    vec3 tailley2[3];
    vec3 bordure2[3];
    
    x1[0]=vec3(0.1,-1.,-1.);
    y1[0]=vec3(0.2,-1.,-1.);
    taillex1[0]=vec3(0.2,-1.,-1.);
    tailley1[0]=vec3(0.2,-1.,-1.);
    bordure1[0]=vec3(0.5,-1.,-1.);
    x2[0]=vec3(0.3,-1.,-1.);
    y2[0]=vec3(0.4,-1.,-1.);
    taillex2[0]=vec3(0.2,-1.,-1.);
    tailley2[0]=vec3(0.2,-1.,-1.);
    bordure2[0]=vec3(0.5,-1.,-1.);
    
    x1[1]=vec3(0.1,-1.,-1.);
    y1[1]=vec3(0.1,-1.,-1.);
    taillex1[1]=vec3(0.1,-1.,-1.);
    tailley1[1]=vec3(0.1,-1.,-1.);
    bordure1[1]=vec3(0.1,-1.,-1.);
    x2[1]=vec3(0.1,-1.,-1.);
    y2[1]=vec3(0.1,-1.,-1.);
    taillex2[1]=vec3(0.1,-1.,-1.);
    tailley2[1]=vec3(0.1,-1.,-1.);
    bordure2[1]=vec3(0.1,-1.,-1.);
    
    x1[2]=vec3(0.1,-1.,-1.);
    y1[2]=vec3(0.1,-1.,-1.);
    taillex1[2]=vec3(0.1,-1.,-1.);
    tailley1[2]=vec3(0.1,-1.,-1.);
    bordure1[2]=vec3(0.1,-1.,-1.);
    x2[2]=vec3(0.1,-1.,-1.);
    y2[2]=vec3(0.1,-1.,-1.);
    taillex2[2]=vec3(0.1,-1.,-1.);
    tailley2[2]=vec3(0.1,-1.,-1.);
    bordure2[2]=vec3(0.1,-1.,-1.);*/
    
    
    vec2 texCoord = v_texcoord;
    vec4 swap=texture2D(gm_BaseTexture, vec2(v_texcoord.x, v_texcoord.y));  
    float aleat=rand(vec2(texCoord.x,texCoord.y));
    float aleat2=rand(vec2(aleat,aleat));
    for(int a=0;a<3;a+=1){
        //int a=0;
        
        if((bordure1[a].x==-1. && v_texcoord.x>x1[a].x && v_texcoord.x<x1[a].x+taillex1[a].x && 
        v_texcoord.y>y1[a].x && v_texcoord.y<y1[a].x+tailley1[a].x) ||
        (v_texcoord.x>x1[a].x && v_texcoord.x<x1[a].x+taillex1[a].x && 
        v_texcoord.y>y1[a].x && v_texcoord.y<y1[a].x+tailley1[a].x && 
        aleat<(v_texcoord.x-x1[a].x)*bordure1[a].x*100. && 
        aleat>(v_texcoord.x-(x1[a].x+taillex1[a].x-bordure1[a].x/10.))*bordure1[a].x*100. && 
        aleat<(v_texcoord.y-y1[a].x)*bordure1[a].x*100. && 
        aleat>(v_texcoord.y-(y1[a].x+tailley1[a].x-bordure1[a].x/10.))*bordure1[a].x*100.)){
            swap= texture2D(gm_BaseTexture, vec2(v_texcoord.x+x2[a].x-x1[a].x, v_texcoord.y+y2[a].x-y1[a].x));
        }else if((bordure2[a].x==-1. && v_texcoord.x>x2[a].x && v_texcoord.x<x2[a].x+taillex2[a].x && 
        v_texcoord.y>y2[a].x && v_texcoord.y<y2[a].x+tailley2[a].x) ||
        (v_texcoord.x>x2[a].x && v_texcoord.x<x2[a].x+taillex2[a].x && 
        v_texcoord.y>y2[a].x && v_texcoord.y<y2[a].x+tailley2[a].x && 
        aleat<(v_texcoord.x-x2[a].x)*bordure2[a].x*100. && 
        aleat>(v_texcoord.x-(x2[a].x+taillex2[a].x-bordure2[a].x/10.))*bordure2[a].x*100. && 
        aleat<(v_texcoord.y-y2[a].x)*bordure2[a].x*100. && 
        aleat>(v_texcoord.y-(y2[a].x+tailley2[a].x-bordure2[a].x/10.))*bordure2[a].x*100.)){
            swap= texture2D(gm_BaseTexture, vec2(v_texcoord.x-(x2[a].x-x1[a].x), v_texcoord.y-(y2[a].x-y1[a].x)));
        }
        ///
        if((bordure1[a].y==-1. && v_texcoord.x>x1[a].y && v_texcoord.x<x1[a].y+taillex1[a].y && 
        v_texcoord.y>y1[a].y && v_texcoord.y<y1[a].y+tailley1[a].y) ||
        (v_texcoord.x>x1[a].y && v_texcoord.x<x1[a].y+taillex1[a].y && 
        v_texcoord.y>y1[a].y && v_texcoord.y<y1[a].y+tailley1[a].y && 
        aleat<(v_texcoord.x-x1[a].y)*bordure1[a].y*100. && 
        aleat>(v_texcoord.x-(x1[a].y+taillex1[a].y-bordure1[a].y/10.))*bordure1[a].y*100. && 
        aleat<(v_texcoord.y-y1[a].y)*bordure1[a].y*100. && 
        aleat>(v_texcoord.y-(y1[a].y+tailley1[a].y-bordure1[a].y/10.))*bordure1[a].y*100.)){
            swap= texture2D(gm_BaseTexture, vec2(v_texcoord.x+x2[a].y-x1[a].y, v_texcoord.y+y2[a].y-y1[a].y));
        }else if((bordure2[a].y==-1. && v_texcoord.x>x2[a].y && v_texcoord.x<x2[a].y+taillex2[a].y && 
        v_texcoord.y>y2[a].y && v_texcoord.y<y2[a].y+tailley2[a].y) ||
        (v_texcoord.x>x2[a].y && v_texcoord.x<x2[a].y+taillex2[a].y && 
        v_texcoord.y>y2[a].y && v_texcoord.y<y2[a].y+tailley2[a].y && 
        aleat<(v_texcoord.x-x2[a].y)*bordure2[a].y*100. && 
        aleat>(v_texcoord.x-(x2[a].y+taillex2[a].y-bordure2[a].y/10.))*bordure2[a].y*100. && 
        aleat<(v_texcoord.y-y2[a].y)*bordure2[a].y*100. && 
        aleat>(v_texcoord.y-(y2[a].y+tailley2[a].y-bordure2[a].y/10.))*bordure2[a].y*100.)){
            swap= texture2D(gm_BaseTexture, vec2(v_texcoord.x-(x2[a].y-x1[a].y), v_texcoord.y-(y2[a].y-y1[a].y)));
        }
        ///
        if((bordure1[a].z==-1. && v_texcoord.x>x1[a].z && v_texcoord.x<x1[a].z+taillex1[a].z && 
        v_texcoord.y>y1[a].z && v_texcoord.y<y1[a].z+tailley1[a].z) ||
        (v_texcoord.x>x1[a].z && v_texcoord.x<x1[a].z+taillex1[a].z && 
        v_texcoord.y>y1[a].z && v_texcoord.y<y1[a].z+tailley1[a].z && 
        aleat<(v_texcoord.x-x1[a].z)*bordure1[a].z*100. && 
        aleat>(v_texcoord.x-(x1[a].z+taillex1[a].z-bordure1[a].z/10.))*bordure1[a].z*100. && 
        aleat<(v_texcoord.y-y1[a].z)*bordure1[a].z*100. && 
        aleat>(v_texcoord.y-(y1[a].z+tailley1[a].z-bordure1[a].z/10.))*bordure1[a].z*100.)){
            swap= texture2D(gm_BaseTexture, vec2(v_texcoord.x+x2[a].z-x1[a].z, v_texcoord.y+y2[a].z-y1[a].z));
        }else if((bordure2[a].z==-1. && v_texcoord.x>x2[a].z && v_texcoord.x<x2[a].z+taillex2[a].z && 
        v_texcoord.y>y2[a].z && v_texcoord.y<y2[a].z+tailley2[a].z) ||
        (v_texcoord.x>x2[a].z && v_texcoord.x<x2[a].z+taillex2[a].z && 
        v_texcoord.y>y2[a].z && v_texcoord.y<y2[a].z+tailley2[a].z && 
        aleat<(v_texcoord.x-x2[a].z)*bordure2[a].z*100. && 
        aleat>(v_texcoord.x-(x2[a].z+taillex2[a].z-bordure2[a].z/10.))*bordure2[a].z*100. && 
        aleat<(v_texcoord.y-y2[a].z)*bordure2[a].z*100. && 
        aleat>(v_texcoord.y-(y2[a].z+tailley2[a].z-bordure2[a].z/10.))*bordure2[a].z*100.)){
            swap= texture2D(gm_BaseTexture, vec2(v_texcoord.x-(x2[a].z-x1[a].z), v_texcoord.y-(y2[a].z-y1[a].z)));
        }
    }
    /*for(int a=0;a<25;a+=1){
        
        if((int(texCoord.x*taille.x)==int(array1[a].x))&& (int(texCoord.y*taille.y)==int(array1[a].y))){
            texCoord.x=array1[a].z/taille.x*aleat;
            texCoord.y=array1[a].w/taille.y*aleat;
            break;
        }else if((int(texCoord.x*taille.x)==int(array1[a].z)) && (int(texCoord.y*taille.y)==int(array1[a].w))){
            texCoord.x=array1[a].x/taille.x*aleat;
            texCoord.y=array1[a].y/taille.y*aleat;
            break;
        }
        /*if((texCoord.x==array1[a].x) && (texCoord.y==array1[a].y)){
            texCoord.x=array2[a].x;
            texCoord.y=array2[a].y;
        }else if((texCoord.x==array2[a].x)&& (texCoord.y==array2[a].y)){
            texCoord.x=array1[a].x;
            texCoord.y=array1[a].y;
        }*/
    //}
    //vec4 colour = texture2D(gm_BaseTexture, texCoord);
    //gl_FragColor = vec4(colour.r*aleat2, colour.g*aleat, colour.b*aleat2, colour.a*aleat);
    
    
    
    gl_FragColor = swap;

}


