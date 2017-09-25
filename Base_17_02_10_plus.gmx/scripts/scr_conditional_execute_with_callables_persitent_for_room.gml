#define scr_conditional_execute_with_callables_persitent_for_room
///scr_conditional_execute_with_callables_persitent_for_room(condition, execute, room)
var cond = instance_create(0,0, obj_conditional_execute);
cond.targetRoom = argument2;
cond.condition = scr_execute(argument0);
cond.executes[0] = scr_execute(argument1);
cond.condition.dependency = cond;
cond.condition.persistent = true;
cond.executes[0].dependency = cond;
cond.executes[0].persistent = true;
cond.persistent = true;
return cond;

#define scr_conditional_execute_with_callables_persitent_for_room_2
///scr_conditional_execute_with_callables_persitent_for_room_2(condition, execute1, execute2, is_persistent)
var cond = instance_create(0,0, obj_conditional_execute);
cond.targetRoom = argument2;
cond.condition = scr_execute(argument0);
cond.executes[0] = scr_execute(argument1);
cond.executes[1] = scr_execute(argument2);
cond.condition.dependency = cond;
cond.condition.persistent = true;
cond.executes[0].dependency = cond;
cond.executes[0].persistent = true;
cond.executes[1].dependency = cond;
cond.executes[1].persistent = true;
cond.persistent = true;
return cond;