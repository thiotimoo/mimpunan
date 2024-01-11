/// Initialize
// You can write your code in this editor

event_inherited();
_xstart = xstart

state = 0;
pressed = 0;
offset_pos = 30;
opened = false;

//x = global.ww_gui/2
//y = global.hh_gui/2;

radius = sprite_width / 2;
radius_h = sprite_height / 2;

joy_x = 0;
joy_y = 0;

image_speed = 0;

input = function (_touch_id, _touch_x, _touch_y)
{
		pressed = 1;
		image_alpha = 0.5;
		image_xscale = lerp(image_xscale, 1.3, 0.1);
		image_yscale = lerp(image_yscale, 1.3, 0.1);
		//image_index = 1;
}
action = function ()
{
		//image_index = 1;
}
event_user(0)

y = room_height + sprite_get_height(sprite_index)