///scr_menu_delete_vignette(id_vignette)
var delete = argument0; //L'obj_vignette_delete de la vignette a enlever de la liste.

if (instance_exists(delete) && instance_exists(delete.target) && instance_exists(delete.target.target))
{
    var taille = ds_list_size(delete.target.target.articles);
    if (taille > 0)
    {
        //Enlever la vignette en question.
        var index = ds_list_find_index(delete.target.target.articles, delete.target);
        if (index != -1)
        {
            ds_list_delete(delete.target.target.articles, index);
            
            //Replacer les articles dans le menu
            taille = ds_list_size(delete.target.target.articles);
            var segment = 360 / taille;
            for (var i = 0; i < taille; i+=1)
            {
                var segmentCourant = (i*segment) + delete.target.target.offset;
                var elem = ds_list_find_value(delete.target.target.articles, i);
                elem.x = delete.target.target.x + lengthdir_x(delete.target.target.ouvertRayon/2, segmentCourant);
                elem.y = delete.target.target.y + lengthdir_y(delete.target.target.ouvertRayon/2, segmentCourant);
            }
            
            //Detruire la vigenette et son obj_vignette_delete
            with(delete.target)
            {
                instance_destroy();
            }
            with(delete)
            {
                instance_destroy();
            }
        }
    }
}

