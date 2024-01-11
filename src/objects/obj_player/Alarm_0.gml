if (invincible <= 0){
	image_alpha = 1;
	invincible_blink = 1;
}else{
	if (image_alpha == 1) {
	image_alpha = 0.6
	invincible_blink = 0.6;
	}else{
	image_alpha = 1
	invincible_blink = 1;
	}
}
alarm[0] = room_speed / 12;