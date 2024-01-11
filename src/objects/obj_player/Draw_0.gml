draw_self()
if (shield > 0) {
var _float_size = 0;
	float_size += -3;
	_float_size = dsin(float_size)*1;
	draw_sprite_ext(spr_shield,0,x,y,1 + _float_size/8,1 + _float_size/8,0,c_white,1)
}
if (boost > 0) {
draw_set_font(global.font_main)
draw_set_colour(c_aqua)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text_outline(x,y-sprite_get_yoffset(sprite_index)-4,floor(boost/room_speed))
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_colour(c_white)
}
