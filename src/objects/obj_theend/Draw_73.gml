draw_set_halign(fa_center);
draw_set_font(fnt_blocks_16);
draw_set_colour(c_yellow)
draw_text(camera_get_view_width(view_camera[0])/2,title_pos, "THE END!");
draw_set_font(global.font_main);
draw_set_colour(c_white)
draw_text(camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])/2, "Total Score: " + string(global.last_score))
draw_text(camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])-title_pos, "Terimakasih Karena Telah\nBermain Game Yang Sederhana Ini");
draw_set_halign(fa_left)