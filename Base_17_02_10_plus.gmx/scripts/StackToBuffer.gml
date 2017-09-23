///StackToBuffer(buffer, stack, offset);
var ds = argument1;
var s = ds_stack_size(ds);
var b = argument0;
var offset = argument2;

var tstack = ds_stack_create();

repeat (s) {
    ds_stack_push(tstack, ds_stack_pop(ds));
}

buffer_seek(b, buffer_seek_start, offset);

var type_val;

var val;
repeat (s) {
    val = ds_stack_pop(tstack);
    if (is_string(val)) {
        type_val = buffer_string;
    } else {
        type_val = buffer_f64;
    }
    
    
    buffer_write(b,buffer_u8, type_val);
    buffer_write(b, type_val, val);

}

buffer_write(b, buffer_u8, $FF);

ds_stack_destroy(tstack);

return buffer_tell(b);
