///scr_sprite_haut(id)

var startPoint = argument0.y;

if (!instance_exists(argument0))
{
    scr_erreur("L'argument0 dans scr_sprite_haut n'est pas une instance qui existe.");   
}

var offsetY = argument0.sprite_yoffset;
var offsetX = argument0.sprite_width - argument0.sprite_xoffset;
var thisAngle = argument0.image_angle;
while (thisAngle >= 360)
{
    thisAngle -= 360;
}
while (thisAngle < 0)
{
    thisAngle += 360;
}

var facteurY = 1;
var facteurX = 1;

var yscale = !((argument0.sprite_height>0)-(argument0.sprite_height<0) == -1);
var xscale = !((argument0.sprite_width>0)-(argument0.sprite_width<0) == -1);
var condition1 = false;
var condition2 = false;
var signX = 1;
var signY = 1;
condition1 = (thisAngle < 180);
condition2 = (thisAngle == 90 || thisAngle == 270);

if (!xscale)
{
    signX = -1;
}
if (!yscale)
{
    signY = -1;
}

if ((!yscale && condition1) || (!condition1 && yscale))
{
    offsetY = (argument0.sprite_height - argument0.sprite_yoffset);
}
if ((!xscale && condition1) || (!condition1 && xscale))
{
    offsetX = argument0.sprite_xoffset;
}

offsetX *= signX;
offsetY *= signY;

if (condition2)
{
    facteurY = 0;
}
else
{
    facteurX = 0;
}
if (keyboard_check_pressed(ord("P")))
{
    show_debug_message("offsetY : "+string(offsetY));
    show_debug_message("offsetX : "+string(offsetX));
    show_debug_message("thisAngle : "+string(thisAngle));
    show_debug_message("facteurY : "+string(facteurY));
    show_debug_message("facteurX : "+string(facteurX));
    show_debug_message("yscale : "+string(yscale));
    show_debug_message("xscale : "+string(xscale));
    show_debug_message("condition1 : "+string(condition1));
    show_debug_message("condition2 : "+string(condition2));
    show_debug_message("signX : "+string(signX));
    show_debug_message("signY : "+string(signY));
}

return startPoint - offsetY*facteurY - offsetX*facteurX;
