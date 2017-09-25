///BufferToPriorityType(priority, buffer, offset, typekey, typeval);
var ds = argument0;
var b = argument1;
var offset = argument2;

buffer_seek(b, buffer_seek_start, offset);

var value, p;
var val_type = argument4;
var key_type = argument3;

var s = buffer_read(b, buffer_u32);
repeat (s) {
    value = buffer_read(b, val_type);
    p = buffer_read(b, key_type);
    ds_priority_add(ds, value, p);

}
