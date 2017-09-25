///scr_get_letter_file(letter) 

var tmp = argument0;

var subname = tmp;
    
if (tmp == ":") {
    subname = "deuxpoint";
} 
else if (tmp == "?") {
    subname = "interrogation";
} 
else if (tmp == '"') {
    subname = "guillemet";
} 
else if (string_pos(tmp, "ÀÂ") != 0 ){
    subname ="A"
} 
else if (string_pos(tmp, "ÉËÈÊ") != 0) {
    subname ="E" 
} 
else if (string_pos(tmp, "ÎÏ") != 0) {
    subname ="I"
} 
else if (string_pos(tmp, "Ô") != 0) {
    subname ="O" 
} 
else if (string_pos(tmp, "ÙÛ") != 0) {
    subname ="U"
} 
else if (string_pos(tmp, "àâ") != 0) {
    subname ="a"
} 
else if (string_pos(tmp, "éëèê") != 0) {
    subname ="e" 
} 
else if (string_pos(tmp, "îï") != 0) {
    subname ="i"
} 
else if (string_pos(tmp, "ô") != 0) {
    subname ="o" 
} 
else if (string_pos(tmp, "ùû") != 0) {
    subname ="u"
}
else if (string_pos(tmp, "ç") != 0)
{
    subname ="c";
}
else if (string_pos(tmp, "Ç") != 0)
{
    subname ="C";
}

var maj = "QWERTYUIOPASDFGHJKLZXCVBNMÀÂÉÈÊÔÏÎÛÙËÇ";

if (string_pos(tmp, maj)  != 0) 
{
    subname += "Maj";
}

if (string_pos(tmp, "ÀÈÙàèù") != 0) {
    subname += "Grave";
} 
else if (string_pos(tmp, "Éé") != 0) {
    subname += "Aigu";
} 
else if (string_pos(tmp, "ÂÊÎÔÛâûîôê") != 0) {
    subname += "Circon";
} 
else if (string_pos(tmp, "ÏËïë") != 0){
    subname += "Trema";
}
else if (string_pos(tmp, "çÇ") != 0){
    subname += "Cedille";
} 

return subname;
