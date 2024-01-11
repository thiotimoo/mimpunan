text="Credits"
action = function () {
	//instance_create_layer(450, 625, "Instances", obj_player);
	var fade = instance_create_depth(0,0,-9999,obj_fade);
	fade.target_room = rm_credits
	fade.fade_type = 1
}