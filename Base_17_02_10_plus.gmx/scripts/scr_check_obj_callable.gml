///scr_check_obj_callable(inst_callable)
if (argument0 == obj_call_true || argument0 == obj_call_false || argument0 == obj_call_nop || argument0 == -11)
{
    return new_call();
}
else
{
    return argument0;
}
