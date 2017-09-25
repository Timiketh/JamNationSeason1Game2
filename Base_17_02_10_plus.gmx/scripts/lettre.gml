///lettre(char)

var value = scr_get_letter_file(argument0);
var ret = ds_map_find_value(obj_ctrl_font.actif.font, value);
if (ret == 0 || ret == noone || ret == undefined)
{
    ret = spr_vide;
}

return ret;

