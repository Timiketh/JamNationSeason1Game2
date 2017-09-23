///new_call_assign(assignTo[], script, args...)

var newCall = -1;

if (argument_count == 0)
{
    scr_erreur("new_call_assign prend au moins un argument et son argument_count == 0!");
}
else if (argument_count == 1)
{
    newCall = new_call();
}
else if (argument_count == 2)
{
    newCall =  new_call_0(argument[1]);
}
else if (argument_count == 3)
{
    newCall =  new_call_1(argument[1], argument[2]);
}
else if (argument_count == 4)
{
    newCall =  new_call_2(argument[1], argument[2], argument[3]);
}
else if (argument_count == 5)
{
    newCall =  new_call_3(argument[1], argument[2], argument[3], argument[4]);
}
else if (argument_count == 6)
{
    newCall =  new_call_4(argument[1], argument[2], argument[3], argument[4], argument[5]);
}
else if (argument_count == 7)
{
    newCall =  new_call_5(argument[1], argument[2], argument[3], argument[4], argument[5], argument[6]);
}
else if (argument_count == 8)
{
    newCall =  new_call_6(argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7]);
}
else if (argument_count == 9)
{
    newCall =  new_call_7(argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8]);
}
else
{
    scr_erreur("Trop d'arguments dans new_call_assign, ne supporte pas 10 ou plus arguments!");
}

if (!is_array(argument[0]))
{
    scr_erreur("L'argument0 dans new_call_assign (pour assignTo) n'est pas un array!");
}

newCall.assignTo = argument[0];

return newCall;
