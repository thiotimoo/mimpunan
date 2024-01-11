text="Ganti"
action = function() {
	audio_play_sound(snd_target,0,false,global.vol_sfx)
ini_open("savedata.ini");
tamat = ini_read_real("save", "tamat", 0);
skin = ini_read_real("save", "skin", 0);
var skin_total = skin + 1;
if (tamat == 1 && skin_total >= 3) {
	skin_total = 0
} else if (skin_total >= 2 && tamat == 0){
	skin_total = 0
}
ini_write_real("save", "skin", skin_total );
ini_close();
with obj_skin_display {
	event_user(0);
}
}