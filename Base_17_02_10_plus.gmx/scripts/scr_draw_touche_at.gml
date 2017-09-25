///scr_draw_touche_at(spr_contour, obj_touche, x, y, xscale, yscale, angle, blend, alpha)
var char = -1;
if (argument1.object_index == obj_touche_up)
{
    char = spr_up;
}
else if (argument1.object_index == obj_touche_down)
{
    char = spr_down;
}
else if (argument1.object_index == obj_touche_left)
{
    char = spr_left;
}
else if (argument1.object_index == obj_touche_right)
{
    char = spr_right;
}
else
{
    char = lettre(chr(argument1.touche));
}
scr_draw_touche_at_sprite(argument0, char, argument2, argument3, argument4, argument5, argument6, argument7, argument8);
