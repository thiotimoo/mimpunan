/// Initialize
// You can write your code in this editor

event_inherited();
presetup = false
level_list = false;
state = 0;
pressed = 0;
offset_pos = 30;
msg = 0;
radius = sprite_width / 2;
radius_h = sprite_height / 2;
text = ""
joy_x = 0;
joy_y = 0;
image = -1;
image_ox = 0;
image_oy = 0;
is_list = false;
ping = 0;
disabled = false;
hostNum = "";
star = 0;
tamat = 0;
image_speed = 0;

input = function (_touch_id, _touch_x, _touch_y)
{
		if (!disabled) {
		pressed = 1;
		image_alpha = 0.5;
		}
		//image_index = 1;
}

action = function ()
{
	//do something
}
image_alpha = 0;
alarm[0] = 1
