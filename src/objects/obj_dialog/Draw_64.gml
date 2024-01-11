x_center_offset = (global.ww_gui / 2) - (box_xscale * sprite_get_width(box_sprite) * image_xscale) / 2;
y_center_offset = (global.hh_gui / 2) - (box_yscale * sprite_get_height(box_sprite) * image_yscale) / 2;
draw_set_color(c_white)
draw_set_font(global.font_main);
box_title_xscale = (string_width(title) + 10) / sprite_get_width(box_sprite) ;
box_title_yscale = (string_height(title) + 10)  / sprite_get_height(box_sprite) ;

x_title_center_offset = (global.ww_gui / 2) - (box_title_xscale * sprite_get_width(box_sprite) * image_xscale) / 2;
y_title_center_offset = y_center_offset - (box_title_yscale * sprite_get_height(box_sprite) * image_yscale) / 2;

y_button_pos = (global.hh_gui / 2) + (sprite_get_height(sprite_index) * image_yscale) / 2  - (sprite_get_width(button.sprite_index) * button_yscale) / 2;

spr_x_center_offset = (global.ww_gui / 2) - (sprite_get_width(sprite_index) * image_xscale) / 2;
spr_y_center_offset = (global.hh_gui / 2) - (sprite_get_height(sprite_index) * image_yscale) / 2;
button.image_xscale = image_xscale * button_xscale
button.image_yscale = image_yscale * button_yscale
button.image_alpha = image_alpha
button.x = (global.ww_gui / 2) - (sprite_get_width(button.sprite_index) * button.image_xscale /2); //- (sprite_get_width(button.sprite_index) * image_xscale* button_yscale) / 2 -(global.ww_gui-320)/2;
button.y = y_button_pos;

draw_sprite_ext(box_sprite,0,x_center_offset,y_center_offset,box_xscale * image_xscale,box_yscale * image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(spr_textbox_green,0,x_title_center_offset,y_title_center_offset,box_title_xscale * image_xscale,box_title_yscale * image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,image_index,spr_x_center_offset,spr_y_center_offset,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

draw_set_alpha(image_alpha);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(global.ww_gui / 2, y_center_offset,title,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left)
draw_set_valign(fa_top)
for (var i = 0; i < array_length_1d(text); ++i) {
	draw_set_color(text_color[i])
    draw_text_ext_transformed(global.ww_gui / 2 + text_offset[i][0] * image_xscale, global.hh_gui / 2 + text_offset[i][1] * image_yscale, text[i],string_height("M") + 2,320,image_xscale,image_yscale,image_angle)
}
draw_set_color(c_white)
draw_set_alpha(1)
