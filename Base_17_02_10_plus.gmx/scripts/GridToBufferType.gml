///GridToBufferType(buffer, grid, offset, type);

var ds = argument1;
var w = ds_grid_width(ds);
var h = ds_grid_height(ds);
var b = argument0;
var offset = argument2;
var type = argument3;

buffer_seek(b, buffer_seek_start, offset);

buffer_write(b, buffer_u32, w);
buffer_write(b, buffer_u32, h);
var item;
for (var j = 0; j < h; ++j) {
    for (var i = 0; i < w; ++i) {
        item = ds_grid_get(ds, i, j);
        buffer_write(b, type, item);  
    }
}

return buffer_tell(b);
