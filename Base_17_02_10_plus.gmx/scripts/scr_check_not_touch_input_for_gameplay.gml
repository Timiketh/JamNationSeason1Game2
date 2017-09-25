///scr_check_not_touch_input_for_gameplay(inst_gameplay)
/*
Script qui vérifie si une touche => argument0 est activée ((appuyée, enfoncée) => argument1)
argument0 -> un string "PRESS", "HOLD" ou "RELEASE"
argument1 -> la touche comme telle (equivaut a : vk_qqch)
*/

var checkActivation = argument0.activation;
if (argument0.lastActive && argument0.activation == "PRESS&HOLD")
{
    checkActivation = "HOLD";
}

return scr_activation_button(checkActivation, argument0.touche);
