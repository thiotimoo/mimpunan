level = 17

hint = function() {
global.playable = 0;
dialog = instance_create_depth(0,0,-9980,obj_dialog)
		with (dialog) {
			title = "Konsep Selisih Himpunan"
			text = ["Selisih dua himpunan\nA dan B adalah himpunan\ndari semua anggota\nhimpunan A\ntetapi tidak dimiliki\nhimpunan B.","Simbolnya:\nA - B"]
			text_offset = [[-15,-30],[-100,20]]
			text_color = [c_white,c_orange]
			box_sprite = spr_textbox_blue
			sprite_index = spr_tutorial_venn_selisih
			action = function() {
				global.playable = 1
		}
}
}