draw_set_halign(fa_center);

draw_set_font(fnt_blocks_16);

if (top) {
	draw_set_valign(fa_bottom);
draw_set_color(bg_color)
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0])+title_pos,false)
if (pg_color != noone) {
draw_set_color(pg_color)
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*pg/100, camera_get_view_y(view_camera[0])+title_pos,false)
}
draw_set_colour(text_color)
draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + title_pos, text);	
}else{
	draw_set_valign(fa_top);
draw_set_color(bg_color)
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])-title_pos-10,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]),false)
if (pg_color != noone) {
draw_set_color(pg_color)
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])-title_pos-10,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*pg/100, camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]),false)
}
draw_set_colour(text_color)
draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])-title_pos, text);
}
draw_set_halign(fa_left)
draw_set_valign(fa_top);