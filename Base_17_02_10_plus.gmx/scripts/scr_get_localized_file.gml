///scr_get_localized_file(filename)
if (fr())
{
    return argument0;
}
else
{
    var newFileName = "";
    if (string_pos(".txt", argument0) != 0)
    {
        newFileName = string_replace(argument0, ".txt", "EN.txt");
    }
    else
    {
        newFileName = argument0+"EN";
    }
    if (file_exists(newFileName))
    {
        return newFileName;
    }
    else
    {
        show_debug_message("Localized file with name '"+string(newFileName)+"' cannot be found, will return the french version instead : "+string(argument0));
        return argument0;
    }
}
