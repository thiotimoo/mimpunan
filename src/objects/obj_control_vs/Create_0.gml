/// Initialize
// You can write your code in this editor

event_inherited();
state = 0;
pressed = 0;
offset_pos = 30;

radius = sprite_width / 2;
radius_h = sprite_height / 2;

x = display_get_gui_width()/2 + sprite_width *1.5;
y = display_get_gui_height()/2 + sprite_height/2;

joy_x = 0;
joy_y = 0;

image_speed = 0;

input = function (_touch_id, _touch_x, _touch_y)
{
		pressed = 1;
		image_alpha = 0.5;
		//image_index = 1;
}