cinematic_height = lerp(cinematic_height, 50 * cinematic[page],0.2)
draw_set_color(c_black);
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])-5,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0])-5 + cinematic_height,false)
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + 5 + camera_get_view_height(view_camera[0]),camera_get_view_x(view_camera[0])+5 + camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - cinematic_height,false)
draw_set_font(global.font_main);
draw_set_color(c_white);
accept_key = (obj_control_z.state == 1) || mouse_check_button_pressed(mb_any);
textbox_x = camera_get_view_x(view_camera[0]) + wide_screen_offset;
textbox_y = camera_get_view_y(view_camera[0]) + 140;

if (setup == false)
{
	setup = true;
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through pages
	for (var p = 0; p < page_number; p++;){
		text_length[p] = string_length(text[p]);
		text_x_offset[p] = 100;
		portrait_x_offset[p] = 10;
		if (speaker_side[p] == -1){
			text_x_offset[p] = 10;
			portrait_x_offset[p] = 230;
		}
		if (speaker_sprite[p] == noone){
			text_x_offset[p] = 50;
		}
		for (var c=0; c < text_length[p];c++;){
			var _char_pos = c+1;
			
			char[c,p] = string_char_at(text[p], _char_pos);
			
			var _txt_up_to_char = string_copy(text[p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c,p])
			if (char[c,p] == " ") {last_free_space = _char_pos+1}
			if _current_txt_w - line_break_offset[p] > line_width
			{
				line_break_pos[line_break_num[p],p] = last_free_space;
				line_break_num[p]++;
				var _txt_up_to_last_space = string_copy(text[p], 1, last_free_space)
				var _last_free_space_string = string_char_at(text[p],last_free_space)
				line_break_offset[p] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
			}
			
			
		}
		for (var c = 0; c < text_length[p]; c++){
			var _char_pos = c+1
			var _txt_x = textbox_x + text_x_offset[p] + border;
			var _txt_y = textbox_y + border;
			var _txt_up_to_char = string_copy(text[p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c,p])
			var _txt_line = 0;
			
			for (var lb =0; lb < line_break_num[p]; lb++){
				if _char_pos >= line_break_pos[lb,p]{
					var _str_copy = string_copy(text[p], line_break_pos[lb,p], _char_pos-line_break_pos[lb,p])
					_current_txt_w = string_width(_str_copy);
					_txt_line = lb + 1
				}
			}
			char_x[c,p] = _txt_x + _current_txt_w
			char_y[c,p] = _txt_y + _txt_line*line_sep
		}
	}
}

if (text_pause_timer <= 0){
if (draw_char < text_length[page]){
	draw_char += text_spd
	draw_char = clamp(draw_char, 0, text_length[page]);
	var _check_char = string_char_at(text[page], draw_char);
	if _check_char == "." || _check_char == "?" || _check_char == "!" || _check_char == ","{
		text_pause_timer = text_pause_time;
	} else {
		if snd_count < snd_delay {
			snd_count++;
		}else if snd[page] != noone{
			snd_count = 0;
			audio_play_sound(snd[page], 8, false);
		}
	}
}
} else{
text_pause_timer--;
}

if (accept_key && !(option_number > 0 && page == page_number - 1)){
	if (draw_char == text_length[page]){
		if (page < page_number - 1){
			page++;
			draw_char = 0;
		} else {
			with (npc){
			event_user(1);
			}
			action();
		}
	} else {
		draw_char = text_length[page];
	}
}



var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr[page]);
txtb_spr_h = sprite_get_height(txtb_spr[page]);

if (speaker_sprite[page] != noone)
{
	sprite_index = speaker_sprite[page];
	if draw_char == text_length[page] {image_index=0;}
	var _speaker_x = textbox_x + portrait_x_offset[page];
	if speaker_side[page] == -1 {_speaker_x += sprite_width }
	draw_sprite_ext(txtb_spr[page], txtb_img, textbox_x + portrait_x_offset[page], textbox_y, 80/txtb_spr_w,80/txtb_spr_h,0,c_white,1);
	draw_sprite_ext(sprite_index,image_index,_speaker_x,textbox_y,speaker_side[page],1,0,c_white,1)
}

draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1)


if draw_char == text_length[page] && page == page_number - 1 {
	var _op_space = 25;
	var _op_bord = 20;
	for (var op = 0; op < option_number; op++;) {
		var offset_y_option = 5;
		var _o_w = string_width(option[op]) + _op_bord * 2
		draw_set_alpha(1)
		// 
		if point_in_rectangle(mouse_x, mouse_y, _txtb_x + textbox_width - _op_bord *2 - string_width(option[op]), _txtb_y - offset_y_option - _op_space * option_number + _op_space*op, _txtb_x + textbox_width, _txtb_y - offset_y_option - _op_space * option_number + _op_space*op  + string_height(option[op])+_op_space/2)
		{	
			if mouse_check_button(mb_any){
			draw_set_alpha(0.5)
			image_alpha = 0.5
			}
			if (mouse_check_button_released(mb_any)){
				create_textbox(option_link_id[op], npc)
				action();
			}
		}
		
		draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x + textbox_width, _txtb_y - offset_y_option - _op_space * option_number + _op_space*op, -(_o_w/txtb_spr_w), (_op_space - 1)/txtb_spr_h, 0, c_white, image_alpha)
		draw_set_halign(fa_right);
		draw_set_color(option_color[op])
		draw_text(_txtb_x + textbox_width - _op_bord, _txtb_y - offset_y_option + 5 - (_op_space) * option_number + _op_space * op + 2, option[op])
		draw_set_color(c_white)
		draw_set_halign(fa_left);
		draw_set_alpha(1)
		image_alpha = 1
	}
}

if (speaker_name[page] != "") {
	var _o_w = string_width(speaker_name[page]) + border * 2
	var _op_space = 15;
	var x_offset_name = 5;
	draw_set_color(c_white);
	draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x + x_offset_name, _txtb_y - string_height(speaker_name[page]) - 2, (_o_w/txtb_spr_w), (_op_space - 1)/txtb_spr_h, 0, c_white, 1)
	draw_text(_txtb_x + border + x_offset_name, _txtb_y - string_height(speaker_name[page]) - 3 + border / 2, speaker_name[page])
}
// draw letters
for (var c = 0; c < draw_char; c++){
	var _float_y = 0;
	if float_text[c,page] == true{
		float_dir[c,page] += -6;
		_float_y = dsin(float_dir[c,page])*1;
	}
	var _shake_x = 0;
	var _shake_y = 0;
	
	if shake_text[c, page] == true{
		shake_timer[c,page]--;
		if shake_timer[c,page] <= 0{
		shake_timer[c,page] = irandom_range(4,8);
		shake_dir[c,page] = irandom(360);
		}
		if shake_timer[c,page] <= 2{
		_shake_x = lengthdir_x(1, shake_dir[c,page]);
		_shake_y = lengthdir_y(1, shake_dir[c,page]);
		}
		
	}
	draw_text_color(char_x[c,page]+_shake_x,char_y[c,page]+_float_y+_shake_y,char[c,page], col_1[c, page],col_2[c, page],col_3[c, page],col_4[c, page], 1)
}