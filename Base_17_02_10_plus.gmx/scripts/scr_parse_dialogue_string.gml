///scr_parse_dialogue_string("string", inst_dialogue, indexReplique)

var listeTemp = ds_list_create();
var index = 0;
var texte = argument0;

var indexReplique = argument2;


var tailleString = string_length(texte);
var DELIMITER = "##";
var DELIMITER_LENGTH = string_length(DELIMITER);

while (index < tailleString)
{
    var tempTexte = texte;
    tailleString = string_length(tempTexte);
    index = string_pos(DELIMITER, tempTexte);
    if (index == 0)
    {
        index = tailleString+1;
    }
    ds_list_add(listeTemp, string_copy(tempTexte, 0, index-1));
    if (index < tailleString)
    {
        texte = string_copy(tempTexte, index+DELIMITER_LENGTH, tailleString-(index+DELIMITER_LENGTH)+1);
    }
}

var listeTempLength = ds_list_size(listeTemp);

var replique = "";
var portrait = -1;
var repliquePos = -1;
var portraitPos = -1;


if (listeTempLength > 0)
{
    var elemReplique = ds_list_find_value(listeTemp, 0);
    if (elemReplique = "")
    {
        //On ne charge pas les lignes vides...
    }
    //Sinon, si c'est un cue, on ne le charge dans les répliques.
    else if (string_pos("!!", elemReplique) == 1)
    {
        ds_list_add(obj_control_cues.cues, indexReplique);
        //Diminuer l'index de réplique pour que l'index qui soit retourné soit le même.
        indexReplique -= 1;
    }
    else
    {
        for (var i = 0; i < listeTempLength; i += 1)
        {
            var elem = ds_list_find_value(listeTemp, i);
        
            switch(i)
            {
                case (0) : replique = elem; break;
                case (1) : portrait = scr_get_portrait_from_name(elem); break;
                case (2) : repliquePos = real(string_digits(elem)); break;
                case (3) : portraitPos = real(string_digits(elem)); break;
            }
        }
        
        ds_list_add(argument1.repliques, replique);
        ds_list_add(argument1.portraits, portrait);
        ds_list_add(argument1.repliquesPos, repliquePos);
        ds_list_add(argument1.portraitsPos, portraitPos);
    }
}

ds_list_destroy(listeTemp);

//retourne l'index pour pas qu'il soit incrémenté si c'est un cue ("!!")
return indexReplique+1;
