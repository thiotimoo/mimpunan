/// Initialize
// You can write your code in this editor
image_alpha = 0;
event_inherited();

touch_id = -1;
offset_joystick = 30;

radius = sprite_width / 2;
radius_h = sprite_height / 2;

joy_x = 0;
joy_y = 0;

x = radius;
y = global.hh_gui - radius_h;

input = function (_touch_id, _touch_x, _touch_y)
{
		stick_alpha = 0.5
        touch_id = _touch_id;
}