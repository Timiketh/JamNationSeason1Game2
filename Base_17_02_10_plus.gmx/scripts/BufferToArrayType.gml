///BufferToArrayType(buffer, offset, valtype);
var ds;
var b = argument0;
var offset = argument1;

buffer_seek(b, buffer_seek_start, offset);

var val_type = argument2;
var value;

var w;
var h = buffer_read(b, buffer_u32);

for (var j = 0; j < h; ++j) {
    w = buffer_read(b, buffer_u32);
    for (var i = 0; i < w; ++i) {
        val_type = buffer_read(b, buffer_u8);
        value = buffer_read(b, val_type);
        
        ds[j, i] = value;
    }
}

return ds;
