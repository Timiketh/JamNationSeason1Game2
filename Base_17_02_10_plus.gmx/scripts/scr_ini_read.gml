///scr_ini_read(section, isNum)

var section = string(argument0);
var num = argument1;
if (num)
{
    ret = ini_read_real(section, "0", -1);
}
else
{
    ret =  ini_read_string(section, "0", "");
}

return ret;
