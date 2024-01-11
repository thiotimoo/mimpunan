/// Joystick Logic
// You can write your code in this editor
image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = lerp(image_yscale, 1, 0.1);
image_index = mode
image_alpha = lerp(image_alpha, global.playable *0.75, 0.1);
if (state == 3){
	state = 0;
}

kb_check = pressed || keyboard_check(vk_escape)
if (kb_check && state == 0){
	// On Press
	state = 1;
} else if (kb_check && state == 1) {
	// On Hold
	state = 2;
} else if (!kb_check && state == 1) {
	
	state = 0;
} else if (!kb_check && state == 2) {
	// On Release
	state = 3;
	var _max_devices = 4;

for (var i = 0; i < _max_devices; i++)
{
        var _touch_x = device_mouse_x_to_gui(i);
        var _touch_y = device_mouse_y_to_gui(i);
        
        var _ui_at_pos = instance_position(_touch_x, _touch_y, obj_ui_parent);
        
        if (_ui_at_pos == id)
        {
				action();
        }
}

} else if (!kb_check){
	state = 0;
}

pressed = 0;