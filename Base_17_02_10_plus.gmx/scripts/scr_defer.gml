#define scr_defer
///scr_defer(inst_callable, time_in_steps)
var defer = instance_create(-99999, -99999, obj_deferable);
defer.call = argument0;
argument0.persistent = true;
defer.alarm[0] = argument1;

#define scr_defer_independant_call
///scr_defer_independant(inst_callable, time_in_steps)
var defer = instance_create(-99999, -99999, obj_deferable);
defer.independant = true;
defer.call = argument0;
argument0.persistent = true;
defer.alarm[0] = argument1;