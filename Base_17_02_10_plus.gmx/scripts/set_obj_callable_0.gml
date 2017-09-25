#define set_obj_callable_0
///scr_set_execute(inst_callable, script)
var call = scr_check_obj_callable(argument0);
call.execute = argument1;
call.argc = 0;
return call;

#define set_obj_callable_1
///scr_set_execute(inst_callable, script, arg0)
var call = scr_check_obj_callable(argument0);
call.execute = argument1;
call.argc = 1;
call.argv[0] = argument2;
return call;

#define set_obj_callable_2
///scr_set_execute(inst_callable, script, arg0, arg1)
var call = scr_check_obj_callable(argument0);
call.execute = argument1;
call.argc = 2;
call.argv[0] = argument2;
call.argv[1] = argument3;
return call;

#define set_obj_callable_3
///scr_set_execute(inst_callable, script, arg0)
var call = scr_check_obj_callable(argument0);
call.execute = argument1;
call.argc = 3;
call.argv[0] = argument2;
call.argv[1] = argument3;
call.argv[2] = argument4;
return call;

#define set_obj_callable_4
///scr_set_execute(inst_callable, script, arg0)
var call = scr_check_obj_callable(argument0);
call.execute = argument1;
call.argc = 4;
call.argv[0] = argument2;
call.argv[1] = argument3;
call.argv[2] = argument4;
call.argv[3] = argument5;
return call;

#define set_obj_callable_5
///scr_set_execute(inst_callable, script, arg0)
var call = scr_check_obj_callable(argument0);
call.execute = argument1;
call.argc = 5;
call.argv[0] = argument2;
call.argv[1] = argument3;
call.argv[2] = argument4;
call.argv[3] = argument5;
call.argv[4] = argument6;
return call;

#define set_obj_callable_6
///scr_set_execute(inst_callable, script, arg0)
var call = scr_check_obj_callable(argument0);
call.execute = argument1;
call.argc = 6;
call.argv[0] = argument2;
call.argv[1] = argument3;
call.argv[2] = argument4;
call.argv[3] = argument5;
call.argv[4] = argument6;
call.argv[5] = argument7;
return call;