
image_oy = 8
skin_disp = 2;
ini_open("savedata.ini");
tamat = ini_read_real("save", "tamat", 0);
if (tamat) {
image = spr_raya_down
disabled = false;
image_blend = c_white
} else {
image = spr_skin_locked
disabled = true;
}
skin = ini_read_real("save", "skin", 0);
if (skin == skin_disp) image_blend = c_lime
ini_close();
action = function() {
ini_open("savedata.ini");
ini_write_real("save", "skin", skin_disp );
ini_close();
	with obj_control_button {
		if (image != -1) && (image != spr_skin_locked) {
			image_blend = c_white
		}
	}
audio_play_sound(snd_target,0,false,global.vol_sfx)

image_blend = c_lime

with obj_skin_display {
	event_user(0);
}
}