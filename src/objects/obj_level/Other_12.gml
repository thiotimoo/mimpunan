scr_game_load_level(level);
if (generate_live) {
	alarm[3] = room_speed * generate_timer;
}

if (generate_boost) {
	alarm[4] = room_speed * generate_timer;
}

if (generate_shield) {
	alarm[5] = room_speed * generate_timer;
}