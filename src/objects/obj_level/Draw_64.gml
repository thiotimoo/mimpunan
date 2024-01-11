var _x = 0;
/*
repeat(array_length_1d(currentData)) {
	draw_set_valign(fa_bottom);
//	for ()
//	draw_text(15, display_get_gui_height() - 15, "S = {}")
	draw_set_valign(fa_top);
draw_text(15,40+10*_x, string(getBlockIDType(_x))+ " "+ string(currentData[_x]) + "/"+ string(countData[_x]))
_x++;
}*/

if (!instance_exists(obj_player)) exit;
if (instance_exists(obj_dialog)) exit;
draw_set_font(global.font_main);
//string_level = string(getBlockIDType(0))+ " "+ string(currentData[0])

var offset_y = 5;
var border = 10;
var max_w = 100;
txtb_spr_w = sprite_get_width(spr_textbox_gui);
txtb_spr_h = sprite_get_height(spr_textbox_gui);
dist = 0;
sep_str = string_height("M") +2;
margin_dist_txt = 10
//_op_space = string_height_ext(string_level,sep_str,max_w) + border + 2
//_o_w = string_width_ext(string_level,sep_str,max_w) + border * 2;
var offset_x = global.ww_gui - 5// - _o_w;
draw_set_color(c_white);
//draw_sprite_ext(spr_textbox_gui, 0, offset_x, offset_y, (_o_w/txtb_spr_w), (_op_space - 1)/txtb_spr_h, 0, c_white, 1)
draw_set_halign(fa_right)
draw_set_font(fnt_blocks_16)
var string_l = "LEVEL "+string(level)+"\n\n";
var title_height = string_height_ext(string_l,sep_str,max_w)

draw_text_outline_ext(offset_x, offset_y, string_l,sep_str,max_w)
draw_set_font(global.font_main)
var string_level = ""
for (var i = 0; i < array_length_1d(var_alphabet); i++) {
	if (i > 0) string_level += "\n\n";
	if (var_alphabet[i] == "A") draw_set_colour(aColor)
	if (var_alphabet[i] == "B") draw_set_colour(bColor)
	if (var_alphabet[i] == "C") draw_set_colour(cColor)
	draw_text_outline_ext(offset_x, offset_y+title_height+string_height_ext( string_level,sep_str,max_w), var_alphabet[i] + " = " + statements[i]+"",sep_str,max_w)
	string_level += var_alphabet[i] + " = " + statements[i]+""
}

draw_set_halign(fa_left)
var exists_top_text = false
with (obj_floattext) {
	if (top) exists_top_text = true;
}
draw_set_color(c_black);
if (!exists_top_text && !no_timer){
draw_set_halign(fa_center);
minutes = timer div 60;
seconds = timer mod 60;
str_time = string_replace_all(string_format(minutes, 2, 0) + ":" + string_format(seconds, 2, 0), " ", "0");

//draw_rectangle(global.ww_gui/2-string_width(str_time)/2-10,-3+15,global.ww_gui/2+string_width(str_time)/2+10, 15+ 3+ string_height(str_time),false);
if (timer <= 10) {
draw_set_color(c_red);
} else {
draw_set_color(c_white);
}
draw_sprite(spr_time,0,global.ww_gui/2-string_width(str_time)/2-(sprite_get_width(spr_time)/2+2),14+30)
draw_text_outline(global.ww_gui/2+(sprite_get_width(spr_time)/2+2), 15+30, str_time)
draw_set_halign(fa_left);
}
