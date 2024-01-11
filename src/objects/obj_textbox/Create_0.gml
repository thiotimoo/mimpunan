//textbox_width = 180;
textbox_width = 215;
textbox_height = 80;
border = 8;
line_sep = 12;
line_width = floor(textbox_width - border * 2.5)
txtb_spr[0] = spr_textbox;
txtb_img = 0;
txtb_img_spd = 6/room_speed;

wide_screen_offset = (camera_get_view_width(view_camera[0]) - 320) / 2

// the text
page = 0;
page_number = 0;
option[0] = "";
option_color[0] = c_white;
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);

char[0,0] = "";
char_x[0,0] = "";
char_y[0,0] = "";

draw_char = 0;
text_spd = 1;
npc = -1;
setup = false;
cinematic_height = 0;
cinematic[0] = 0;

scr_set_defaults_for_text();
last_free_space = 0;

text_pause_timer = 0;
text_pause_time = 16;

snd_delay = 4;
snd_count = snd_delay;

action = function() {
	instance_destroy();
	// none
}