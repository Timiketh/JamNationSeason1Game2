///BufferToGridType(grid, buffer, offset, type);
var ds = argument0;
var b = argument1;
var offset = argument2;
var val_type = argument3;

buffer_seek(b, buffer_seek_start, offset);

var w = buffer_read(b, buffer_u32);
var h = buffer_read(b, buffer_u32);

ds_grid_resize(ds, w, h);

var value;
for (var j = 0; j < h; ++j) {
    for (var i = 0; i < w; ++i) {
        value = buffer_read(b, val_type);
        
        ds_grid_set(ds, i, j , value);
    }
}
