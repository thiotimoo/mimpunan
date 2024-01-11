level = 15
hint = function() {
global.playable = 0;
dialog = instance_create_depth(0,0,-9980,obj_dialog)
		with (dialog) {
			title = "Konsep Himpunan Komplemen"
			text = ["Ini adalah\nHimpunan Komplemen","Komplemen dari A\nadalah himpunan semua\nelemen dari S yang\ntidak ada di\nhimpunan A.","Simbolnya:\nAc, Bc, dsb..."]
			text_offset = [[-15,-40],[-15,-30+string_height(text[0])+4],[-100,20]]
			text_color = [c_yellow,c_white,c_orange]
			box_sprite = spr_textbox_blue
			sprite_index = spr_tutorial_venn_c
			action = function() {
				global.playable = 1
		}
}
}