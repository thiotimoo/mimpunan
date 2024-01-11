if (instance_place(x,y,obj_player) && !destroyed) {
	audio_play_sound(snd_lightning,99, false,0.3 * global.vol_sfx)
	destroyed = true;
	player_damage();
	
}
if (destroyed) {
	image_speed = 0;
	hspeed = 0;
	vspeed = 0;
	image_xscale = lerp(image_xscale, 2, 0.1)
	image_yscale = lerp(image_yscale, 2, 0.1)
	image_alpha = lerp(image_alpha, 0, 0.1)
if (image_alpha < 0.1) instance_destroy();
}
image_angle += turn
if (x >= room_width + 20) instance_destroy();
if (x <= -20) instance_destroy();
if (y >= room_height + 20) instance_destroy();
if (y <= -20) instance_destroy();
