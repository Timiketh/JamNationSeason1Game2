///scr_released_touche(inst_obj_touche)
return (!argument0.immune && (keyboard_check_released(argument0.touche) || gamepad_button_check_released(0, scr_get_gamepad_from_key(argument0))));
