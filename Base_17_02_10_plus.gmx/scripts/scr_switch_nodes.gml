///scr_switch_nodes(inst_grille1, inst_grille2)

var zeGrid1 = obj_partie.grille[0].zeGrid;
var zeGrid2 = obj_partie.grille[1].zeGrid;
for (var j = 0; j < obj_partie.grille[0].w; j++)
{
    for (var k = 0; k < obj_partie.grille[0].h; k++)
    {
        var node1 = zeGrid1[# j, k];
        var node2 = zeGrid2[# j, k];
        if (exists(node1) && exists(node2))
        {
            var nodeValue1 = node1.allume;
            node1.allume = node2.allume;
            node2.allume = nodeValue1;
        }
    }
}
