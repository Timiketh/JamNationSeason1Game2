///BufferToMapType(map, buffer, offset, typekey, typevalue);
var ds = argument0;
var b = argument1;
var offset = argument2;

buffer_seek(b, buffer_seek_start, offset);

var val;
var val_type = argument4;
var key;
var key_type = argument3;

var s = buffer_read(b, buffer_u32);
repeat (s) {

    key = buffer_read(b, key_type);
    val = buffer_read(b, val_type);

    ds_map_add(ds, key, val);


} 
