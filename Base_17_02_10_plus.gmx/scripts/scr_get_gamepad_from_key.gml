///scr_get_gamepad_from_key(inst_touche || vk_value)
var vkValue = argument0.touche;

var retValue = gp_face1;
switch(vkValue)
{
    case ord("A") : retValue = gp_face1; break;
    case ord("S") : retValue = gp_face3; break;
    case vk_up : retValue = gp_padu; break;
    case vk_down : retValue = gp_padd; break;
    case vk_left : retValue = gp_padl; break;
    case vk_right : retValue = gp_padr; break;
    case vk_escape : retValue = gp_start; break;
}

return retValue;
