var _float_y = 0;
	float_dir += -3;
	_float_y = dsin(float_dir)*1;
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(fnt_blocks_16)
draw_set_color(image_blend)
draw_set_alpha(0.5)
_x = x - string_width(text)/2 - 6
_y = y+(image_yscale*sprite_get_height(sprite_index) / 2)
inst = collision_rectangle(_x - string_width(text)/2, _y - string_height(text)/4, _x + string_width(text)/2, _y + string_height(text)/4, obj_block, false, true);
inst2 = collision_rectangle(_x - string_width(text)/2, _y - string_height(text)/4, _x + string_width(text)/2, _y + string_height(text)/4, obj_player, false, true);
if (inst || inst2) {
text_alpha = lerp(text_alpha, 0.2, 0.1)
} else {
text_alpha = lerp(text_alpha, 1, 0.1)
}
draw_set_alpha(text_alpha)
draw_text_outline(_x,_y+_float_y, text)
draw_set_alpha(1)
draw_set_valign(fa_left)
draw_set_halign(fa_top)
draw_set_color(c_white)