var dist = argument0;
var button = argument1;
var derp = argument2;
var X = argument3;
var Y = argument4;

var insto = instance_create(X, Y, obj_activable_souris);
insto.distance = dist;
insto.click = button;

return insto;
