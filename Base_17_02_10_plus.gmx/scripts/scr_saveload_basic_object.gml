var section = string(argument0);
var obj = argument1;
var save = argument2;

if (save)
{
    ini_write_real(section, "0", obj.object_index);
    ini_write_real(section, "1", obj.x);
    ini_write_real(section, "2", obj.y);
    ini_write_real(section, "3", obj.sprite_index);
    ini_write_real(section, "4", obj.image_index);
    ini_write_real(section, "5", obj.image_speed);
    ini_write_real(section, "6", obj.image_xscale);
    ini_write_real(section, "7", obj.image_yscale);
    ini_write_real(section, "8", obj.image_angle);
    ini_write_real(section, "9", obj.image_blend);
    ini_write_real(section, "10", obj.image_alpha);
    ini_write_real(section, "11", obj.hspeed);
    ini_write_real(section, "12", obj.vspeed);
    ini_write_real(section, "13", obj.speed);
    ini_write_real(section, "14", obj.direction);
    ini_write_real(section, "15", obj.visible);
    ini_write_real(section, "16", obj.solid);
    ini_write_real(section, "17", obj.depth);
    ini_write_real(section, "18", obj.persistent);
    ini_write_real(section, "19", obj.mask_index);
}
else
{
    obj.x = ini_read_real(section, "1", -1);
    obj.y = ini_read_real(section, "2", -1);
    obj.sprite_index = ini_read_real(section, "3", -1);
    obj.image_index = ini_read_real(section, "4", -1);
    obj.image_speed = ini_read_real(section, "5", -1);
    obj.image_xscale = ini_read_real(section, "6", -1);
    obj.image_yscale = ini_read_real(section, "7", -1);
    obj.image_angle = ini_read_real(section, "8", -1);
    obj.image_blend = ini_read_real(section, "9", -1);
    obj.image_alpha = ini_read_real(section, "10", -1);
    obj.hspeed = ini_read_real(section, "11", -1);
    obj.vspeed = ini_read_real(section, "12", -1);
    obj.speed = ini_read_real(section, "13", -1);
    obj.direction = ini_read_real(section, "14", -1);
    obj.visible = ini_read_real(section, "15", -1);
    obj.solid = ini_read_real(section, "16", -1);
    obj.solid = ini_read_real(section, "17", -1);
    obj.persistent = ini_read_real(section, "18", -1);
    obj.mask_index = ini_read_real(section, "19", -1);
}
return 20;
