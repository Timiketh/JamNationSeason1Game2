#define scr_conditional_execute
///scr_conditional_execute(condition, execute, is_persistent)
var cond = instance_create(0,0, obj_conditional_execute);
cond.condition = argument0;
cond.executes[0] = argument1;
cond.condition.dependency = cond;
cond.condition.persistent = argument2;
cond.executes[0].dependency = cond;
cond.executes[0].persistent = argument2;
cond.persistent = argument2;
return cond;

#define scr_conditional_execute_2
///scr_conditional_execute_2(condition, execute1, execute2, is_persistent)
var cond = instance_create(0,0, obj_conditional_execute);
cond.condition = argument0;
cond.executes[0] = argument1;
cond.executes[1] = argument2;
cond.condition.dependency = cond;
cond.condition.persistent = argument3;
cond.executes[0].dependency = cond;
cond.executes[0].persistent = argument3;
cond.executes[1].dependency = cond;
cond.executes[1].persistent = argument3;
cond.persistent = argument3;
return cond;