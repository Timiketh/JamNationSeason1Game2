///scr_set_texte_sur_grille(grille, ds_list_lignes)
var tailleTexte = ds_list_size(argument1);
argument0.taille = -1;
for (var i = 0; i < argument0.nbreH; i+=1)
{
    if (i < tailleTexte)
    {
        var ligne = ds_list_find_value(argument1, i);
        var lettres = ds_list_find_value(argument0.lignes, i);
        var tailleLigne = string_length(ligne);
        for (var j = 1; j <= tailleLigne; j+=1)
        {
            var uneLettre = ds_list_find_value(lettres, j-1);
            var char = string_char_at(ligne, j);
            if (!instance_exists(uneLettre))
            {
                scr_erreur("Une ligne du texte est trop longue pour rentrer sur une ligne de la grille.#Soit réduire la taille des lettres, insérer un saut de ligne pour mettre la ligne sur 2 lignes#ou utiliser scr_parse_lignes_textes_pour_grille (les sauts de lignes originaux seront perdus).");
            }
            uneLettre.sprite_index = lettre(char);
            uneLettre.depth = argument0.depth-1;
            uneLettre.char = char;
            argument0.taille+=1;
        }
    }
    else
    {
        break;
    }
}
