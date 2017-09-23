///scr_save_ds_to_string(ini_section, ini_index, dataStructure, script)

var section = argument0;
var index = argument1;
var ds = argument2;
var ds_script = argument3;

var strData = script_execute(ds_script, ds, -1);

ini_write_string(string(section), string(index), strData);

index += 1;

return index;
