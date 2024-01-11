alarm[1] = -1
var light = instance_create_depth(x,y,-999,obj_lightning_bolt)
light.vol = vol
global.camera_shake = true
if (instance_exists(obj_player)) {
if (place_meeting(x,y,obj_player)) {
player_damage();
}
}
instance_destroy();
if (!child) {
var bolt = instance_create_depth(x,y,-y,obj_bolt_spawner)
bolt.vol = vol
bolt.spd = 0.01
bolt.following = true
bolt.child = true
}