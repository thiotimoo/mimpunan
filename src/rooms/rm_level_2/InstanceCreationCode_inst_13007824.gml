level = 2
hint = function() {
global.playable = 0;
dialog = instance_create_depth(0,0,-9980,obj_dialog)
		with (dialog) {
			title = "Tutorial"
			text = ["Waduh... Apalagi ini?\n\nIni adalah diagram venn."]
			text_offset = [[-15,-20]]
			text_color = [c_white,c_white]
			sprite_index = spr_tutorial_venn
			action = function() {
				dialog = instance_create_depth(0,0,-9980,obj_dialog)
		with (dialog) {
			title = "Tutorial"
			text = ["Ini merupakan area\nanggota Himpunan A"]
			text_offset = [[-15,-20]]
			text_color = [c_white,c_white]
			sprite_index = spr_tutorial_venn_a
			action = function() {
				dialog = instance_create_depth(0,0,-9980,obj_dialog)
		with (dialog) {
			title = "Tutorial"
			text = ["Ini merupakan area\nanggota Himpunan B"]
			text_offset = [[-15,-20]]
			text_color = [c_white,c_white]
			sprite_index = spr_tutorial_venn_b
			action = function() {
				dialog = instance_create_depth(0,0,-9980,obj_dialog)
		with (dialog) {
			title = "Konsep Irisan"
			text = ["Ini merupakan area Irisan","Himpunan dari semua\nanggota himpunan\nA dan B yang sama.\n\nHimpunan yang anggotanya\nada di kedua himpunan\ntersebut.","Simbolnya:\nA n B"]
			text_offset = [[-15,-40],[-15,-40+string_height(text[0])+2],[-100,20]]
			text_color = [c_yellow,c_white,c_orange]
			box_sprite = spr_textbox_blue
			sprite_index = spr_tutorial_venn_s
			action = function() {
				dialog = instance_create_depth(0,0,-9980,obj_dialog)
		with (dialog) {
			title = "Objektif"
			text = ["Nah jika venn-nya\nseperti ini.\nApakah himpunan A\ntermasuk himpunan B?"]
			text_offset = [[-15,-20]]
			text_color = [c_white,c_white]
			sprite_index = spr_tutorial_venn_inside
			action = function() {
				global.playable = 1;
			}
		}
			}
		}
			}
		}
			}
		}
			}
		}
}