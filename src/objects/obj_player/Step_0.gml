depth = -y;
if (invincible > 0){
invincible--;
danger_box = lerp(danger_box,0.6,0.1);
} else {
danger_box = lerp(danger_box,0,0.1);
}

if (shield > 0){
	shield--;
}


for (var i = 0; i < hpMax; ++i) {
	if (hpCount < i+1) {
	// Destroyed
	hpObjX[i] = lerp(hpObjX[i],10+12*i +10,0.1);
	hpObjY[i] = lerp(hpObjY[i],10-5*hpObjYS[i],0.1);
	hpObjAlpha[i] = lerp(hpObjAlpha[i],0,0.1);
	hpObjAngle[i] = lerp(hpObjAngle[i],0,0.1);
	hpObjXS[i] = lerp(hpObjXS[i],3,0.1);
	hpObjYS[i] = lerp(hpObjYS[i],3,0.1);
	hpObjIndex[i] = 1;
	} else {
	hpObjX[i] = lerp(hpObjX[i],10+12*i,0.1);
	hpObjY[i] = lerp(hpObjY[i],10,0.1);
	hpObjAlpha[i] = lerp(hpObjAlpha[i],1,0.1);
	hpObjAngle[i] = lerp(hpObjAngle[i],0,0.1);
	hpObjXS[i] = lerp(hpObjXS[i],1,0.1);
	hpObjYS[i] = lerp(hpObjYS[i],1,0.1);
	hpObjIndex[i] = 0;
	if (invincible > 0 || hpCount < 3) {
		hpShakeTimer[i]--;
		if hpShakeTimer[i] <= 0{
		hpShakeTimer[i] = irandom_range(2,4);
		hpShakeDir[i] = irandom(360);
		}
		if hpShakeTimer[i] <= 2{
		hpShakeX[i] = lengthdir_x(.5, hpShakeDir[i]);
		hpShakeY[i] = lengthdir_y(.5, hpShakeDir[i]);
		}
	} else {
		hpShakeX[i] = lerp(hpShakeX[i],0,0.1)
		hpShakeY[i] = lerp(hpShakeY[i],0,0.1)
	}
	}
}

if (boost > 0){
	if (obj_game.current_vocal!=noone) {
		if (vocal == noone){
		audio_sound_gain(obj_game.current_vocal, global.vol_music, 500);
		audio_sound_gain(obj_game.current_music, 0, 500);
		vocal = obj_game.current_vocal
		}
	}
boost--;
walk_anim_length = 0.05;
ghost = instance_create_layer(x,y,"Instances",obj_player_ghost)
ghost.sprite_index = sprite_index
ghost.image_index = image_index
ghost.image_blend = c_aqua
ghost.depth = -ghost.y
} else {
	if (obj_game.current_vocal!=noone) {
		if (vocal != noone){
		audio_sound_gain(obj_game.current_vocal, 0, 500);
		audio_sound_gain(obj_game.current_music, global.vol_music, 500);
		vocal = noone
		}
	}
walk_anim_length = 0.1;
}

if (hpCount <= 0) {
	global.playable = 0;
	room_goto(rm_gameover);
}
/// Step
// You can write your code in this editor
/*
defaultViewWidth = display_get_gui_width()
defaultViewHeight = display_get_gui_height()
if(zoomed) {
viewWidth = defaultViewWidth /2;
viewHeight = defaultViewHeight /2;
} else {
viewWidth = defaultViewWidth;
viewHeight = defaultViewHeight;

}

camera_set_view_size(view_camera[0],lerp(camera_get_view_width(view_camera[0]),viewWidth,0.05),lerp(camera_get_view_height(view_camera[0]),viewHeight,0.05));
*/

if (camera_follow) {
	//camera_set_view_pos()
	//camera_set_view_border(view_camera[0], camera_get_view_width(view_camera[0]) / 2, camera_get_view_height(view_camera[0]) / 2)
	//camera_set_view_target(view_camera[0], id)
	
	//Get target view position and size. size is halved so the view will focus around its center
var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);
var vpos_w = camera_get_view_width(view_camera[0]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[0]) * 0.5;

//The interpolation rate
var rate = 0.2;

//Interpolate the view position to the new, relative position.
var new_x = lerp(vpos_x, x - vpos_w, rate);
var new_y = lerp(vpos_y, y - vpos_h, rate);

var _shake_x = 0;
	var _shake_y = 0;
	
	if global.camera_shake{
		shake_timer--;
		if shake_timer <= 0{
		shake_timer = irandom_range(4,16);
		shake_dir = irandom(360);
		}
		if shake_timer <= 2{
		_shake_x = lengthdir_x(1, shake_dir);
		_shake_y = lengthdir_y(1, shake_dir);
		}
		
	}

