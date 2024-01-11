image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = image_xscale;
if (following) {
	if (instance_exists(obj_player)) {
	x = lerp(x,obj_player.x,spd)
	y = lerp(y,obj_player.y,spd)
	}
}