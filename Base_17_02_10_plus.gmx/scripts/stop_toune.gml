///stop_toune(son_id, millisecs)
scr_safe_check(obj_toune_stopper);
if (argument1 > 0)
{
    var done = false;
    for (var i = 0; i <= 11; i += 1)
    {
        if (obj_toune_stopper.son[i] == argument0)
        {
            obj_toune_stopper.alarm[i] = room_speed*(argument1/1000);
            done = true;
            break;
        }
    }
    if (!done)
    {
        for (var i = 0; i <= 11; i += 1)
        {
            if (obj_toune_stopper.son[i] == -1)
            {
                obj_toune_stopper.son[i] = argument0;
                obj_toune_stopper.alarm[i] = room_speed*(argument1/1000);
                break;
            }
        }
    }
    audio_sound_gain(argument0, 0, argument1);
}
else
{
    audio_stop_sound(argument0);
}
