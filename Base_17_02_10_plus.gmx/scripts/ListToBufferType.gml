///ListToBufferType(buffer, list, offset, type);
var list = argument1;
var s = ds_list_size(list);
var b = argument0;
var offset = argument2;
var type = argument3;
var item;

buffer_seek(b, buffer_seek_start, offset);


buffer_write(b, buffer_u32, s);
for (var ind = 0; ind < s; ++ind) {

    item = ds_list_find_value(list, ind);

    buffer_write(b, type, item);   
}

return buffer_tell(b);
