///BufferToPriority(priority, buffer, offset);
var ds = argument0;
var b = argument1;
var offset = argument2;
var s = buffer_get_size(b);

buffer_seek(b, buffer_seek_start, offset);

var value, p;
var val_type;


do {
    val_type = buffer_read(b, buffer_u8);
    if (val_type == $FF) {
        break;
    }
    value = buffer_read(b, val_type);
    p = buffer_read(b, buffer_f64);
    ds_priority_add(ds, value, p);

} until (buffer_tell(b) == s);
