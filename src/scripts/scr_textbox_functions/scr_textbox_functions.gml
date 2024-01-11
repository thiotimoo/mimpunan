function scr_set_defaults_for_text(){
	line_break_pos[0,page_number] = 999
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	for (var c = 0; c < 500; c++){
		col_1[c, page_number] = c_white;
		col_2[c, page_number] = c_white;
		col_3[c, page_number] = c_white;
		col_4[c, page_number] = c_white;
		
		float_text[c, page_number] = 0;
		float_dir[c, page_number] = c*20;
		
		shake_text[c, page_number] = 0;
		shake_dir[c, page_number] = irandom(360);
		shake_timer[c, page_number] = irandom(4);
		
	}
	cinematic[page_number] = 0;
	txtb_spr[page_number] = spr_textbox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	speaker_name[page_number] = "";
	snd[page_number] = noone;
}

/// @param 1st_char
/// @param last_char
/// @param col1
/// @param col2
/// @param col3
/// @param col4
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4){
	for (var c = _start; c <= _end; c++){
	col_1[c, page_number - 1] = _col1;
	col_2[c, page_number - 1] = _col2;
	col_3[c, page_number - 1] = _col3;
	col_4[c, page_number - 1] = _col4;
	}
}

function scr_text_float(_start, _end){
	for (var c = _start; c <= _end; c++){
	float_text[c,page_number-1] = true;
	}
}

function scr_text_shake(_start, _end){
	for (var c = _start; c <= _end; c++){
	shake_text[c,page_number-1] = true;
	}
}

function scr_textbox_cinematic(value_cinematic){
	cinematic[page_number-1] = value_cinematic;
}

/// @param text
/// @param [character]
function scr_text(_text){
	scr_set_defaults_for_text()
	text[page_number] = _text;
	
	if argument_count > 1 {
		switch(argument[1]){
			case "naya":
			speaker_sprite[page_number] = spr_naya_portrait;
			txtb_spr[page_number] = spr_textbox_blue;
			snd[page_number] = snd_blip_naya;
			speaker_name[page_number] = "Naya"
			break;
			
			case "jojo":
			txtb_spr[page_number] = spr_textbox_blue;
			snd[page_number] = snd_blip_low;
			speaker_name[page_number] = "Jonathan"
			break;
			
			case "april":
			txtb_spr[page_number] = spr_textbox_blue;
			snd[page_number] = snd_blip_naya;
			speaker_name[page_number] = "April"
			break;
		}
	}
	
	page_number++;
}

/// @param option
/// @param link_id
/// @param [color]
function scr_option(_option, _link_id) {
	option[option_number] = _option;
	option_link_id[option_number] = _link_id
	option_color[option_number] = c_white;
	if argument_count > 2 {
		option_color[option_number] = argument[2];
	}
	option_number++;
}

function create_textbox(_text_id, _s){
	with (instance_create_depth(x,y,-99999,obj_textbox)){
		npc = _s;
		scr_game_text(_text_id);
	}
}