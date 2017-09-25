///PriorityToBufferType(buffer, priority, offset, typekey, typeval);
var ds = argument1;
var s = ds_priority_size(ds);
var b = argument0;
var offset = argument2;

buffer_seek(b, buffer_seek_start, offset);

var type_val = argument4;
var type_key = argument3;
var val, p;

buffer_write(b, buffer_u32, s);
repeat (s) {
    val = ds_priority_find_max(ds);
    p = ds_priority_find_priority(ds, val);
    ds_priority_delete_max(ds);
    

    buffer_write(b, type_val, val);
    buffer_write(b, type_key, p);

}



return buffer_tell(b);
