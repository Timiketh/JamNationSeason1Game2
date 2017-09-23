///scr_menu_ajouter_vignette(menu, vignette);

var menu = argument0;
var vignette = argument1;

if (vignette.object_index != obj_vignette && !object_is_ancestor(vignette.object_index, obj_vignette)) {
    scr_erreur("L'argument1 dans le scr_menu_ajouter_vignette n'herite pas de l'obj_vignette.");
} 

ds_list_add(menu.articles, vignette);
var taille = ds_list_size(menu.articles);
var segment = 360 / taille;
for (var i = 0; i < taille; i+=1)
{
    var segmentCourant = (i*segment) + menu.offset;
    var elem = ds_list_find_value(menu.articles, i);
    elem.x = menu.x + lengthdir_x(menu.ouvertRayon/menu.ratioRayon, segmentCourant);
    elem.y = menu.y + lengthdir_y(menu.ouvertRayon/menu.ratioRayon, segmentCourant);
}
vignette.rayon = menu.vignetteRayon;
vignette.target = menu;

