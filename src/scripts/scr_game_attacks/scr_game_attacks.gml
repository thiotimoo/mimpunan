// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack_lightning(){
	if (instance_exists(obj_player))
	instance_create_depth(obj_player.x-10,obj_player.y-10,0,obj_bolt_spawner);
}

function scr_attack_laser_easy(){
	if (instance_exists(obj_player)){
	var laser1 = instance_create_depth(obj_player.x-10,obj_player.y-10,0,obj_laser_spawner);
	laser1.vertical = true
	
	var laser2 = instance_create_depth(obj_player.x-10,obj_player.y-10,0,obj_laser_spawner);
	laser2.vertical = false
	}
}

function scr_attack_laser(){
	if (instance_exists(obj_player)) {
	randomize()
	var laser = instance_create_depth(obj_player.x-10,obj_player.y-10,0,obj_laser_spawner);
	laser.vertical = true
	var laser2 = instance_create_depth(obj_player.x-10+choose(20,0,-20),obj_player.y-10+choose(20,0,-20),0,obj_laser_spawner);
	laser2.vertical = false
	var bolt = instance_create_depth(obj_player.x-10,obj_player.y-10,0,obj_bolt_spawner);
	bolt.following = false;
	bolt.vol = 0.25
	}
}