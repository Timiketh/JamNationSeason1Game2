#define new_call
///new_call(script, argsX)
if (argument_count == 0)
{
    return instance_create(-99999,-99999,obj_callable);
}
else if (argument_count == 1)
{
    return new_call_0(argument[0]);
}
else if (argument_count == 2)
{
    return new_call_1(argument[0], argument[1]);
}
else if (argument_count == 3)
{
    return new_call_2(argument[0], argument[1], argument[2]);
}
else if (argument_count == 4)
{
    return new_call_3(argument[0], argument[1], argument[2], argument[3]);
}
else if (argument_count == 5)
{
    return new_call_4(argument[0], argument[1], argument[2], argument[3], argument[4]);
}
else if (argument_count == 6)
{
    return new_call_5(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5]);
}
else if (argument_count == 7)
{
    return new_call_6(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6]);
}
else if (argument_count == 8)
{
    return new_call_7(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7]);
}

#define new_call_0
///new_call_0(execute)
var insto = instance_create(-99999, -99999, obj_callable);
insto.execute = argument0;
insto.argc = 0;
return insto;

#define new_call_1
///new_call_1(execute, argv0)
var insto = new_call();
insto.execute = argument0;
insto.argc = 1;
insto.argv[0] = argument1;
return insto;

#define new_call_2
///new_call_2(execute, argv0, argv1)
var insto = new_call();
insto.execute = argument0;
insto.argc = 2;
insto.argv[0] = argument1;
insto.argv[1] = argument2;
return insto;

#define new_call_3
///new_call_3(execute, argv0, argv1, argv2)
var insto = new_call();
insto.execute = argument0;
insto.argc = 3;
insto.argv[0] = argument1;
insto.argv[1] = argument2;
insto.argv[2] = argument3;
return insto;

#define new_call_4
///new_call_4(execute, argv0, argv1, argv2, argv3)
var insto = new_call();
insto.execute = argument0;
insto.argc = 4;
insto.argv[0] = argument1;
insto.argv[1] = argument2;
insto.argv[2] = argument3;
insto.argv[3] = argument4;
return insto;

#define new_call_5
///new_call_5(execute, argv0, argv1, argv2, argv3, argv4)
var insto = new_call();
insto.execute = argument0;
insto.argc = 5;
insto.argv[0] = argument1;
insto.argv[1] = argument2;
insto.argv[2] = argument3;
insto.argv[3] = argument4;
insto.argv[4] = argument5;
return insto;

#define new_call_6
///new_call_6(execute, argv0, argv1, argv2, argv3, argv4, argv5)
var insto = new_call();
insto.execute = argument0;
insto.argc = 6;
insto.argv[0] = argument1;
insto.argv[1] = argument2;
insto.argv[2] = argument3;
insto.argv[3] = argument4;
insto.argv[4] = argument5;
insto.argv[5] = argument6;
return insto;

#define new_call_7
///new_call_7(execute, argv0, argv1, argv2, argv3, argv4, argv5, argv6)
var insto = new_call();
insto.execute = argument0;
insto.argc = 7;
insto.argv[0] = argument1;
insto.argv[1] = argument2;
insto.argv[2] = argument3;
insto.argv[3] = argument4;
insto.argv[4] = argument5;
insto.argv[5] = argument6;
insto.argv[6] = argument7;
return insto;