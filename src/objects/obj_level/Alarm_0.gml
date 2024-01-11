if (!no_timer) {
	if (!instance_exists(obj_dialog)) {
		timer--;
	}
alarm[0] = room_speed;
if (timer <= 0) {
	alarm[0] = -1
	global.playable = 0;
	room_goto(rm_gameover);
	var msg = instance_create_depth(0,0, -9999,obj_floattext)
	msg.text = "WAKTU  HABIS!";
	msg.bg_color = c_red
	msg.text_color = c_black
}
if(timer == 5) {
audio_play_sound(snd_alarm,99,false);
}
}