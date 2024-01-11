image_alpha = 2;
alarm[1] = -1
image_blend = c_red
 _xminus = 10
global.camera_shake = true;
audio_play_sound(snd_laser, 10,false,global.vol_sfx)
if (instance_exists(obj_player)) {
if (point_in_rectangle(obj_player.x,obj_player.y,_x1,_y1,_x2,_y2)) {
player_damage();

}
}
vanish = true;
