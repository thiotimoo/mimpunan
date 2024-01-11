if (image_blend == c_yellow){
	if (image_alpha == 0.6)
	image_alpha = 0.5;	
	else
	image_alpha = 0.6;
}

alarm[1] = 5
audio_play_sound(snd_target, 10,false,0.2*global.vol_sfx)