text = "Kembali"
action = function ()
{
	var fade = instance_create_depth(0,0,-9999,obj_fade);
	fade.target_room = rm_menu
	fade.fade_type = 1
}