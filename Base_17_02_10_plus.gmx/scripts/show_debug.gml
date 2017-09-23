///show_debug()

var message = "";

for (var i = 0; i < argument_count; i += 1)
{
    message += show_debug_interne(argument[i]);
}

show_debug_message(message);
