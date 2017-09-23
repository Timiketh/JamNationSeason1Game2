///ArrayToBufferType(buffer, array, offset, type);

var ds = argument1;
var w;
var h = array_height_2d(ds);
var b = argument0;
var offset = argument2;

buffer_seek(b, buffer_seek_start, offset);

var item;
var type = argument3;

buffer_write(b, buffer_u32, h);

for (var j = 0; j < h; ++j) {
    w = array_length_2d(ds, j);
    buffer_write(b, buffer_u32, w);
    for (var i = 0; i < w; ++i) {
        item = ds[j, i];
        buffer_write(b,buffer_u8, type);
        buffer_write(b, type, item);  
    }
}

return buffer_tell(b);
