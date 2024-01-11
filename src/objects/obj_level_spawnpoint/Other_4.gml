scr_player_save_level(level);

var msg = instance_create_depth(0,0, -9999,obj_floattext)
	msg.top = true;
	msg.text = "LEVEL  "+ string(level);
	msg.bg_color = c_black
	msg.text_color = c_white