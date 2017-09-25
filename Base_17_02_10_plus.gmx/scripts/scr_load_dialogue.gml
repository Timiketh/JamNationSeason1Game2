///scr_load_dialogue(path)

//Init cues
scr_safe_check(obj_control_cues);
obj_control_cues.index = 0;
ds_list_clear(obj_control_cues.cues);

//load file
var file = file_text_open_read(argument0);
var dialogue = instance_create(-99999, -99999, obj_dialogue);

var index = 0;

//parse lignes
while(!file_text_eof(file))
{
    index = scr_parse_dialogue_string(file_text_read_string(file), dialogue, index);
    file_text_readln(file);
}

file_text_close(file);

return dialogue;
