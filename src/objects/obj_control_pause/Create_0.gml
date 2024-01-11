/// Initialize
// You can write your code in this editor
paused = false;
paused_surf = -1;
image_alpha = 0;
image_speed = 0;
event_inherited();
state = 0;
pressed = 0;
offset_pos = 5;
mode = 0;
radius = sprite_width / 2;
radius_h = sprite_height / 2;

joy_x = 0;
joy_y = 0;

x = global.ww_gui - radius;
y = global.hh_gui - radius_h;

input = function (_touch_id, _touch_x, _touch_y)
{
	if ((global.playable && instance_exists(obj_level)) || global.playable && paused){
		image_alpha = 0.25;
        pressed = 1;
		image_xscale = lerp(image_xscale, 1.5, 0.1);
		image_yscale = lerp(image_yscale, 1.5, 0.1);
	} else {
		state = 0;
		pressed = 0;
		image_alpha = 0;
	}
	
}

action = function () {
	/*
	if (instance_exists(obj_level)) {
	if (mode == 1) {
		with (obj_player) instance_destroy();
		global.playable = 0;
		var fade = instance_create_depth(0,0,-9999,obj_fade);
		fade.target_room = rm_menu
		fade.fade_type = 1
	} else {
		text = string(obj_level.level);
		scr_level_pressed();
	}
	}*/
	if (instance_exists(obj_dialog)) exit;
	if (instance_exists(obj_level) || paused) {
	 paused = !paused;
	 
    if paused == false
        {
        instance_activate_all();
		with obj_fade hold = false;
		with (obj_control_paused) {
		visible = false
	}
	}else{
		var fade = instance_create_depth(0,0,-9997,obj_fade);
	fade.below = true;
	fade.no_move = true;
	fade.target_room = -1
	fade.fade_type = 1
	fade.hold = true;
	instance_deactivate_all(true);
	instance_activate_object(obj_game)
	instance_activate_object(obj_fade)
	instance_activate_object(obj_multitouch_manager)
	instance_activate_object(obj_ui_parent)
	instance_activate_object(obj_control_paused)
	with (obj_control_paused) {
		visible = true
	}
	}
	}
}