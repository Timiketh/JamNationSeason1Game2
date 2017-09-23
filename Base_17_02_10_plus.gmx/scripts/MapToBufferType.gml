///MapToBufferType(buffer, map, offset, typekey, typeval);
var ds = argument1;
var s = ds_map_size(ds);
var b = argument0;
var offset = argument2;

buffer_seek(b, buffer_seek_start, offset);

var type_key = argument3;
var type_val = argument4;

buffer_write(b, buffer_u32, s);

var ind = ds_map_find_first(ds);
repeat (s) {
    var item = ds_map_find_value(ds, ind);

    buffer_write(b, type_key, ind);
    
    buffer_write(b, type_val, item);

    ind = ds_map_find_next(ds, ind);
}

return buffer_tell(b);
