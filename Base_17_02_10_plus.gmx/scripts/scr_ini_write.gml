///scr_ini_write(section, val, isNum)

var section = argument0;
var val = argument1;
var num = argument2;
if (num)
{
    ini_write_real(string(section), "0", val);
}
else
{
    ini_write_string(string(section), "0", val);
}

section += 1;

return section;
