///scr_load_string_to_ds(ini_section, ini_index, dataStructure, script)

var section = argument0;
var index = argument1;
var ds = argument2;
var ds_script = argument3;

var data_temp = ini_read_string(string(section), string(index), "");

script_execute(ds_script, ds, data_temp);

index += 1;

return index;
