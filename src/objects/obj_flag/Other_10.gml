
var is_wrong = false;
with (obj_slot) {
	event_user(1);
	if (sprite_index == spr_slot_false) {
		is_wrong = true;
	}
}
if (is_wrong) {
instance_create_depth(obj_player.x,obj_player.y,-999,obj_lightning_bolt)
var msg = instance_create_depth(0,0, -9999,obj_floattext)
	msg.text = "ADA  JAWABAN  SALAH!";
	msg.bg_color = c_red
	msg.text_color = c_black
player_damage();
} else {
	var _x = 0;
	var currcount = 0;
	var currdata = 0;
	repeat(array_length_1d(obj_level.currentData)) {
	if (_x != 0){
    //draw_text(15,40+10*_x, string(getBlockIDType(_x))+ " "+ string() + "/"+ string))
	currdata+=obj_level.currentData[_x]
	currcount+=obj_level.countData[_x]
	}
	_x++;
	}
	var scoreTimer = floor((obj_level.timer / obj_level.timerMax) * 100);
	
	if (floor(currdata/currcount * 100) == 100) {
		obj_player.scores += scoreTimer
	global.last_score = obj_player.scores
		if (tamat) {
		var msg = instance_create_depth(0,0, -9999,obj_floattext)
		msg.text = "SKIN BARU TELAH DIBUKA!";
		msg.bg_color = c_yellow
		msg.text_color = c_black
		room_goto(rm_theend)
		ini_open("savedata.ini");
	ini_write_real("save", "tamat", 1 );
	ini_write_real("save", "score", obj_player.scores );
	ini_close();
		}else{
		/*
	var msg = instance_create_depth(0,0, -9999,obj_floattext)
	msg.text = "LEVEL  TERSELESAIKAN!";
	msg.bg_color = c_yellow
	msg.text_color = c_black*/
	//scr_game_levels(obj_level.level + 1)
	if (scoreTimer < 20) global.last_star = 1
	else if (scoreTimer < 60) global.last_star = 2
	else global.last_star = 3
	ini_open("savedata.ini");
	star = ini_read_real("level" + string(obj_level.level), "star",0)
	if (star < global.last_star)
	ini_write_real("level" + string(obj_level.level), "star",  global.last_star);
	ini_close();
	global.last_level = obj_level.level
	scr_player_save_level(obj_level.level + 1)
	with obj_player { instance_destroy();  }
	var fade = instance_create_depth(0,0,-9999,obj_fade);
	fade.target_room = rm_nextlevel
	fade.no_move = true
	fade.fade_type = 1
	fade.action = function () {
		global.loading = 0;
	}
		}
	
	}else{
	var msg = instance_create_depth(0,0, -9999,obj_floattext)
	msg.text = string(floor(currdata/currcount * 100)) + "%  terselesaikan!";
	msg.bg_color = c_green
	msg.text_color = c_black
	msg.pg_color = c_lime
	msg.pg = floor(currdata/currcount * 100)
	}
	
	
	
}