///scr_saveload_object(section, obj, save)

var section = argument0;
var obj = argument1;
var save = argument2;

var ds_script = scr_load_string_to_ds;


if (save)
{
    ds_script = scr_save_ds_to_string;
}

var index = scr_saveload_basic_object(section, obj, save);

if (object_is_ancestor(obj.object_index, obj_shader_parametres))
{
    index = script_execute(ds_script, section, index, obj.params, scr_select_ds_script("map", save));
}



switch (obj.object_index)
{
    //Pour ...
    default : break;
}

section += 1;

return section;
