if (is_array(argument0))
{
    var finalCondition = true;
    var array_length = array_length_1d(argument0);
    {
        for (var i = 0; i < array_length; i += 1)
        {
            var thisCondition = scr_execute(argument0[i]);
            if (!thisCondition)
            {
                finalCondition = false;
            }
        }
    }
    return finalCondition;
}

if (argument0 == -11) //-11 c'est la valeur par defaut qui doit être utilisée pour initialiser un array d'obj_callable
{
    return true;
}

if (!instance_exists(argument0))
{
    scr_erreur("L'agument passé au scr_execute n'est pas une instance qui existe.");
}

if (!scr_parent(argument0, obj_callable))
{
    scr_erreur("L'argument passé au scr_execute n'est pas une instance d'obj_callable.");
}

if (!script_exists(argument0.execute)) 
{
    scr_erreur("La variable 'execute' de l'obj_callable dans scr_execute n'est pas un script!");
}
var thisReturn = -1;
if (argument0.argc == 0)
{
    thisReturn = script_execute(argument0.execute);
}
else if (argument0.argc == 1)
{
    thisReturn = script_execute(argument0.execute, argument0.argv[0]);
}
else if (argument0.argc == 2)
{
    thisReturn = script_execute(argument0.execute, argument0.argv[0], argument0.argv[1]);
}
else if (argument0.argc == 3)
{
    thisReturn = script_execute(argument0.execute, argument0.argv[0], argument0.argv[1], argument0.argv[2]);
}
else if (argument0.argc == 4)
{
    thisReturn = script_execute(argument0.execute, argument0.argv[0], argument0.argv[1], argument0.argv[2], argument0.argv[3]);
}
else if (argument0.argc == 5)
{
    thisReturn = script_execute(argument0.execute, argument0.argv[0], argument0.argv[1], argument0.argv[2], argument0.argv[3], argument0.argv[4]);
}
else if (argument0.argc == 6)
{
    thisReturn = script_execute(argument0.execute, argument0.argv[0], argument0.argv[1], argument0.argv[2], argument0.argv[3], argument0.argv[4], argument0.argv[5]);
}
else if (argument0.argc == 7)
{
    thisReturn = script_execute(argument0.execute, argument0.argv[0], argument0.argv[1], argument0.argv[2], argument0.argv[3], argument0.argv[4], argument0.argv[5], argument0.argv[6]);
}
else if (argument0.argc == 8)
{
    thisReturn = script_execute(argument0.execute, argument0.argv[0], argument0.argv[1], argument0.argv[2], argument0.argv[3], argument0.argv[4], argument0.argv[5], argument0.argv[6], argument0.argv[7]);
}
else
{
    scr_erreur("argc trop elevé pour le scr_execute, ne peut pas être plus haut que 8 et est : "+string(argument0.argc));
}

if(argument0.assignTo != -11 && is_array(argument0.assignTo))
{
    argument0.assignTo[0] = thisReturn;
}

return thisReturn;
