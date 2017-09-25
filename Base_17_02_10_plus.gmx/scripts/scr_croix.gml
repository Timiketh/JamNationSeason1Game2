///scr_croix(gridX, gridY, inst_grille, true_or_false)

//gauche
for (var i = argument0; i >= 0; i--)
{
    var testX = argument0 + i;
    var testY = argument1;
    if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
    {
        var node = argument2.zeGrid[# testX, testY];
        if (exists(node))
        {
            node.allume = argument3;
        }
        else
        {
            break;
        }
    }
}

//droite
for (var i = argument0; i < argument2.w; i++)
{
    var testX = argument0 + i;
    var testY = argument1;
    if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
    {
        var node = argument2.zeGrid[# testX, testY];
        if (exists(node))
        {
            node.allume = argument3;
        }
        else
        {
            break;
        }
    }
}

//haut
for (var i = argument1; i >= 0; i--)
{
    var testX = argument0;
    var testY = argument1 + i;
    if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
    {
        var node = argument2.zeGrid[# testX, testY];
        if (exists(node))
        {
            node.allume = argument3;
        }
        else
        {
            break;
        }
    }
}

//bas
for (var i = argument1; i < argument2.h ; i++)
{
    var testX = argument0;
    var testY = argument1 + i;
    if (testX >= 0 && testX < argument2.w && testY >= 0 && testY < argument2.h)
    {
        var node = argument2.zeGrid[# testX, testY];
        if (exists(node))
        {
            node.allume = argument3;
        }
        else
        {
            break;
        }
    }
}
