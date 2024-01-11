/// Joystick Logic
// You can write your code in this editor

if (state == 3){
	state = 0;
}

if (instance_exists(obj_player)) {
	if (obj_player.flag){
		image_index = 1;
	}else{
		image_index = 0;
	}
	
	if (obj_player.block_front){
		image_xscale = lerp(image_xscale, 1.3, 0.1);
		image_yscale = lerp(image_yscale, 1.3, 0.1);
		image_alpha = lerp(image_alpha, global.playable *0.75, 0.1);
	}else{
		image_xscale = lerp(image_xscale, 1, 0.1);
		image_yscale = lerp(image_yscale, 1, 0.1);
		image_alpha = lerp(image_alpha, global.playable *0.1, 0.1);
	}
}else{
	image_xscale = lerp(image_xscale, 1.3, 0.1);
	image_yscale = lerp(image_yscale, 1.3, 0.1);
	image_index = 0;
	image_alpha = lerp(image_alpha, global.playable *0.75, 0.1);
}

kb_check = pressed || keyboard_check(vk_enter) || keyboard_check(ord("Z"))
if (kb_check && state == 0){
	// On Press
	state = 1;
} else if (kb_check && state == 1) {
	// On Hold
	state = 2;
} else if (!kb_check && state == 1) {
	
	state = 0;
} else if (!kb_check && state == 2) {
	// On Release
	state = 3;
} else if (!kb_check){
	state = 0;
}

pressed = 0;