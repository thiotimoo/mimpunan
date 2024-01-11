/// Joystick Logic
// You can write your code in this editor

image_alpha = lerp(image_alpha, global.playable *0.75, 0.1);
image_xscale = lerp(image_xscale, 1.3, 0.1);
image_yscale = lerp(image_yscale, 1.3, 0.1);
if (global.movement_state[dir] == 3){
	global.movement_state[dir] = 0;
}

kb_check = pressed || kb_custom
if (kb_check && global.movement_state[dir] == 0){
	// On Press
	global.movement_state[dir] = 1;
} else if (kb_check && global.movement_state[dir] == 1) {
	// On Hold
	global.movement_state[dir] = 2;
} else if (!kb_check && global.movement_state[dir] == 1) {
	global.movement_state[dir] = 0;
} else if (!kb_check && global.movement_state[dir] == 2) {
	// On Release
	global.movement_state[dir] = 3;
} else if (!kb_check){
	global.movement_state[dir] = 0;
}

pressed = 0;