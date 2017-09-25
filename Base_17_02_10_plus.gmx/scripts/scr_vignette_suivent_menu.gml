///scr_vignette_suivent_menu(id_menu)

var menu = argument0;

var taille = ds_list_size(menu.articles);
if (taille > 0)
{
    var segment = 360 / taille;
    for (var i = 0; i < taille; i+=1)
    {
        var segmentCourant = (i*segment) + menu.offset;
        var elem = ds_list_find_value(menu.articles, i);
        elem.x = menu.x + lengthdir_x(menu.ouvertRayon/menu.ratioRayon, segmentCourant);
        elem.y = menu.y + lengthdir_y(menu.ouvertRayon/menu.ratioRayon, segmentCourant);
    }
}

