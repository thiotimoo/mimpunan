draw_sprite_ext(sprite_index, image_index, x + shake_x, y + shake_y, image_xscale, image_yscale, image_angle, c_black, image_alpha)
if (locked) {
	var _float_y = 0;
	float_dir += -3;
	_float_y = dsin(float_dir)*1;
	draw_sprite_ext(sprite_index, image_index, x + shake_x, y + shake_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha-0.5)	
	draw_sprite(spr_done,0,x,y-5+_float_y)
}else{
	draw_sprite_ext(sprite_index, image_index, x + shake_x, y + shake_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}