// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_game_text(_text_id){
	switch(_text_id){
		case "story start":
		scr_text("Sungguh hari yang sangat indah! Aku sangat bahagia hari ini.", "naya")
		scr_text("Burung-burung berkicauan, dan matahari seperti tersenyum kepadaku.", "naya")
		break;
		case "npc students":
		scr_text("(Aku heran kenapa mereka terlihat sangat fokus sekali belajar, emang lagi belajar apaan sih?)", "naya")
		break;
		case "npc students ask":
		scr_text("April, emang kalian semua lagi belajar apa sih? Serius banget...", "naya")
		action = function() {
			instance_destroy();
			create_textbox("npc students ask exam", npc);
			global.playable = 0;
		}
		break;
		case "npc students ask exam":
		if (audio_is_playing(global.story_music))
		audio_stop_sound(global.story_music)
		audio_play_sound(snd_naya_exam, 99, false);
		scr_text("ULANGAN COY!!! MASA NGGAK INGET SIH?", "april");
			scr_text_shake(0,14);
			scr_text_color(0, 14, c_red, c_red, c_maroon, c_maroon);
		scr_text("HUWAAAAAAAAAAAAAAAAAAAAAA, AKU LUPA!!!", "naya");
		scr_text("ASTAGA, KOK BISA LUPA? KAN HARI INI ULANGAN MATEMATIKA MATERI HIMPUNAN...", "april");
		scr_text("Aku semalem asik ngescroll KitKot jadi kelupaan.", "naya");
		scr_text("Yaudah sekarang belajar atuh!", "april");
		scr_text("Iyaaa...", "naya");
		action = function() {
			instance_destroy();
			with obj_player {
			global.facing = "down"
			sprite_index = spr_player_down
			dir = 270;
			direction = 270
			}
			sfx_alarm = instance_create_depth(0,0,0, obj_onetime_sfx);
			sfx_alarm.sfx = snd_school_bell;
			sfx_alarm.delay = 60;
			with obj_player {zoomed = true}
			sfx_alarm.action = function() {
				
				effect_squashed = instance_create_depth(0,0,0, obj_meme_squashed);
				sfx_meme = instance_create_depth(0,0,0, obj_onetime_sfx);
				sfx_meme.sfx = snd_spongebob_fail;
				sfx_meme.sfx_pitch = 0.8;
				sfx_meme.delay = 60;
				sfx_meme.action = function(){
					with obj_player {
						zoomed = false
					}
					
					gws_delayed = instance_create_depth(0,0,0, obj_delayed_action);
					gws_delayed.timer = 3 * room_speed;
					gws_delayed.action = function() {
					create_textbox("npc students ask exam gws", npc);
					}
					
				}
			}
			global.playable = 0;
		}
			
		break;
		
		case "npc students ask exam gws":
			scr_text("GWS ya.", "april");
			action = function() {
				instance_destroy();
				global.quest_index = "story exam"
				with obj_player {
				 image_xscale = 1
				 image_yscale = 1
				 global.playable = 0;
				}
			}
		break;
		
		case "npc jojo":
		scr_text("YO YO! FOKUS BELAJAR DEK! AYO KITA FOKUS BELAJAR!", "jojo");
		scr_text("FOKUS BELAJAR! FOKUS BELAJAR! FOKUS BELAJAR! FOKUS BELAJAR! FOKUS BELAJAR! FOKUS BELAJAR! FOKUS BELAJAR! KAMU TUH HARUS FOKUS BELAJAR!", "jojo")
		scr_text("APAKAH KAMU FOKUS BELAJAR DEK?", "jojo")
			scr_text_color(12, 25, c_red, c_red, c_maroon, c_maroon)
			scr_option("Y banh", "npc jojo - yes")
			scr_option("G", "npc jojo - no")
			scr_option("Tutor Himpunan Bang", "npc jojo - tutorial", c_yellow)
		break;
		case "npc jojo - tutorial":
		scr_text("Hmmmmm...", "jojo")
			scr_text_float(0,9);
		scr_text("Oke sini aku ajarin. Supaya kamu fokus belajar!", "jojo")
			scr_textbox_cinematic(1);
		action = function() {
			instance_destroy();
			global.quest_index = "solve jojo";
			var fade = instance_create_depth(0,0,-9999,obj_fade);
			fade.target_room = rm_level_1;
			fade.target_x = 390;
			fade.target_y = 205;
			fade.fade_type = 1
			global.playable = 0;
			fade.action = function() {
				global.playable = 1;
			}
			
		}
		break;
		case "npc jojo - yes":
		scr_text("BAGUS KITA TUH HARUS SELALU FOKUS BELAJAR", "jojo")
		scr_text("selalu...", "jojo")
		scr_text("SELALU FOKUS BELAJAR!", "jojo")
			scr_text_float(7,20)
		scr_text("FOOOOOOOOOOOOOOOKUSSS BELAJAAAARRR!", "jojo")
			scr_text_shake(0,35)
		break;
		case "npc jojo - no":
		scr_text("Makanya fokus belajar dek...", "jojo")
		break;
		case "border sd":
		scr_text("Aku seharusnya tidak memasuki area SD...", "naya")
		break;
		
		case "border classroom":
		scr_text("Kelas sebentar lagi akan dimulai...", "naya")
		break;
		
		case "border smp":
		scr_text("Ingin naik ke lantai SMP?")
			scr_option("Naik", "border smp - yes")
			scr_option("Nggak jadi...", "border smp - no")
		break;
		
		case "border smp - yes":
			scr_text("Kamu naik ke lantai SMP...");
		break;
		
		case "border smp - no":
			scr_text("Kamu menetap di lantai SD...");
		break;
		
		case "kabur sekolah":
			scr_text("Aku mau ngapain sih?", "naya");
			scr_text("Aku gaboleh bolos sekolah.", "naya");
		break;
		
		case "atas depan sekolah":
			scr_text("Disitu tempatnya kotor, lagian bentar lagi sudah jam masuk sekolah...", "naya");
	}
}