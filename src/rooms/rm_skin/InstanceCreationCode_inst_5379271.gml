image = spr_male_down
image_oy = 8
skin_disp = 1;
ini_open("savedata.ini");
skin = ini_read_real("save", "skin", 0);
if (skin == skin_disp) image_blend = c_lime
ini_close();
action = function() {
	with obj_control_button {
		if (image != -1 && image != spr_skin_locked) {
			image_blend = c_white
		}
	}
audio_play_sound(snd_target,0,false,global.vol_sfx)
ini_open("savedata.ini");
//tamat = ini_read_real("save", "tamat", 0);
image_blend = c_lime
ini_write_real("save", "skin", skin_disp );
ini_close();
with obj_skin_display {
	event_user(0);
}
}