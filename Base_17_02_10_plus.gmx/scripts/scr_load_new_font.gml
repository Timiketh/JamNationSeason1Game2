///scr_load_new_font(fontDirectory)

scr_safe_check(obj_ctrl_font);

var alreadyExists = ds_map_find_value(obj_ctrl_font.fonts, argument0);

if (alreadyExists == noone || alreadyExists == -1 || alreadyExists == undefined)
{
    var name = argument0;
    
    if (argument0 == "latha.ttf")
    {
        name = "LathaTTF/"+argument0;
    }
    else
    {
        name = name+"/"+name;
    }
    
    var newFont = instance_create(0,0,obj_font);
    
    ds_map_add(obj_ctrl_font.fonts, argument0, newFont);
    
    var allLetters = "1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNMçàâéèêôïîûùëÇÀÂÉÈÊÔÏÎÛÙË-'().,!?:;"+'"';
    
    var taille = string_length(allLetters)-1;
    
    for (var i = 1; i <= taille; i += 1) {
        for (var j = 1; j <= 20 ; j += 1)
        {
            if (j == 1)
            {
                var fname = scr_get_letter_file(string_char_at(allLetters, i));
                var newSprite=sprite_add(name+"_"+fname+".png", 1, false, false, 0, 0);
                if (newSprite != -1)
                {
                    var w = sprite_get_width(newSprite);
                    var h = sprite_get_height(newSprite);
                    sprite_set_offset(newSprite, w/2, h/2);
                    ds_map_add(newFont.font, fname, newSprite);
                    break;
                }
            }
            else
            {
                var fname = scr_get_letter_file(string_char_at(allLetters, i));
                if (j == 4)
                {
                    //show_message("essaie de trouver : "+name+"_"+fname+"_"+string(j));
                }
                var newSprite=sprite_add(name+"_"+fname+"_"+string(j)+".png", j, false, false, 0, 0);
                if (newSprite != -1)
                {
                    //show_message("trouve la file");
                    var w = sprite_get_width(newSprite);
                    var h = sprite_get_height(newSprite);
                    sprite_set_offset(newSprite, w/2, h/2);
                    ds_map_add(newFont.font, fname, newSprite);
                    break;
                }
            }
        }
    }
    file_find_close();
}
