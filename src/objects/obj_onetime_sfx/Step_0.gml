
if (timer <= 0) {
	playing_sound = audio_play_sound(sfx, 90, false);
	audio_sound_pitch(playing_sound, sfx_pitch)
} else {
	if(!audio_is_playing(playing_sound)){
		delay--;
		if (delay <= 0) {
		action();
		instance_destroy();
		}
	}
}

timer++;
if (sfx == -1) instance_destroy();