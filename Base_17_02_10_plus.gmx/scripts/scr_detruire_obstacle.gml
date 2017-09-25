///scr_detruire_obstacle(N/A, N/A, inst_grille)

var isOk = false;
var obstacleExists = false;
while (!isOk)
{
    with(obj_obstacle)
    {
        if (argument2 == grille)
        {
            obstacleExists = true;
            if (choose(true, false))
            {
                isOk = true;
                instance_destroy();
            }
        }
    }
    if (!obstacleExists)
    {
        isOk = true;
    }
}
