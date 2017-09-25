///scr_set_node_active(persoX, persoY, inst_grille)
with (obj_node)
{
    active = false;
}

var testX = argument0;
var testY = argument1 - 1;
var currentNode = argument2.zeGrid[# argument0, argument1];
if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
{
    var node = argument2.zeGrid[# testX, testY];
    if (exists(node) && currentNode.connectU && node.connectD)
    {
        node.active = true;
    }
}

testX = argument0;
testY = argument1 + 1;
if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
{
    var node = argument2.zeGrid[# testX, testY];
    if (exists(node) && currentNode.connectD && node.connectU)
    {
        node.active = true;
    }
}

testX = argument0 - 1;
testY = argument1;
if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
{
    var node = argument2.zeGrid[# testX, testY];
    if (exists(node) && currentNode.connectL && node.connectR)
    {
        node.active = true;
    }
}

testX = argument0 + 1;
testY = argument1;
if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
{
    var node = argument2.zeGrid[# testX, testY];
    if (exists(node) && currentNode.connectR && node.connectL)
    {
        node.active = true;
    }
}

