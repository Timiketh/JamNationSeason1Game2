///BufferToListType(list, buffer, offset, type);
var list = argument0;
var b = argument1;
var offset = argument2;

var val_type = argument3;

buffer_seek(b, buffer_seek_start, offset);
var s = buffer_read(b, buffer_u32);

var value;


repeat (s) {
    value = buffer_read(b, val_type);
    ds_list_add(list, value);
}
