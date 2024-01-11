action = function () {
	//instance_create_layer(450, 625, "Instances", obj_player);
	opened = true;
	var fade = instance_create_depth(0,0,-9999,obj_fade);
	fade.target_room = rm_levels
	fade.fade_type = 1
	fade.action = function() {
		with obj_control_story {
			opened = false;
		}
	}
}