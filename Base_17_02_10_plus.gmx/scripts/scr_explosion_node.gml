///scr_explosion_node(gridX, gridY, inst_grille, true_or_false)


var tempNode = -1;
if (argument2.index == 0)
{
    tempNode = obj_partie.grille[1].zeGrid[# argument0, argument1];
}
else
{
    tempNode = obj_partie.grille[0].zeGrid[# argument0, argument1];
}
if (exists(tempNode))
{
    var offset = 800;
    if (argument2.index == 0)
    
    {
        offset = -800;
    }
    instance_create(tempNode.x+offset, tempNode.y, obj_anim_explosion);
}

for (var i = -2; i <= 2; i++)
{
    for (var j = -2; j <= 2; j++)
    {
        var testX = argument0 + i;
        var testY = argument1 + j;
        var currentNode = argument2.zeGrid[# argument0, argument1];
        if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
        {
            var node = argument2.zeGrid[# testX, testY];
            if (exists(node))
            {
                node.allume = argument3;
            }
        }
    }
}
