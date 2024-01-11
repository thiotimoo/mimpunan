level=6
hint = function() {
global.playable = 0;
dialog = instance_create_depth(0,0,-9980,obj_dialog)
with (dialog) {
			title = "Objektif"
			text = ["HINDARI RINTANGAN, dan\nSelesaikan level sebelum\nwaktu berakhir!"]
			text_offset = [[-50,-15]]
			text_color = [c_white,c_white]
			box_sprite = spr_textbox_green
			sprite_index = spr_tutorial_hard1
			action = function() {
				global.playable = 1;
			}
}
}