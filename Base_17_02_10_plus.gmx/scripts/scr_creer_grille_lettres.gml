///scr_creer_grille_lettres(width, height, taille_lettres_pourcentage, "font.name", index_obj_lettre, isGui, color, simpleFont[-1]);
//Si utilise un simpleFont, il faut quand même spécifier un "font.name" de font en sprite, pour évaluer la grosseur de l'obj_lettre.
//Donc choisir une font en sprite qui est similaire au font voulu.

scr_set_font(argument3);

var test_spr = lettre("A");

var fontExists = (-1 != argument7 && font_exists(argument7));

var spr_w = sprite_get_width(test_spr);
var spr_h = sprite_get_height(test_spr);

var grille = instance_create(0,0,obj_grille_lettres);

var view_width = view_wview[view_current];
var view_height = view_hview[view_current];

if (argument5)
{
    view_width = obj_screen.w;
    view_height = obj_screen.h;
}
var w_lettre = view_width*argument2;
if (w_lettre == 0)
{
    w_lettre = 1920*argument2;
}
var h_lettre = spr_h*(w_lettre/spr_w);

grille.w = w_lettre;
grille.h = h_lettre;

var nbreW = floor(argument0/w_lettre);
var nbreH = floor(argument1/h_lettre);

grille.nbreW = nbreW;
grille.nbreH = nbreH;

var scaleX = w_lettre/spr_w;
var scaleY = scaleX;

for (var i = 0; i < nbreH; i+=1)
{
    var uneLigne = ds_list_create();
    for (var j = 0; j < nbreW; j+=1)
    {
        var uneLettre = instance_create(-99999,-99999,argument4);
        uneLettre.source = grille;
        uneLettre.image_xscale = scaleX;
        uneLettre.image_yscale = scaleY;
        uneLettre.image_blend = argument6;
        uneLettre.isGui = argument5;
        if (fontExists)
        {
            uneLettre.isSimpleFont = true;
            uneLettre.simpleFont = argument7;
        }
        else
        {
            uneLettre.simpleFont = font5;
        }
        ds_list_add(uneLigne, uneLettre);
    }
    ds_list_add(grille.lignes, uneLigne);
}

return grille;
