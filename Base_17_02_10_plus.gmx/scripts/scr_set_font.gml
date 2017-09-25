///scr_set_font(fontName)

var font = argument0;

scr_safe_check(obj_ctrl_font);
var setFont = ds_map_find_value(obj_ctrl_font.fonts, font);

if (noone == setFont || 0 == setFont || undefined == setFont)
{
    scr_erreur("Impossible de charger le font nommé '"+font+"' dans scr_set_font");
}

obj_ctrl_font.actif = setFont;
