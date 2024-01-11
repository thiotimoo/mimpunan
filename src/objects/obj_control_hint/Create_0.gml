/// Initialize
// You can write your code in this editor
paused = false;
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

x = 40;
//y = global.hh_gui - radius_h;

input = function (_touch_id, _touch_x, _touch_y)
{
	var hint_exist = 0;
with obj_level {
	if (hint != noone) hint_exist = 1;
}
	if ((global.playable && hint_exist && instance_exists(obj_level)) || global.playable && paused){
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
	if (instance_exists(obj_dialog)) exit;
	with obj_level {
		if (hint != noone) hint();
	}
}