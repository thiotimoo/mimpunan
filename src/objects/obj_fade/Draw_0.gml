if (!below) exit;
draw_set_color(c_black);
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])-5,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0])-5 + cinematic_height,false)
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + 5 + camera_get_view_height(view_camera[0]),camera_get_view_x(view_camera[0])+5 + camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - cinematic_height,false)
		
draw_set_alpha(image_alpha);
draw_set_color(c_black)
draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),false);
draw_set_alpha(1);
if (text != "" && cinematic_height >= camera_get_view_height(view_camera[0])/2) {
	draw_set_color(c_white)
	draw_set_font(global.font_main);
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/ 2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2, text)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
}
