///scr_set_lines_length_for_string(instance_id, string);

var iid = argument0;
var istr = argument1;

if (!(object_is_ancestor(iid.object_index, obj_string_parent)))
{
    scr_erreur("Mauvais argument0 pour le scr_set_lines_length_for_string, l'objet n'herite pas d'obj_string_parent");
}

var taille = string_length(istr);


var w_courant = 0;

var indexCourant = 0;

var w_temp = 0;

for (var i = 1; i <= taille; i += 1)
{   
    if (string_char_at(istr, i) == " ")
    {
        w_temp = i-1;
    }
    w_courant += 1;
    if (w_courant > iid.nbreW)
    {
        iid.separations[indexCourant] = w_temp;

        w_courant = i-(w_temp+1);
        indexCourant += 1;
    }
}

if (indexCourant > 0)
{
    iid.separations[indexCourant] = iid.separations[indexCourant-1] + w_courant + 1;
    indexCourant += 1;
}
else
{
    iid.separations[indexCourant] = w_courant;
    indexCourant += 1;
}

for (var i = indexCourant; i < array_length_1d(iid.separations); i += 1)
{
    iid.separations[i] = 9999;
}

