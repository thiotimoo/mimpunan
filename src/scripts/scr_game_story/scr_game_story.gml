// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_story(_story_id){
	switch(_story_id){
		case "story start":
		global.story_music = audio_play_sound(mus_school_start, 1, true)
		with obj_player {
			global.playable = 0;
			global.facing = "up"
			sprite_index = spr_player_up
			x = 448
			y = 704
			dir = 90;
			direction = 90
		}
		
		action = function() {
			with obj_player {
				path_start(path_school_start,1,path_action_stop, true)
				following_path = true;
				action_after_path = function() {
					var fade = instance_create_depth(0,0,-9999,obj_fade);
					fade.target_room = rm_school_classroom;
					fade.target_x = 175;
					fade.target_y = 90;
					fade.text = "Naya pun pergi ke kelasnya..."
					fade.fade_type = 1
					global.playable = 0;
					fade.action = function() {
						global.playable = 1;
					}
				}
			}
		}
		delayed_action = instance_create_depth(0,0,0,obj_delayed_action);
		delayed_action.action = function() {
		create_textbox("story start", id);
		}
		delayed_action.timer = 2 * room_speed;
		break;
		case "story exam":
			global.playable = 0;
			var fade = instance_create_depth(0,0,-9999,obj_fade);
				fade.target_room = rm_school_classroom;
				fade.target_x = 240;
				fade.target_y = 128;
				fade.text = "Ulangan Matematika pun akhirnya tiba..."
				fade.fade_type = 1
				fade.action = function() {
					global.playable = 0;
					with (obj_player) {
						global.facing = "up"
						sprite_index = spr_player_up
						dir = 90;
						direction = 90
						with (obj_classroom_table) {
							image_index = 4;
							image_speed = 0;
						}
					}
				}
				
		break;
	}
}