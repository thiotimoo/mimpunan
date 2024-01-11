x = xstart + (global.ww_gui - 320)/2 //- image_xscale * 10;
draw_self();
draw_set_font(global.font_main)
draw_set_color(c_white)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);
draw_text(x + image_xscale * 10, y+ image_yscale * 10, text);
if (string_digits(text) == 18) {
	if (tamat == 1)
	draw_sprite_ext(spr_crown,0,x + image_xscale * 10,y+ image_yscale * 20,1,1,0,c_white,image_alpha)
}else{
if (star >= 1)
draw_sprite_ext(spr_star,0,x + image_xscale+8-2,y+ image_yscale * 20,0.5,0.5,0,c_white,image_alpha)
if (star >= 2)
draw_sprite_ext(spr_star,0,x + image_xscale * 10,y+ image_yscale * 20,0.5,0.5,0,c_white,image_alpha)
if (star >= 3)
draw_sprite_ext(spr_star,0,x + image_xscale * 20-8,y+ image_yscale * 20,0.5,0.5,0,c_white,image_alpha)
}
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
