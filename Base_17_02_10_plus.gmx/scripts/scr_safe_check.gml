var objet = argument0; // object_index de l'objet a creer s'il n'existe pas deja

if (!instance_exists(objet))
{
    var inst_id = instance_create(-99999,-999999,objet);
    return inst_id;
}
else
{
    return objet;
}
