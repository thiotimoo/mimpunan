if (!destroyed){
image_alpha = lerp(image_alpha,1,0.1)
image_angle = lerp(image_angle,0,0.1)
image_xscale = lerp(image_xscale,1,0.1)
image_yscale = lerp(image_yscale,1,0.1)
if (instance_place(x,y,obj_player)){
	with obj_level {
		timer += other.add;
		audio_play_sound(snd_time,3,false,global.vol_sfx);
	}
	destroyed = true;
}
} else {
image_alpha = lerp(image_alpha,0,0.1)
image_angle = lerp(image_angle,180,0.1)
image_xscale = lerp(image_xscale,2,0.1)
image_yscale = lerp(image_yscale,2,0.1)
if (image_alpha < 0.1) {
instance_destroy();
}
}