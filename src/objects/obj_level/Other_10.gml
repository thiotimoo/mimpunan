/// Generate 
timer = timerMax;
alarm[0] = room_speed;
alarm[1] = room_speed * generate_timer;

ini_open("savedata.ini");
hinted = ini_read_real("level" + string(obj_level.level), "hinted",0)
if (hinted == 0) {
	if (global.playable == 1 && hint != noone) {
		hint();
		ini_write_real("level" + string(obj_level.level),"hinted",1)
	}
}
ini_close();

randomize();
var _count = 0;
repeat(array_length_1d(semesta)){
    var blockData = getBlockData(semesta[_count]);
    var new_block = instance_create_layer(
	scr_snap_to_grid(random_range(other.range_random_x,other.range_random_x2),20),
	scr_snap_to_grid(random_range(other.range_random_y,other.range_random_y2),20),
	"Instances", obj_block);
    new_block.item = blockData[0];
    new_block.category = blockData[1];
	new_block.image_blend = getBlockColorFromData(blockData[2]);

    with (new_block){
    var _check = 0;
    while ((!place_free(x, y)) && (_check < 100))
    {
        x = scr_snap_to_grid(random_range(other.range_random_x,other.range_random_x2),20)
        y = scr_snap_to_grid(random_range(other.range_random_y,other.range_random_y2),20)
        _check += 1;
    }
    if _check >= 100
    {
        instance_destroy();
    }
}
_count++;
}

countData = getBlockCountData(semesta);
var _x = 0;
repeat(array_length_1d(countData)){
    currentData[_x] = 0;
    _x++;
}
