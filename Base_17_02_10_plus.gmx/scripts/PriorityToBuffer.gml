///PriorityToBuffer(buffer, priority, offset);
var ds = argument1;
var s = ds_priority_size(ds);
var b = argument0;
var offset = argument2;

buffer_seek(b, buffer_seek_start, offset);

var type_val;

var val, p;
repeat (s) {
    val = ds_priority_find_max(ds);
    if (is_string(val)) {
        type_val = buffer_string;
    } else {
        type_val = buffer_f64;
    }
    
    
    p = ds_priority_find_priority(ds, val);
    ds_priority_delete_max(ds);
    
    
    buffer_write(b,buffer_u8, type_val);
    buffer_write(b, type_val, val);
    buffer_write(b, buffer_f64, p);

}

buffer_write(b, buffer_u8, $FF);


return buffer_tell(b);
