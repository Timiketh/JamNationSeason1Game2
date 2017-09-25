///BufferToArray(array, data);
var array = argument0;
var data = argument1;

var list_temp = ds_list_create();

ds_list_read(list_temp, data);

var taille = ds_list_size(list_temp);

for (var i = 0; i < taille; i += 1)
{
    array[@ i] = ds_list_find_value(list_temp, i);
}

ds_list_destroy(list_temp);

return -1;
