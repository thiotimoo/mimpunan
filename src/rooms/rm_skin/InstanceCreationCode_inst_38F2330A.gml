text = "Kembali"
action = function ()
{
	var fade = instance_create_depth(0,0,-9997,obj_fade);
	fade.below = true;
	fade.target_room = rm_menu
	fade.fade_type = 1
}