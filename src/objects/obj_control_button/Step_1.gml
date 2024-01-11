y = lerp(y, ystart, 0.05);
if (disabled) {
image_alpha = 0.4
state=0;
exit;
}
/// Joystick Logic
// You can write your code in this editor

image_alpha = lerp(image_alpha, 1, 0.05);
if (state == 3){
	state = 0;
}

kb_check = pressed
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
				if (is_list)
	event_user(1);
	else
	action();
        }
}
	
} else if (!kb_check){
	//image_index = 0;
	state = 0;
}

pressed = 0;