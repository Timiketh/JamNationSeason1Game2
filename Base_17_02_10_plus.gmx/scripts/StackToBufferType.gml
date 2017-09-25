///StackToBufferType(buffer, stack, offset, type);
var ds = argument1;
var s = ds_stack_size(ds);
var b = argument0;
var offset = argument2;

var tstack = ds_stack_create();

repeat (s) {
    ds_stack_push(tstack, ds_stack_pop(ds));
}

buffer_seek(b, buffer_seek_start, offset);

var type_val = argument3;
var val;

buffer_write(b, buffer_u32, s);
repeat (s) {
    val = ds_stack_pop(tstack);
    buffer_write(b, type_val, val);

}


ds_stack_destroy(tstack);

return buffer_tell(b);