//Update the view position
camera_set_view_pos(view_camera[0], clamp(new_x,0,room_width - camera_get_view_width(view_camera[0]))+_shake_x, clamp(new_y,0,room_height - camera_get_view_height(view_camera[0]))+_shake_y);
}
var _move_x = 0;
var _move_y = 0;



		key_left = global.movement_state[directions.left] == 1 or global.movement_state[directions.left] == 2 or keyboard_check(vk_left) or keyboard_check(ord("A"));
		key_right = global.movement_state[directions.right] == 1 or global.movement_state[directions.right] == 2 or keyboard_check(vk_right) or keyboard_check(ord("D"));
		key_up = global.movement_state[directions.up] == 1 or global.movement_state[directions.up] == 2 or keyboard_check(vk_up) or keyboard_check(ord("W"));
		key_down = global.movement_state[directions.down] == 1 or global.movement_state[directions.down] == 2 or keyboard_check(vk_down) or keyboard_check(ord("S"));
		if (key_down){
			_move_y = 1	
		}
		if (key_up){
			_move_y = -1
		}
		if (key_right){
			_move_x = 1	
		}
		if (key_left){
			_move_x = -1	
		}

if (global.moveType == 0){
if (global.playable){
var checkX = x + cos(degtorad(dir)) * interactRange;
var checkY = y - sin(degtorad(dir)) * interactRange;
interact = instance_place(checkX, checkY, obj_interact);
flag = false;
if interact {
	if (interact.sprite_index == spr_flag) {
		flag = true;
	}
    interact.glowing = true;
    interact.dir = dir
    if obj_control_z.state = 1
    {
    with (interact)
    {
        event_user(0);
        alarm[1] = 200;
    }
    }
}


if (abs(_move_x) > 0 || abs(_move_y) > 0) {
	if (check_step == 0){
		image_index = 1;
	}
	if (abs(_move_x) > abs(_move_y)) {
	image_speed = clamp(4 * abs(_move_x), 0, 1);
	if (_move_x > 0){
		global.facing = "right"
		sprite_index = spr_player_right;
		dir = 0;
	} else if (_move_x < 0) {
		global.facing = "left"
		dir = 180;
		sprite_index = spr_player_left;
	}
	}else{
	image_speed = 1 * abs(_move_y);
	if (_move_y > 0){
		global.facing = "down"
		dir = 270;
		sprite_index = spr_player_down;
	} else if (_move_y < 0) {
		global.facing = "up"
		dir = 90;
		sprite_index = spr_player_up;
	}
	}
	
	xSPD = round(_move_x * spd);
	ySPD = round(_move_y * spd);
	
	if (abs(ySPD) + abs(xSPD) == 0){
		image_index = 0;
		image_speed = 0;
	} else {
	if (!place_meeting(x+xSPD,y+ySPD,obj_customsolid)){
	if (!place_meeting(x, y + ySPD, obj_wall)){
		y += ySPD;
	}
	if (!place_meeting(x + xSPD, y, obj_wall)){
		x += xSPD;
	}
	
	}else{
		if (global.playable) {
		x = xprevious
		y = yprevious
		with (instance_place(x+xSPD,y+ySPD, obj_customsolid)) {
			event_user(0);
		}
		}else{
		image_index = 0;
		image_speed = 0;
		}
	}
	}
} else {
	image_index = 0;
	image_speed = 0;
}

check_step = abs(_move_x) + abs(_move_y)
} else if (following_path) {
	
if (path_position == 1){
	following_path = false;
	action_after_path();
}
	image_speed = 1

	dir = floor(direction/90);
    switch (dir) {
    case 0:
        sprite_index = spr_player_right;
        break;
		case 1:
        sprite_index = spr_player_up;
        break;
		case 2:
        sprite_index = spr_player_left;
        break;
		case 3:
        sprite_index = spr_player_down;
        break;
    }
} else {
	image_index = 0;
	image_speed = 0;
}
} else {
	var checkX = x + cos(degtorad(dir)) * interactRange;
var checkY = y - sin(degtorad(dir)) * interactRange;
interact = instance_place(checkX, checkY, obj_interact);
flag = false;
block_front = false;
if interact {
	block_front = true;
	if (interact.sprite_index == spr_flag) {
		flag = true;
	}
    interact.glowing = true;
    interact.dir = dir
    if obj_control_z.state = 1
    {
    with (interact)
    {
        event_user(0);
        alarm[1] = 200;
    }
    }
}
	
	player_anim_grid();
	if (abs(_move_x) > abs(_move_y)) {
	image_speed = clamp(4 * abs(_move_x), 0, 1);
	if (_move_x > 0){
		global.facing = "right"
		dir = 0;
		player_move_grid(directions.right);
	} else if (_move_x < 0) {
		global.facing = "left"
		dir = 180;
		player_move_grid(directions.left);
	}
	}else{
	if (_move_y > 0){
		global.facing = "down"
		dir = 270;
		player_move_grid(directions.down);
	} else if (_move_y < 0) {
		global.facing = "up"
		dir = 90;
		player_move_grid(directions.up);
	}
	}
	
}

/*
x += x_frac;             //Add the fraction back to your position
x_frac = x % 1;          //Get the new fraction (remainder), store it
x_int = x - x_frac;      // Get the rounded position, store it
x = x_int;               //Use that rounded position to place your object

y += y_frac;             //Add the fraction back to your position
y_frac = y % 1;          //Get the new fraction (remainder), store it
y_int = y - y_frac;      // Get the rounded position, store it
y = y_int;               //Use that rounded position to place your object