///scr_select_ds_script(dataStructure{"map", "list", "array", "stack", "queue", "grid"}, isSave)
var ds_type = argument0;
var save = argument1;

var script = -1;

switch (save)
{
    case (true) : switch (ds_type)
                {
                    case "array" : script = ArrayToBuffer; break;
                    case "map" : script = MapToBuffer; break;
                    case "list" : script = ListToBuffer; break;
                    case "stack" : script = StackToBuffer; break;
                    case "queue" : script = QueueToBuffer; break;
                    case "grid" : script = GridToBuffer; break;
                }; break;
    case (false) : switch (ds_type)
                {
                    case "array" : script = BufferToArray; break;
                    case "map" : script = BufferToMap; break;
                    case "list" : script = BufferToList; break;
                    case "stack" : script = BufferToStack; break;
                    case "queue" : script = BufferToQueue; break;
                    case "grid" : script = BufferToGrid; break;
                }; break;
}

return script;
