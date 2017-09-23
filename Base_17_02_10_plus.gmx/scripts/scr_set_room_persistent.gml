///scr_set_room_persistent([true, false])

room_persistent = argument0;
if (-1 != obj_persistence && instance_exists(obj_persistence))
{
    obj_persistence.persistence = argument0;
}
