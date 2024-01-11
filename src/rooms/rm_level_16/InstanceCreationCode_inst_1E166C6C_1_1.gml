level = 16
hint = function() {
global.playable = 0;
dialog = instance_create_depth(0,0,-9980,obj_dialog)
		with (dialog) {
			title = "Konsep Himpunan Gabungan"
			text = ["Ini adalah\nHimpunan Gabungan","Gabungan dari dua\nhimpunan A dan B,\ndimana anggota yang\nsama hanya ditulis\nsatu kali.","Simbolnya:\nA u B"]
			text_offset = [[-15,-40],[-15,-30+string_height(text[0])+4],[-100,20]]
			text_color = [c_yellow,c_white,c_orange]
			box_sprite = spr_textbox_blue
			sprite_index = spr_tutorial_venn_union
			action = function() {
				global.playable = 1
		}
}
}