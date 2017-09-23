///scr_get_touchscreen_activation_from_touche("PRESS|HOLD|RELEASE", inst_touche)

var retValue = -1;

switch(argument1.object_index)
{
    case(obj_touche_left) : retValue = obj_input.left; break;
    case(obj_touche_right) : retValue = obj_input.right; break;
    case(obj_touche_up) : retValue = obj_input.up; break;
    case(obj_touche_down) : retValue = obj_input.down; break;
    case(obj_touche_a) : retValue = obj_input.keyA; break;
    case(obj_touche_s) : retValue = obj_input.keyS; break;
    case(obj_touche_escape) : retValue = obj_input.keyEsc; break;
}

if (retValue == -1)
{
    instance_activate_object(obj_call_false);
    return obj_call_false;
}

instance_activate_object(retValue);
for (var i = 0; i < retValue.argc; i += 1)
{
    if (-1 != retValue.argv[i] && instance_exists(retValue.argv[i]) && scr_parent(retValue.argv[i], obj_callable))
    {
        instance_activate_object(retValue.argv[i]);
    }   
}

return retValue;
