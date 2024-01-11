image_alpha = 0;
destroyed = false;
alarm[0] = 1;
box_xscale = 0;
box_yscale = 0;
box_sprite = spr_textbox;
image_xscale = 0;
image_yscale = 0;
dim_alpha = 0;
title = "Tutorial"
text = ["Gunakan DPAD atau [Panah]\nuntuk Bergerak / Dorong.", "Sentuh bendera dengan\nTombol $/[ENTER]."]
text_offset = [[-40,-10],[-35,30]]
text_color = [c_white,c_white]

global.playable = 0;
action = function () {
	global.playable = 1;
}
button = instance_create_depth(0,0,depth - 5,obj_control_button);
button.text = "OK"
button.image_alpha = 0;
button.image_blend = c_yellow
button.presetup = true
button_xscale = 3;
button_yscale = 1;
button.action = function () {
	with obj_dialog {
		destroyed = true;
	}
}