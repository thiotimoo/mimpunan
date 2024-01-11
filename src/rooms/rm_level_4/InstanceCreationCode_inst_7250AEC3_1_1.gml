level=4
hint = function() {
global.playable = 0;
dialog = instance_create_depth(0,0,-9980,obj_dialog)
with (dialog) {
			title = "Objektif"
			text = ["Selesaikan level sebelum\nwaktu berakhir!"]
			text_offset = [[-50,-15]]
			text_color = [c_white,c_white]
			sprite_index = spr_tutorial_objective
			action = function() {
				global.playable = 1;
			}
}
}