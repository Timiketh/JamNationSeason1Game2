var dist = argument0;
var key = argument1;
var targ = argument2;
var X = argument3;
var Y = argument4;

var insto = instance_create(X, Y, obj_activable_touche);
insto.distance = dist;
insto.touche = key;
insto.target = targ;

return insto;
