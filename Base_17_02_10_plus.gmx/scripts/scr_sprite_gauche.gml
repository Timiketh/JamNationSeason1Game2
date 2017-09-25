///scr_sprite_haut(id)

var startPoint = argument0.x;

if (!instance_exists(argument0))
{
    scr_erreur("L'argument0 dans scr_sprite_gauche n'est pas une instance qui existe.");   
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
condition1 = (thisAngle < 270 && thisAngle >= 90);
condition2 = (thisAngle == 0 || thisAngle == 180);

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
    offsetY = argument0.sprite_height - argument0.sprite_yoffset;
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

return startPoint - offsetY*facteurY - offsetX*facteurX;
