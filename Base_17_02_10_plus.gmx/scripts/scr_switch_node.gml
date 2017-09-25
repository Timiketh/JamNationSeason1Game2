///scr_switch_node(persoX, persoY, inst_grille)

var testX = argument0;
var testY = argument1;
var currentNode = argument2.zeGrid[# argument0, argument1];
if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
{
    var node = argument2.zeGrid[# testX, testY];
    if (exists(node))
    {
        node.allume = !node.allume;
        if(node.allume)audio_play_sound(son_active_neurone, 1,false);
        else audio_play_sound(son_desactive, 1,false)
    }
}

/*testX = argument0;
testY = argument1 + 1;
if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
{
    var node = argument2.zeGrid[# testX, testY];
    if (exists(node))
    {
        node.allume = !node.allume;
    }
}

testX = argument0 - 1;
testY = argument1;
if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
{
    var node = argument2.zeGrid[# testX, testY];
    if (exists(node))
    {
        node.allume = !node.allume;
    }
}

testX = argument0 + 1;
testY = argument1;
if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
{
    var node = argument2.zeGrid[# testX, testY];
    if (exists(node))
    {
        node.allume = !node.allume;
    }
}*/

