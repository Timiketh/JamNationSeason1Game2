///scr_get_finger_on_left_screen()
var limitW = obj_screen.w/2;
var isOn = false;
for (var i = 0; i < 5; i += 1)
{
    if (device_mouse_check_button(i, mb_any))
    {
        if (device_mouse_x_to_gui(i) > limitW)
        {
            isOn = true;
            break;
        }
    }
}

return isOn;
