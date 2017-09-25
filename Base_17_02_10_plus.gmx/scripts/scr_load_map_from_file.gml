var ds_file = argument0;
var map = argument1;

data_file = file_text_open_read(ds_file);
ds_map_read(map,file_text_read_string(data_file));
file_text_close(data_file);
