scr_game_blocks(item)
draw_sprite_ext(sprite_index, image_index, x + shake_x, y + shake_y, image_xscale, image_yscale, image_angle, c_black, image_alpha)
draw_set_font(global.font_main)

	var _float_y = 0;
	float_dir += -3;
	_float_y = dsin(float_dir)*1;
if (locked) {
	draw_sprite_ext(sprite_index, image_index, x + shake_x, y + shake_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha-0.5)	
	draw_set_alpha(image_alpha)
draw_set_color(c_black)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text(x+10+shake_x,y+6+shake_y,txt)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_alpha(1)
	draw_sprite(spr_done,0,x,y-5+_float_y)
}else{
	draw_sprite_ext(sprite_index, image_index, x + shake_x, y + shake_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	draw_set_alpha(image_alpha)
draw_set_color(c_black)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text(x+10+shake_x,y+6+shake_y,txt)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_alpha(1)
	var slot = instance_place(x,y,obj_slot)
	if (slot != noone){
	if (slot.sprite_index == spr_slot_false){
	draw_sprite(spr_wrong,0,x,y-5+_float_y)
	}
	}
}

if (glowing) {
draw_set_halign(fa_center)

_x = x+10
_y = y-20
draw_set_color(c_white)
draw_text_outline(_x+shake_x,_y+shake_y,text)
draw_set_halign(fa_left)
}
