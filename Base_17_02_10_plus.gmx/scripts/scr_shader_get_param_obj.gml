///scr_shader_get_param_obj(shd)

var obj = -1;

switch(argument0)
{
    case(sha_wave) : obj = obj_shader_wave; break;
    case(shd_invert) : obj = obj_shader_invert; break;
    case(shd_magnify) : obj = obj_shader_magnify; break;
}

return obj;
