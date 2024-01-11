// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrSendMapOverUDP(ip, port, size, map, type){
	//network_connect_raw(global.client, ip, port)
	ds_map_add(map, "type", type);
	var dataJson = json_encode(map);
	//show_debug_message("> " + dataJson);
	buffer_seek(global.player_buffer, buffer_seek_start, 0)
	buffer_write(global.player_buffer, buffer_text, dataJson)
	ds_map_destroy(map)
	network_send_udp_raw(global.client, ip, port, global.player_buffer, buffer_tell(global.player_buffer))
}

function scrSendMapOverUDP2(ip, port, size, map, type){
	//network_connect_raw(global.client, ip, port)
	ds_map_add(map, "type", type);
	//show_debug_message("> " + dataJson);
	buffer_seek(global.player_buffer, buffer_seek_start, 0)
	buffer_write(global.player_buffer, buffer_text, "")
	ds_map_destroy(map)
	network_send_udp_raw(global.client, ip, port, global.player_buffer, buffer_tell(global.player_buffer))
}

function getOnlinePlayerStates() {
	
	var data = ds_map_create();
	ds_map_add(data, "hostNumber", global.host_number);
	ds_map_add(data, "playerNumber", playerNumber);
	ds_map_add(data, "playerStat", noone);
	ds_map_add(data, "hostKey", global.host_key)
	scrSendMapOverUDP2(global.server_ip, global.server_port, 100, data, msgType.GET_PLAYER_STAT);
	ds_map_destroy(data);
}

function setOnlinePlayerStates() {
	
	var data = ds_map_create();
	ds_map_add(data, "x", x);
	ds_map_add(data, "y", y);
	ds_map_add(data, "sprite_index", sprite_index);
	ds_map_add(data, "image_index", image_index);
	ds_map_add(data, "hostNumber", global.host_number);
	ds_map_add(data, "hostKey", global.host_key)
	ds_map_add(data, "playerNumber", global.player_number);
	scrSendMapOverUDP2(global.server_ip, global.server_port, 100, data, msgType.SET_PLAYER_STAT)
	ds_map_destroy(data);
}