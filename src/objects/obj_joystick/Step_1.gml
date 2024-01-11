/// Joystick Logic
// You can write your code in this editor


if (touch_id != -1)
{
        if (device_mouse_check_button(touch_id, mb_left))
        {
                joy_x = device_mouse_x_to_gui(touch_id) - x;
                joy_y = device_mouse_y_to_gui(touch_id) - y;
        
                var _direction = point_direction(0, 0, joy_x, joy_y);
                var _distance = point_distance(0, 0, joy_x, joy_y);
        
                if (_distance > radius)
                {
                        joy_x = lengthdir_x(radius, _direction);
                        joy_y = lengthdir_y(radius, _direction);
                }
        }
        else
        {
                touch_id = -1;
                joy_x = 0;
                joy_y = 0;
        }
}