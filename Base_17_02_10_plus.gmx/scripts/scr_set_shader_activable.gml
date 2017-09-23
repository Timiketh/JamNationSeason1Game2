///scr_set_shader_activable(inst_highlight, r, g, b, target)

scr_shader_add_param(argument0.effet, obj_shaders.highlight_gm_red, argument1);
scr_shader_add_param(argument0.effet, obj_shaders.highlight_gm_green, argument2);
scr_shader_add_param(argument0.effet, obj_shaders.highlight_gm_blue, argument3);
argument0.target = argument4;
argument0.useImageIndex = true;
