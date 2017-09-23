///scr_stop_dialogue(inst_dialogue_dessine)
if (-1 != argument0 && instance_exists(argument0))
{
    argument0.fini = true;
    argument0.alarm[0] = 2;
}
