///scr_draw_touche_at_sprite(spr_contour, sprite, x, y, xscale, yscale, angle, blend, alpha)
draw_sprite_ext(argument0, 0, argument2, argument3, argument4, argument5, argument6, argument7, argument8);
draw_sprite_ext(spr_touche, 0, argument2, argument3, argument4, argument5, argument6, argument7, argument8);
var char = argument1;
var w = sprite_get_width(char);
var h = sprite_get_height(char);
var scaleX = (sprite_get_width(spr_touche)*argument4) / w;
var scaleY = (sprite_get_height(spr_touche)*argument5) / h;
scaleX *= 0.9;
scaleY *= 0.9;
draw_sprite_ext(char, 0, argument2, argument3, scaleX, scaleY, argument6, c_black, argument8);
