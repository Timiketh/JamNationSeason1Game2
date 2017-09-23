var ds_file = argument0;
var map = argument1;
var data_file = file_text_open_write(ds_file);
file_text_write_string(data_file,ds_map_write(map));
file_text_close(data_file);
