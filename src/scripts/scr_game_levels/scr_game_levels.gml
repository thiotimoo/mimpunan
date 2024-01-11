// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
		case 101: txt = "A"
		case 102: txt = "B"
		case 103: txt = "C"
		case 104: txt = "D"
		case 105: txt = "E"
		case 106: txt = "F"
		case 107: txt = "G"
		case 108: txt = "H"
		case 109: txt = "I"
		case 110: txt = "J"
		case 111: txt = "K"
		case 112: txt = "L"
		case 113: txt = "M"
		case 114: txt = "N"
		case 115: txt = "O"
		case 116: txt = "P"
		case 117: txt = "Q"
		case 118: txt = "R"
		case 119: txt = "S"
		case 120: txt = "T"
		case 121: txt = "U"
		case 122: txt = "V"
		case 123: txt = "W"
		case 124: txt = "X"
		case 125: txt = "Y"
		case 126: txt = "Z"
*/
function scr_level_pressed() {
	ini_open("savedata.ini");
	global.last_score = ini_read_real("save", "score", 0);
	ini_close();
	if (global.loading == 0) {
	scr_game_levels(string_digits(text));
	global.loading = 1;
	}
}

function scr_game_levels(_level_id){
	switch(_level_id){
		case 1:
		rm_index = rm_level_1
		player_x = 520;
		player_y = 180;
		break;
		case 2:
		rm_index = rm_level_2
		player_x = 520;
		player_y = 180;
		break;
		case 3:
		rm_index = rm_level_3
		player_x = 520;
		player_y = 180;
		break;
		case 4:
		rm_index = rm_level_4
		player_x = 520;
		player_y = 180;
		break;
		case 5:
		rm_index = rm_level_5
		player_x = 520;
		player_y = 180;
		break;
		case 6:
		rm_index = rm_level_6
		player_x = 520;
		player_y = 180;
		break;
		case 7:
		rm_index = rm_level_7
		player_x = 520;
		player_y = 180;
		break;
		case 8:
		rm_index = rm_level_8
		player_x = 520;
		player_y = 180;
		break;
		
		case 9:
		rm_index = rm_level_9
		player_x = 520;
		player_y = 180;
		break;
		case 10:
		rm_index = rm_level_10
		player_x = 520;
		player_y = 180;
		break;
		
		case 11:
		rm_index = rm_level_11
		player_x = 520;
		player_y = 180;
		break;
		
		case 12:
		rm_index = rm_level_12
		player_x = 250;
		player_y = 90;
		break;
		
		case 13:
		rm_index = rm_level_13
		player_x = 520;
		player_y = 180;
		break;
		
		case 14:
		rm_index = rm_level_14
		player_x = 520;
		player_y = 180;
		break;
		
		case 15:
		rm_index = rm_level_15
		player_x = 520;
		player_y = 180;
		break;
		
		case 16:
		rm_index = rm_level_16
		player_x = 520;
		player_y = 180;
		break;
		
		case 17:
		rm_index = rm_level_17
		player_x = 520;
		player_y = 180;
		break;
		
		case 18:
		rm_index = rm_level_18
		player_x = 520;
		player_y = 180;
		break;
		default:
		rm_index = noone
	}
	if (rm_index == noone) {
		var msg = instance_create_depth(0,0, -9999,obj_floattext)
		msg.top = true;
		msg.text = "LEVEL  TIDAK  DITEMUKAN!";
		msg.bg_color = c_red
		msg.text_color = c_black
		global.loading = 0;
		exit;
	}
	global.playable = 1;
	global.moveType = 1;
	with obj_player { instance_destroy();  }
		
	instance_create_layer(player_x,player_y, "Instances",obj_player);
	var fade = instance_create_depth(0,0,-9999,obj_fade);
	fade.target_room = rm_index
	fade.no_move = true
	fade.fade_type = 1
	fade.action = function () {
		global.loading = 0;
	}
	
	
}
/*
a1 = Jawaban 1
a2 = Jawaban 2
nn = Tidak Terpakai
ss = Kesamaan
*/
function scr_game_load_level(_level_id) {
	switch(_level_id){
		case 1: // done
			var_alphabet = ["S", "A", "B"]
			statements = ["himpunan bilangan bulat positif lebih kecil dari 10","bilangan ganjil","bilangan genap"]
			semesta = ["1-a1-r", "2-a2-r", "3-a1-r", "4-a2-r", "5-a1-r", "6-a2-r", "7-a1-r", "8-a2-r", "9-a1-r"]
			timerMax = 120;
			generate_timer = 20
			no_timer = true;
		break;
		
		case 2: //done
			var_alphabet = ["S", "A", "B"]
			statements = ["semesta diagram venn","lihat diagram venn","lihat diagram venn"]
			semesta = ["1-a1-r", "2-a1-r", "5-a1-r", "6-a1-r", "7-a1-r", "3-nn-r", "4-nn-r"]
			timerMax = 120;
			generate_timer = 20
			no_timer = true;
		break;
		
		case 3: //done
			var_alphabet = ["S", "A", "B"]
			statements = ["himpunan bilangan bulat positif lebih kecil dari 10","lihat diagram venn","lihat diagram venn"]
			semesta = ["1-nn-r", "2-ss-r", "3-ss-r", "4-nn-r", "5-ss-r", "6-nn-r", "7-nn-r", "8-nn-r", "9-nn-r"]
			timerMax = 120;
			generate_timer = 20
			no_timer = true;
		break;
		
		
		
		case 4: // done
			var_alphabet = ["S", "A", "B"]
			statements = ["himpunan bilangan bulat positif lebih kecil dari 10","bilangan genap","berwarna biru"]
			semesta = ["1-a2-b", "2-a1-m", "3-a2-b","4-a1-m","5-a2-b","6-a1-m","7-a2-b","8-ss-b","9-a2-b"]
			timerMax = 120;
			generate_timer = 20
		break;
		
		case 5: // done
			var_alphabet = ["S", "A", "B"]
			statements = ["himpunan bilangan bulat positif lebih kecil dari 10","bilangan ganjil","bilangan prima"]
			semesta = ["1-a1-r", "2-a2-r", "3-ss-r", "4-nn-r", "5-ss-r", "6-nn-r", "7-ss-r", "8-nn-r", "9-a1-r"]
			timerMax = 120;
			generate_timer = 20
		break;
		
		
		case 6:
			var_alphabet = ["S", "A", "B"]
			statements = ["himpunan bilangan bulat positif lebih kecil dari 10","lebih kecil dari 5","lebih besar dari 3"]
			semesta = ["1-a1-r", "2-a1-r", "3-a1-r", "4-ss-r", "5-a2-r", "6-a2-r", "7-a2-r", "8-a2-r", "9-a2-r"]
			timerMax = 60;
			generate_timer = 5;
			timerAtk[0] = room_speed * 5
			randomAtk[0] = true;
			generate_boost = true;
			generate_shield = true;
			scrAtk[0] = scr_attack_lightning
		break;
		
		case 7:
			var_alphabet = ["S", "A", "B"]
			statements = ["beberapa hewan","hewan berkaki 2","hewan berkaki 4"]
			semesta = ["30-a2-w",
			"31-a2-w",
			"32-a1-w",
			"33-a2-w",
			"34-a2-w",
			"35-a1-w",
			"36-a2-w",
			"37-a1-w",
			"38-a2-w",
			"39-a2-w",
			"40-a2-w",
			"41-a2-w",
			"42-a1-w",
			"43-a1-w",
			"44-a2-w",
			"45-nn-w",
			"46-a2-w",
			"47-a2-w"]
			timerMax = 180;
			generate_timer = 10
			no_timer = true;
		break;
		
		case 8:
			var_alphabet = ["S", "A", "B"]
			statements = ["beberapa kumpulan hewan","hewan reptil","hewan unggas"]
			semesta = ["30-a1-w",
			"31-nn-w",
			"32-a2-w",
			"33-nn-w",
			"34-nn-w",
			"35-a2-w",
			"36-nn-w",
			"37-a2-w",
			"38-nn-w",
			"39-nn-w",
			"40-nn-w",
			"41-nn-w",
			"42-a2-w",
			"43-a2-w",
			"44-nn-w",
			"45-a1-w",
			"46-nn-w",
			"47-nn-w"]
			timerMax = 180;
			generate_timer = 10
			no_timer = true;
		break;
		
		case 9:
			var_alphabet = ["S", "A", "B"]
			statements = ["beberapa kumpulan hewan","hewan karnivora","hewan herbivora"]
			semesta = ["30-a1-w",
			"31-a2-w",
			"33-a2-w",
			"34-a2-w",
			"35-ss-w",
			"36-a2-w",
			"38-a1-w",
			"40-a2-w",
			"41-a1-w",
			"42-ss-w",
			"43-a1-w",
			"44-ss-w",
			"45-a1-w",
			"47-a1-w"]
			timerMax = 180;
			generate_timer = 10;
			no_timer = true;
		break;
		
		case 10:
			var_alphabet = ["S", "A", "B"]
			statements = ["beberapa kumpulan hewan","hewan bertelur","hewan melahirkan"]
			semesta = ["30-a1-w",
			"31-a2-w",
			"32-a1-w",
			"33-a2-w",
			"34-a2-w",
			"35-a1-w",
			"36-a2-w",
			"37-a1-w",
			"38-a1-w",
			"39-a2-w",
			"40-a2-w",
			"41-a2-w",
			"42-a1-w",
			"43-a1-w",
			"44-a2-w",
			"45-a1-w",
			"46-a2-w",
			"47-a2-w"]
			timerMax = 120;
			generate_timer = 20
			no_timer = true;
		break;
		
		case 11:
			var_alphabet = ["S", "A", "B"]
			statements = ["beberapa kumpulan hewan","hewan mamalia","hewan ternak"]
			semesta = ["30-nn-w",
			"31-a1-w",
			"32-nn-w",
			"33-ss-w",
			"34-ss-w",
			"35-a2-w",
			"36-ss-w",
			"37-a2-w",
			"38-nn-w",
			"39-a1-w",
			"40-ss-w",
			"41-a1-w",
			"42-nn-w",
			"43-nn-w",
			"44-a1-w",
			"45-nn-w",
			"46-a1-w",
			"47-a1-w"]
			timerMax = 120;
			generate_timer = 20
			no_timer = true;
		break;
		
		case 12:
			var_alphabet = ["S", "A", "B"]
			statements = ["beberapa kumpulan hewan","terlihat daun telinganya","tidak terlihat daun telinganya"]
			semesta = ["30-a2-w",
			"31-a1-w",
			"32-a2-w",
			"33-a1-w",
			"34-a1-w",
			"35-a2-w",
			"36-a1-w",
			"37-a2-w",
			"38-a2-w",
			"39-a1-w",
			"40-a1-w",
			"41-a1-w",
			"42-a2-w",
			"43-a2-w",
			"44-a1-w",
			"45-a2-w",
			"46-a1-w",
			"47-a1-w"]
			timerMax = 60;
			generate_timer = 2;
			timerAtk[0] = room_speed * 4
			randomAtk[0] = true;
			scrAtk[0] = scr_attack_laser_easy
			generate_boost = true;
			generate_shield = true;
		break;
		
		case 13:
			var_alphabet = ["S", "A", "B"]
			statements = ["beberapa huruf","penyusun kata\n\"INDONESIA\"","penyusun kata\n\"KOREA\""]
			semesta = ["109-a1-r",
			"114-a1-r",
			"104-a1-r",
			"114-a1-r",
			"119-a1-r",
			"109-a1-r",
			
			"115-ss-r",
			"105-ss-r",
			"101-ss-r",
			
			"111-a2-r",
			"118-a2-r"]
			timerMax = 60;
			generate_timer = 20
		break;
		
		case 14:
			var_alphabet = ["S", "A"]
			statements = ["A, I, U, E, O, Q, W, R, T, Y","A, I, U, E, O"]
			semesta = ["101-nn-r",
			"109-nn-r",
			"121-nn-r",
			"105-nn-r",
			"115-nn-r",
			
			"117-ss-r",
			"123-ss-r",
			"118-ss-r",
			"120-ss-r",
			"125-ss-r"]
			timerMax = 120;
			generate_timer = 20
		break;
		
		case 15:
			var_alphabet = ["S", "A", "B", "C"]
			statements = ["lihat diagram venn","1, 2, 8","5, 6, 8" ,"9, 8"]
			semesta = ["1-ss-r",
			"2-ss-r",
			"8-nn-r",
			"5-nn-r",
			"6-nn-r",
			"9-ss-r"]
			timerMax = 120;
			generate_timer = 20
		break;
		
		case 16:
			var_alphabet = ["S", "A", "B"]
			statements = ["himpunan bilangan bulat positif lebih kecil dari 10","1, 2, 3, 4","4, 5, 6, 7"]
			semesta = ["1-ss-r",
			"2-ss-r",
			"3-ss-r",
			"4-ss-r",
			"5-ss-r",
			"6-ss-r",
			"7-ss-r",
			"8-nn-r",
			"9-nn-r"]
			timerMax = 60;
			generate_timer = 20
		break;
		
		case 17:
			var_alphabet = ["S", "A", "B"]
			statements = ["A, B, C, D, E, F, G, H, I","C, D, E, F","F, G, H, I"]
			semesta = ["101-nn-r",
			"102-nn-r",
			"103-nn-r",
			"104-nn-r",
			"105-nn-r",
			
			"106-nn-r",
			"107-ss-r",
			"108-ss-r",
			"109-ss-r",]
			timerMax = 60;
			generate_timer = 20
		break;
		
		case 18:
			var_alphabet = ["S", "A", "B"]
			statements = ["error! (code: 69)","berwarna merah","berwarna biru"]
			semesta = [
			"1-a1-m",
			"2-a2-b",
			"3-ss-p",
			"4-a2-b",
			"5-a1-m",
			"6-ss-p",
			"7-a1-m",
			"8-a2-b",
			"9-ss-p",
			"30-a2-b",
			"31-a1-m",
			"32-ss-p",
			"33-a1-m",
			"34-a2-b",
			"35-ss-p",
			"36-a2-b",
			"37-a1-m",
			"38-a2-b",
			"39-a1-m",
			"40-a1-m",
			"41-a1-m",
			"42-a2-b",
			"43-a1-m",
			"44-ss-p",
			"45-a1-m",
			"46-a2-b",
			"47-a1-m"
			]
			timerMax = 30;
			generate_timer = 2;
			timerAtk[0] = room_speed * 4
			randomAtk[0] = true;
			scrAtk[0] = scr_attack_laser
			generate_live = true;
			generate_boost = true;
		break;
	}
	
	event_user(0);
}
/**/