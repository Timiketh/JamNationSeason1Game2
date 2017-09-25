///scr_hide_board(inst_grille)

var zeGrid = argument0;

with(obj_node)
{
    zeGrid.condition.argv[0] = id;
    if (scr_execute(zeGrid.condition))
    {
        visible = false;
    }
}
with(obj_pont)
{
    zeGrid.condition.argv[0] = id;
    if (scr_execute(zeGrid.condition))
    {
        visible = false;
    }
}
