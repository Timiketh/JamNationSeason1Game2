///destroy_instance(inst)
if (argument0 != obj_call_nop && -1 != argument0 && instance_exists(argument0))
{
    with(argument0)
    {
        instance_destroy();
    }
}
