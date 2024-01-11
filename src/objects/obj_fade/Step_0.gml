if (!in){
	if (fade_type == 0){
	image_alpha -= 0.05;
	if (image_alpha <= 0) instance_destroy();
	} else if(fade_type == 1) {
		if (hold) exit;
	cinematic_height = lerp(cinematic_height, 0,0.1)
	if (cinematic_height <= 0) instance_destroy();
	}
}else{
	if (fade_type == 0){
	room_goto(target_room);
	action();
	if (!no_move)
	with obj_player {
		x = other.target_x
		y = other.target_y
	}
	in = false;
	image_alpha += 0.1;
	if (image_alpha <= 0) instance_destroy();
	} else if(fade_type == 1) {
		image_alpha = 0;
		cinematic_height = lerp(cinematic_height, camera_get_view_height(view_camera[0]) / 2 + 15,0.1)
		timer++;
		if (timer > room_speed * 5|| (text == "")){
		if (cinematic_height >= camera_get_view_height(view_camera[0])/2+ 10){
			in = false;
			if (target_room != -1)
			room_goto(target_room);
	if (!no_move)
	with obj_player {
		x = other.target_x
		y = other.target_y
	}
			action();
		}
		}
		
	}
}