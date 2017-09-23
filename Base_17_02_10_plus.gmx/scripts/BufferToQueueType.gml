///BufferToQueueType(queue, buffer, offset, type);
var ds = argument0;
var b = argument1;
var offset = argument2;

buffer_seek(b, buffer_seek_start, offset);

var value;
var val_type = argument3;

var s = buffer_read(b, buffer_u32);

repeat (s) {
    value = buffer_read(b, val_type);
    ds_queue_enqueue(ds, value);

} 
