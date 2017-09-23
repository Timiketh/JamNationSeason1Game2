///scr_get_portrait_from_name("name")

var retValue = spr_vide;

string_replace_all(argument0, " ", "");

switch(argument0)
{
    /*case ("Espoir") : retValue = spr_port_espoir; break;
    case ("EspoirAM") : retValue = spr_port_espoir_am; break;
    case ("Technologie") : retValue = spr_port_tech; break;
    case ("Chien") : retValue = spr_port_chien; break;
    case ("Mémoire") : retValue = spr_port_memoire; break;*/
    case ("N/A") : retValue = spr_vide; break;
}

return retValue;
