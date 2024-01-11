level = 1;
hint = function() {
global.playable = 0;
dialog = instance_create_depth(0,0,-9980,obj_dialog)
with (dialog) {
title = "Tutorial"
text = ["Gunakan DPAD atau [Panah]\nuntuk Bergerak / Dorong.", "Sentuh bendera dengan\nTombol $/[ENTER]."]
text_offset = [[-40,-10],[-35,30]]
text_color = [c_white,c_white]
sprite_index = spr_tutorial_first
	action = function() {
		dialog2 = instance_create_depth(0,0,-9980,obj_dialog)
		with (dialog2) {
			title = "Objektif"
			text = ["Masukkan blok-blok berikut\nke slot yang tepat sesuai\npernyataan."]
			text_offset = [[-50,-15]]
			text_color = [c_white,c_white]
			sprite_index = spr_tutorial_objective
			action = function() {
				global.playable = 1;
			}
		}
	}
}
}