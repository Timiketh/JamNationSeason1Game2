///ArrayToBuffer(array, null);


var thisArray = argument0;
var asdf = argument1;

var taille = array_length_1d(thisArray);


var list_temp = ds_list_create();

for (var i = 0 ; i < taille; i += 1)
{
    ds_list_add(thisArray[@ i]);
}

var data = ds_list_write(list_temp);

ds_list_destroy(list_temp);

return data;
