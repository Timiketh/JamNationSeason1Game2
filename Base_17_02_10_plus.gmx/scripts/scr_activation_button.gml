///scr_activation_button("PRESS"|"HOLD"|"RELEASE"|"PRESS&HOLD", inst_touche)
/*
Script qui vérifie si une touche => argument0 est activée ((appuyée, enfoncée) => argument1)
argument0 -> un string "PRESS", "HOLD" ou "RELEASE"
argument1 -> la touche comme telle (equivaut a : vk_qqch)
*/
var typeActivation = argument0;
var toucheActivation = argument1;

if (!obj_input.isTouchScreen)
{
    if (typeActivation == "HOLD")
    {
        return (scr_check_touche(toucheActivation))
    }
    else if (typeActivation == "PRESS" || typeActivation == "PRESS&HOLD")
    {
        return (scr_pressed_touche(toucheActivation))
    }
    else if (typeActivation == "RELEASE")
    {
        return (scr_released_touche(toucheActivation))
    }
}
else
{
    if (toucheActivation.immune)
    {
        return false;
    }
    return scr_execute(scr_get_touchscreen_activation_from_touche(typeActivation, toucheActivation));
}
