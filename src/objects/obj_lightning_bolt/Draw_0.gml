image_xscale = lerp(image_xscale,1.2,0.1)
image_alpha -= 0.01
draw_set_alpha(alpha_box)
draw_set_color(c_black)
draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]),camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]),false);
draw_set_alpha(1)
draw_sprite_ext(sprite_index,image_index,x,y,_image_xscale,image_yscale,image_angle,image_blend,image_alpha)