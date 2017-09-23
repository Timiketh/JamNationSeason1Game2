///destroy_instance(inst)
if (-1 != argument0 && instance_exists(argument0))
{
    with(argument0)
    {
        instance_destroy();
    }
}
