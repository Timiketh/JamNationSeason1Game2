var obj_param = argument0;

if (instance_exists(obj_param))
{
    /*if (!(object_is_ancestor(obj_param, obj_shader_parametres)))
    {
        scr_erreur("Mauvais argument0 pour le scr_shader_set_params, l'objet n'herite pas d'obj_shader_parametres");
    }*/
    var taille = ds_map_size(obj_param.params);
    var key = ds_map_find_first(obj_param.params);
    for (var i = 0; i < taille; i += 1)
    {
        if (key >= 0)
        {
            var value = ds_map_find_value(obj_param.params, key);
            var array_l = 0;
            if (is_array(value))
            {
                array_l = array_length_1d(value);
            }
            if (array_l == 0)
            {
                shader_set_uniform_f(key, value);
            }
            else if (array_l == 1)
            {
                shader_set_uniform_f(key, value[0]);
            }
            else if (array_l == 2)
            {
                shader_set_uniform_f(key, value[0], value[1]);
            }
            else if (array_l == 3)
            {
                shader_set_uniform_f(key, value[0], value[1], value[2]);
            }
            else if (array_l == 4)
            {
                shader_set_uniform_f(key, value[0], value[1], value[2], value[3]);
            }
        }
        key = ds_map_find_next(obj_param.params, key);
    }
}
