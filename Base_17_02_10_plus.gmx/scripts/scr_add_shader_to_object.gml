///scr_add_shader_to_object(instance_id, 'obj_shader_object', <obj_shader_wave>)

var iinsto = argument0;
var iobjIndex = argument1
var ishdId = argument2;

if (!(iobjIndex == obj_shader_object) && !(object_is_ancestor(iobjIndex, obj_shader_object)))
{
    scr_erreur("Mauvais argument1 pour le scr_add_shader_to_object, l'objet n'herite pas d'obj_shader_object");
}

if (!(object_is_ancestor(ishdId, obj_shader_parametres)))
{
    scr_erreur("Mauvais argument2 pour le scr_add_shader_to_object, l'objet n'herite pas d'obj_shader_parametres");
}

var ishader = instance_create(0,0,iobjIndex);
ishader.target = iinsto;

var ieffet = instance_create(0,0,ishdId);
ishader.effet = ieffet;

return ishader;
