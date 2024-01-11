if (destroy) {
	title_pos = lerp(title_pos, -30, 0.2)
	if (title_pos <= 0) instance_destroy();
} else {
	title_pos = lerp(title_pos, 30, 0.2)
}