draw_set_halign(fa_center);
draw_set_font(fnt_blocks_16);
draw_set_colour(c_yellow)
draw_text(camera_get_view_width(view_camera[0])/2,title_pos, "LEVEL  TERSELESAIKAN");
draw_set_colour(c_white)
draw_set_font(global.font_main);
draw_text(camera_get_view_width(view_camera[0])/2,title_pos+20, "- Level "+string(global.last_level)+" -")
if (star >= 1)
draw_sprite_ext(spr_star,0,camera_get_view_width(view_camera[0])/2-sprite_get_width(spr_star)*2.2,title_pos+50,2,2,0,c_white,1)
if (star >= 2)
draw_sprite_ext(spr_star,0,camera_get_view_width(view_camera[0])/2,title_pos+50,2,2,0,c_white,1)
if (star >= 3)
draw_sprite_ext(spr_star,0,camera_get_view_width(view_camera[0])/2+sprite_get_width(spr_star)*2.2,title_pos+50,2,2,0,c_white,1)


draw_text(camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])-title_pos, "[ SENTUH DIMANA SAJA UNTUK MELANJUTKAN ]");
draw_set_halign(fa_left)