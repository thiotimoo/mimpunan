// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_music(_room){
	if (_room == rm_nextlevel) exit;
	var track;
	var vocal = noone;
	switch(_room){
		case rm_menu:
		case rm_levels:
		case rm_skin:
		track = mus_menu
		break;
		case rm_credits:
		track = mus_credits
		break;
		
		case rm_level_1:
		case rm_level_2:
		case rm_level_3:
		track = mus_calm1
		break;
		
		case rm_level_4:
		case rm_level_5:
		track = mus_mid;
		break;
		
		case rm_level_7:
		case rm_level_8:
		case rm_level_9:
		track = mus_calm2;
		break;
		
		case rm_level_13:
		case rm_level_14:
		case rm_level_15:
		case rm_level_16:
		case rm_level_17:
		track = mus_calm3;
		break;
		
		
		case rm_level_10:
		case rm_level_11:
		track = mus_credits;
		break;
		case rm_level_6:
		track = mus_hard;
		break;
		case rm_level_12:
		track = mus_hard2
		break;
		case rm_level_18:
		track = mus_hard3
		break;
		default:
		track = noone;
	}
	if (!audio_is_playing(vocal)) {
		audio_stop_sound(current_vocal)
	}
	
	
	if (!audio_is_playing(track)) {
	if (audio_is_playing(current_music)) audio_stop_sound(current_music);
	current_music = audio_play_sound(track,99,true,global.vol_music);
	if (vocal == noone) current_vocal = noone
	else {current_vocal = audio_play_sound(vocal,99,true);
		audio_sound_gain(obj_game.current_vocal, 0, 0);
		}
	}
}