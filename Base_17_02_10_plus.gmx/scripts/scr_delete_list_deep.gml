///scr_delete_list_deep(ds_list)

var taille = ds_list_size(argument0);

for (var i = 0; i < taille; i += 1)
{
    var elem = ds_list_find_value(argument0, i);
    with (elem)
    {
        instance_destroy();
    }
}

ds_list_destroy(argument0);
