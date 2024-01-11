// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more 
function scr_player_save_level(level) {
ini_open("savedata.ini");
level2 = ini_read_real("save", "level", 1);
if (level >  level2) {
	ini_write_real("save", "level", level );
	ini_write_real("save", "score", global.last_score );
}
ini_close();
}
function scr_player_skin() {
spr_player_down = noone
spr_player_up = noone
spr_player_left = noone
spr_player_right = noone
ini_open("savedata.ini");
skin = ini_read_real("save", "skin", 0);
ini_close();
switch(skin) {
	case 0:
	spr_player_down = spr_naya_down
	spr_player_up = spr_naya_up
	spr_player_left = spr_naya_left
	spr_player_right = spr_naya_right
	break;
	
	case 1:
	spr_player_down = spr_male_down
	spr_player_up = spr_male_up
	spr_player_left = spr_male_left
	spr_player_right = spr_male_right
	break;
	
	case 2:
	spr_player_down = spr_raya_down
	spr_player_up = spr_raya_up
	spr_player_left = spr_raya_left
	spr_player_right = spr_raya_right
	break;
}
}
function player_damage() {
	if (instance_exists(obj_player)) {
	if (obj_player.invincible <= 0 && obj_player.shield <= 0 ) {
	global.camera_shake = true;
	obj_player.hpCount -= 1;
	obj_player.invincible = room_speed * 2
	}
	}
}
function player_move_grid(_dir){
	var components = global.components[_dir];
	var dx = components[0];
	var dy = components[1];
	var checkX = x + cos(degtorad(dir)) * 20;
	var checkY = y - sin(degtorad(dir)) * 20;
	interact = instance_place(checkX, checkY, obj_block);
	if interact {
    interact.glowing = true;
    interact.dir = dir
	}
	if (state == states.idle) {
		if (global.playable){
	if interact {
    with (interact)
    {
        event_user(0);
        alarm[1] = 200;
    }
	}
		
	}
		if place_free(checkX,checkY) {
		x_pos = x div tile_width;
		y_pos = y div tile_height;
		
		x_from = x_pos;
		y_from = y_pos;
		
		x_to = x_pos + dx;
		y_to = y_pos + dy;
		
		state = states.walking
		}
		global.dir_grid = _dir
		sprite_index = sprite[_dir]
		image_speed = 0;
	}
}

function player_anim_grid() {
	if (state == states.walking) {
		walk_anim_time += room_speed / 10000
		
		var t = walk_anim_time / walk_anim_length
		if (t >= 1) {
			walk_anim_time = 0;
			t = 1;
			state = states.idle
		}
		var _x = lerp(x_from, x_to, t);
		var _y = lerp(y_from, y_to, t);
		
		x = (_x * tile_width) + 10
		y = _y * tile_height + 7
		
		image_index = frames[floor((walk_anim_frames - 1) * t)]
		image_speed = 0;
	}
}