///scr_menu_ferme(id)

if (!scr_parent(argument0, obj_menu))
{
    scr_erreur("L'argument0 passé au scr_menu_ferme n'hérite pas d'obj_menu");
}

argument0.ouvert = false;
var taille = ds_list_size(argument0.articles);
for (var i = 0; i < taille; i+=1)
{
    var elem = ds_list_find_value(argument0.articles, i);
    elem.actif = false;
}
