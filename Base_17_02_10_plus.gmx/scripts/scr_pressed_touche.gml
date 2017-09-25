///scr_pressed_touche(inst_obj_touche)
return (!argument0.immune && (keyboard_check_pressed(argument0.touche) || gamepad_button_check_pressed(0, scr_get_gamepad_from_key(argument0))));
