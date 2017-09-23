///scr_keyboard_not_pressed(touche)
if (!obj_input.isTouchScreen)
{
    return (!keyboard_check(argument0.touche) && !gamepad_button_check(0, scr_get_gamepad_from_key(argument0)));
}
else
{
    return !scr_execute(scr_get_touchscreen_activation_from_touche("HOLD", argument0));
}
