if (instance_exists(obj_dialog)) exit;
draw_set_color(c_black)
draw_rectangle(8, 8, 10 + 12 * hpMax, 10 + sprite_get_height(spr_heart_hp) + 1,false)
draw_set_alpha(danger_box)
draw_set_color(c_red)
draw_rectangle(8+1, 8+1, 10 + 12 * hpMax-1, 10 + sprite_get_height(spr_heart_hp) + 1-1,false)
draw_set_alpha(1)
for (var i = 0; i < hpMax; ++i) {
	draw_sprite_ext(spr_heart_hp,hpObjIndex[i],hpObjX[i]+hpShakeX[i],hpObjY[i]+hpShakeY[i],hpObjXS[i],hpObjYS[i],hpObjAngle[i],hpObjColor[i],hpObjAlpha[i])
}
draw_set_color(c_black)
draw_set_font(global.font_main)
var str_score = "Score: " + string(scores)
draw_rectangle( 8,10 + sprite_get_height(spr_heart_hp) + 3,6+8 + string_width(str_score),10 + sprite_get_height(spr_heart_hp) + 6+ string_height(str_score)+3,false)
draw_set_color(c_yellow)
draw_text(3+8,10 + sprite_get_height(spr_heart_hp) + 6, str_score)
draw_set_color(c_white)
tutorial = "Sentuh $ untuk mengecek jawaban";
sep_str = string_height("M") +2;
if (tutorial != "") {
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text_outline_ext(3+8,10 + sprite_get_height(spr_heart_hp) + 16+string_height(str_score),tutorial,sep_str,100)
	draw_set_halign(fa_left);
}