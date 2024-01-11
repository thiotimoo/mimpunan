if (!instance_exists(obj_player)) exit;
scr_game_quest(global.quest_index)
if hide exit;
draw_set_font(global.font_main);
var offset_x = 5;
var offset_y = 5;
var border = 10;
var max_w = 100;
txtb_spr_w = sprite_get_width(spr_textbox_gui);
txtb_spr_h = sprite_get_height(spr_textbox_gui);
dist = 0;
sep_str = string_height("M") +2;
margin_dist_txt = 10
trackable = track != noone && instance_exists(track)
if (trackable) {
	tx = instance_nearest(obj_player.x, obj_player.y, track).x;
	ty = instance_nearest(obj_player.x, obj_player.y, track).y;
	dist = round(point_distance(obj_player.x, obj_player.y, tx, ty) / 20);
	dist_str = string(dist) + "m"
	_op_space = string_height_ext(quest_name,sep_str,max_w) + border + 2 +margin_dist_txt + string_height(dist_str);
} else {
	_op_space = string_height_ext(quest_name,sep_str,max_w) + border + 2
	}
_o_w = string_width_ext(quest_name,sep_str,max_w) + border * 2;

draw_set_color(c_white);

draw_sprite_ext(spr_textbox_gui, 0, offset_x, offset_y, (_o_w/txtb_spr_w), (_op_space - 1)/txtb_spr_h, 0, c_white, 1)
draw_text_ext(offset_x + border, offset_y + border / 2, quest_name,sep_str,max_w)

if (trackable) {
	draw_set_color(c_orange);
	draw_rectangle(offset_x + border, offset_y + string_height_ext(quest_name,sep_str,max_w) + border / 2 + margin_dist_txt/2, offset_x + string_width_ext(quest_name,sep_str,max_w), offset_y + string_height_ext(quest_name,sep_str,max_w) + border / 2 + margin_dist_txt/2,false);
	draw_text(offset_x + border, offset_y + border / 2 + margin_dist_txt + string_height_ext(quest_name,sep_str,max_w), dist_str);
}
draw_set_color(c_white);