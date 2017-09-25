///scr_start_dialogue_avec_style(path, target||[-1], inst_dialogue_style||[-1], inst_activable_pour_cooldown||[-1])

if (-1 != argument2 && !scr_parent(argument2, obj_dialogue_style))
{
    scr_erreur("L'argument2 dans scr_start_dialogue_avec_style n'hérite pas d'obj_dialogue_style!");
}

scr_safe_check(obj_control_dialogue);
ds_list_clear(obj_control_cues.cues);
obj_control_cues.index = 0;
var dialogue = scr_load_dialogue(scr_get_localized_file(argument0));
var dessine = instance_create(-99999,-99999,obj_dialogue_dessine);
if (-1 != argument2)
{
    scr_set_style_dialogue(dessine, argument2);
}
dessine.dialogue = dialogue;
if (argument3 != -1)
{
    dessine.cooldownTarget = argument3;
} 
obj_control_dialogue.dessine = dessine;
obj_control_dialogue.target = argument1;
obj_control_dialogue.start = true;

return dessine;
