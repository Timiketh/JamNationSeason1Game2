///scr_scramble_board()

var taille = array_length_1d(obj_partie.grille);
for (var i = 0; i < taille; i++)
{
    var zeGrid = obj_partie.grille[i].zeGrid;
    var thisNbreEteint = obj_partie.grille[i].nbEteint;
    var thisNbreAllume = obj_partie.grille[i].nbAllume;
    show_debug("thisNbreEteint au debut pour grille : ", i, " , ", thisNbreEteint);
    show_debug("thisNbreAllume au debut pour grille : ", i, " , ", thisNbreAllume);
    var nbreTotal = 0;
    for (var j = 0; j < obj_partie.grille[i].w; j++)
    {
        for (var k = 0; k < obj_partie.grille[i].h; k++)
        {
            var thisNode = zeGrid[# j, k];
            if (exists(thisNode))
            {
                if (thisNbreEteint > 0 && thisNbreAllume > 0)
                {
                    var tirage = random(1);
                    if (tirage < thisNbreEteint/(thisNbreEteint+thisNbreAllume))
                    {
                        thisNbreEteint--;
                        thisNode.allume = false;
                        nbreTotal++;
                    }
                    else
                    {
                        thisNbreAllume--;
                        thisNode.allume = true;
                        nbreTotal++;
                    }
                }
                else if (thisNbreEteint > 0)
                {
                    thisNbreEteint--;
                    thisNode.allume = false;  
                    nbreTotal++;
                }
                else if (thisNbreAllume > 0)
                {
                    thisNbreAllume--;
                    thisNode.allume = true;
                    nbreTotal++;
                }
                else
                {
                    //scr_erreur("pas bon nbre d'eteint et allume dans scramble");
                }
            }
        }
    }
    show_debug("est-ce total est bon? : ", nbreTotal, " vs ", thisNbreEteint+thisNbreAllume);
}
