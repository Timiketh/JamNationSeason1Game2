///show_debug()

var message = "";

for (var i = 0; i < argument_count; i += 1)
{
    if (is_array(argument[i]))
    {
        message += "[";
        var taille = array_length_1d(argument[i]);
        var thisArray = argument[i];
        for (var j = 0; j < taille; j += 1)
        {
            message += show_debug_interne(thisArray[j]);
            if (j < taille - 1)
            {
                message += ", ";
            }
        }
        message += "]";
    }
    else if (is_real(argument[i]) || is_string(argument[i]) || is_undefined(argument[i]))
    {
        message += string(argument[i]);
    }
    else if (ds_exists(argument[i], ds_type_list))
    {
        message += string(argument[i]);
    }
}

return message;
