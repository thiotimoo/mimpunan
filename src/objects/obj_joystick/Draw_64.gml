/// Draw Joystick
// You can write your code in this editor
x = radius + offset_joystick;
y = global.hh_gui - radius - offset_joystick;
if (image_alpha == 1)
gpu_set_blendmode_ext( bm_inv_dest_color, bm_inv_src_color)
draw_self();
gpu_set_blendmode( bm_normal );
draw_sprite_ext(spr_joystick_stick, 0, x + joy_x, y + joy_y,image_xscale,image_yscale,0,c_white,image_alpha);
