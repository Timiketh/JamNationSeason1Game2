///scr_check_touche(inst_obj_touche)
return (!argument0.immune && (keyboard_check(argument0.touche) || gamepad_button_check(0, scr_get_gamepad_from_key(argument0))));
