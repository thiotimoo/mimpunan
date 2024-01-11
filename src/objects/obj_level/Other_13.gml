/// Generate Level
randomize();
    var new_block = instance_create_layer(
	scr_snap_to_grid(random_range(other.range_random_x,other.range_random_x2),20),
	scr_snap_to_grid(random_range(other.range_random_y,other.range_random_y2),20),
	"Instances", obj_live_drop);

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