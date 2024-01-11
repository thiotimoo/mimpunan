/// Initialize
// You can write your code in this editor
image_alpha = 0;
image_speed = 0;
event_inherited();
state = 0;
pressed = 0;
offset_pos = 30;
image_speed = 0;
image_index = 0;
radius = sprite_width / 2;
radius_h = sprite_height / 2;

joy_x = 0;
joy_y = 0;

x = global.ww_gui - radius;
y = global.hh_gui - radius_h;

input = function (_touch_id, _touch_x, _touch_y)
{
	if (global.playable){
		image_alpha = 0.25;
		image_xscale = lerp(image_xscale, 1.5, 0.1);
		image_yscale = lerp(image_yscale, 1.5, 0.1);
        pressed = 1;
	} else {
		state = 0;
		pressed = 0;
		image_alpha = 0;
	}
}