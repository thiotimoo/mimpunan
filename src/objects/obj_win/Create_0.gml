alarm[0] = 30;
allowed = false;
with obj_player {
instance_destroy();
}
title_pos = -90
global.playable = 0;
audio_play_sound(snd_harp,99,false,global.vol_sfx)
star = 0;
starCount = global.last_star;
alarm[1] = room_speed/1.5;