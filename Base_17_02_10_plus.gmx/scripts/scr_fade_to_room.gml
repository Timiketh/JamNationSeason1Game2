///scr_fade_to_room(room)
instance_create(0,0,obj_room_cross_fade);
scr_defer(new_call_1(scr_goto_room, argument0), 2);
