///scr_shader_add_param(instance_shader_parametres, obj_shaders.param, param_value)
var obj_param = argument0;
var param_index = argument1;
var param_value = argument2;

if (instance_exists(obj_param))
{
    /*if (!(object_is_ancestor(obj_param, obj_shader_parametres)))
    {
        scr_erreur("Mauvais argument0 pour le scr_shader_add_param, l'objet n'herite pas d'obj_shader_parametres");
    }*/
    ds_map_delete(obj_param.params, param_index);
    ds_map_add(obj_param.params, param_index, param_value);
}
