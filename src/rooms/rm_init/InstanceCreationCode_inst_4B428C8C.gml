text = "Tinggalkan Level"

action = function () {
	with(obj_control_pause) action();
		
	with (obj_player) instance_destroy();
		global.playable = 0;
		var fade = instance_create_depth(0,0,-9999,obj_fade);
		fade.target_room = rm_menu
		fade.fade_type = 1
	with obj_floattext instance_destroy();
}