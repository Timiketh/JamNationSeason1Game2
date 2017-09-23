///scr_get_gui_h()

var w = obj_screen.w;
var h = obj_screen.h;
var ratio = 1920/1080;
if (w/h >= ratio)
{
    return h;
}
else
{
    return (1/ratio)*w;
}
