/// Initialize Variables
// You can write your code in this editor
enum states {
	idle,
	walking
}


boost = 0;
spr_player_down = noone
spr_player_up = noone
spr_player_left = noone
spr_player_right = noone
scr_player_skin();
sprite_index = spr_player_down
global.playable = 1
global.camera_shake = false;
shake_timer = 0;
shake_dir = 0;
hpCount = 5;
hpMax = 5;
state = states.idle;
frames = [1,0,3,0];
walk_anim_frames = 4;
image_speed = 0;
image_index = 0;
invincible = 0;
shield = 0;
float_size = 0;
alarm[0] = room_speed / 12;
sprite[directions.right] = spr_player_right;
sprite[directions.up] = spr_player_up;
sprite[directions.left] = spr_player_left;
sprite[directions.down] = spr_player_down;

x_pos = x div tile_width;
y_pos = y div tile_height;

x_from = x_pos
y_from = y_pos

move_snap(tile_width, tile_height)
x += 10
y += 7

x_to = x_pos
y_to = y_pos

walk_anim_length = 0.1;
walk_anim_time = 0;

camera_follow = true;
spd = 1;
check_step = 0;
global.facing = "down"
dir = 270;
direction = 270;
interactRange = 10;

is_local = true;
playerNumber = 0;

image_speed = 0;
following_path = false;
action_after_path = function() {

}

zoomed = false;
flag = false;
block_front = false;
vocal = noone;
global.dir_grid = directions.down
scores = global.last_score
global.last_score = scores
for (var i = 0; i < hpMax; ++i) {
	hpObjX[i] = 10+12*i;
	hpObjY[i] = 10;
	hpObjXS[i] = 1;
	hpObjYS[i] = 1;
	hpObjAlpha[i] = 1;
	hpObjColor[i] = c_white;
	hpObjAngle[i] = 0;
	hpObjIndex[i] = 0;
	hpShakeTimer[i] = 0;
	hpShakeDir[i] = 0;
	hpShakeX[i] = 0;
	hpShakeY[i] = 0;
}
invincible_blink = 1;
danger_box = 0;
vigNormal = 0;
vigBoost = 0;
vigDanger = 0;