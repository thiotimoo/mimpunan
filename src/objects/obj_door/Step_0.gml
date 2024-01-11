if (place_meeting(x,y, obj_player) && triggered == 0 && global.playable == 1){
	triggered = 1;
	var fade = instance_create_depth(0,0,-9999,obj_fade);
	fade.target_room = target_room
	fade.target_x = target_x
	fade.target_y = target_y
}