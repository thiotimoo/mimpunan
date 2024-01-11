/// Joystick Logic
// You can write your code in this editor

image_alpha = lerp(image_alpha, 1, 0.1);
if (state == 3){
	state = 0;
}

kb_check = pressed
if (kb_check && state == 0){
	// On Press
	state = 1;
} else if (kb_check && state == 1) {
	// On Hold
	state = 2;
} else if (!kb_check && state == 1) {
	state = 0;
} else if (!kb_check && state == 2) {
	// On Release
	state = 3;
	room_goto(rm_menu_vs)
} else if (!kb_check){
	//image_index = 0;
	state = 0;
}

pressed = 0;