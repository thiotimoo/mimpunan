/// Draw Joystick
// You can write your code in this editor
if paused == true
{
	
	draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0,global.ww_gui, global.hh_gui, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_set_font(fnt_blocks_16)
	draw_set_color(c_orange)
	draw_text_outline(global.ww_gui / 2, global.hh_gui / 2-70, "PAUSED");
	draw_set_color(c_white)
    draw_set_halign(fa_left);
}
if (mode == 1){
x = global.ww_gui/2// + (radius+offset_pos);
y = radius;
} else {
x = global.ww_gui/2// - (radius+offset_pos);
y = radius;
}
var exists_top_text = false
with (obj_floattext) {
	if (top) exists_top_text = true;
}
if (!exists_top_text)
draw_self();

