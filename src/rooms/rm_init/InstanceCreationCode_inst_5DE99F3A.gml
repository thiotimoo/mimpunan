
ini_open("savedata.ini");
num = ini_read_real("save", "vol_music", 1) * 100;
global.vol_music = num/100;
ini_close();

text = "MUSIC: " + string(num)+"%"
action = function () {
	num += 10
	if (num > 100) num = 0;
	text = "MUSIC: " + string(num)+"%"
	ini_open("savedata.ini");
	ini_write_real("save", "vol_music", num/100 );
	global.vol_music = num/100;
	ini_close();
	audio_sound_gain(obj_game.current_vocal, 0, 500);
	audio_sound_gain(obj_game.current_music, global.vol_music, 500);
}