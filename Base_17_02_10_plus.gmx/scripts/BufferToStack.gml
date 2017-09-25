///BufferToStack(stack, buffer, offset);
var ds = argument0;
var b = argument1;
var offset = argument2;
var s = buffer_get_size(b);

buffer_seek(b, buffer_seek_start, offset);

var value = 0;
var val_type = 0;


do {
    val_type = buffer_read(b, buffer_u8);
    if (val_type == $FF) {
        break;
    }
    value = buffer_read(b, val_type);
    ds_stack_push(ds, value);


} until (buffer_tell(b) == s);
