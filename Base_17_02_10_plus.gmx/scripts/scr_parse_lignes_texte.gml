///scr_parse_lignes_texte("texte", nbreW, ds_list);

var strLen = string_length(argument0);

var counter = 0;

var startIndex = 1;
var endIndex = 1;
var oldEndIndex = 1;
var oldOldEndIndex = 1;


var ok = true;

for (var i = 1; i < strLen; i+=1)
{
    counter += 1;
    endIndex += 1;
    var char = string_char_at(argument0, i);
    if (char == "#")
    {
        counter = 0;
        var strTemp = string_copy(argument0, startIndex, endIndex-startIndex);
        ds_list_add(argument2, strTemp);
        oldEndIndex = endIndex;
        startIndex = oldEndIndex;
        oldOldEndIndex = oldEndIndex;
    }
    
    if (counter >= argument1)
    {
        if (oldOldEndIndex == oldEndIndex)
        {
            oldEndIndex = endIndex;
        }
        var strTemp = string_copy(argument0, startIndex, oldEndIndex-startIndex);
        ds_list_add(argument2, strTemp);
        startIndex = oldEndIndex;
        counter = endIndex - oldEndIndex;
        oldOldEndIndex = oldEndIndex;
        /*char2 = string_char_at(argument0, i+1);
        if (char2 == " ")
        {
            i+=1;
            endIndex+=1;
        }*/
    }
    if (char == " ")
    {
        oldEndIndex = endIndex;
    }
}
if (counter != 0)
{
    endIndex += 1;
    var strTemp = string_copy(argument0, startIndex, endIndex-startIndex);
    ds_list_add(argument2, strTemp);
}

