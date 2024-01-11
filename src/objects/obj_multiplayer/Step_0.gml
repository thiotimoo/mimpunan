if (try_to_join && !is_joined) {
	try_to_join = false
	alarm[2] = 2 * room_speed
	data = ds_map_create();
	ds_map_add(data, "hostNumber", target_join)
	ds_map_add(data, "playerNumber", noone)
	ds_map_add(data, "hostKey", noone)
	scrSendMapOverUDP(global.server_ip, global.server_port, 100, data, msgType.JOIN_HOST);
}

if (check_new_player) {
	check_new_player = false;
	alarm[3] = room_speed * 3;
	data = ds_map_create();
	ds_map_add(data, "hostNumber", global.host_number);
	ds_map_add(data, "players", noone);
	ds_map_add(data, "hostKey", global.host_key)
	scrSendMapOverUDP(global.server_ip, global.server_port, 100, data, msgType.GET_NEW_PLAYERS);
}

if (should_host_stop && !is_host_stopped) {
	should_host_stop = false;
	data = ds_map_create();
	ds_map_add(data, "hostNumber", global.host_number)
	ds_map_add(data, "hostKey", global.host_key)
	ds_map_add(data, "res", noone)
	scrSendMapOverUDP(global.server_ip, global.server_port, 100, data, msgType.STOP_HOST)
	alarm[0] = room_speed * 2;
}

if (!did_we_received_hosts && try_to_get_host) {
	try_to_get_host = false;
	alarm[1] = room_speed * 3;
	
	data = ds_map_create();
	ds_map_add(data, "hosts", noone);
	scrSendMapOverUDP(global.server_ip, global.server_port, 100, data, msgType.GET_HOSTS)
}
if (room != rm_menu_vs_list) {
	alarm[1] = -1;
}



if (updateList == 1 && serverList !=noone && task == TASK.JOIN && room == rm_menu_vs_list) {
	updateList = 0;
	with obj_control_button {
		if (is_list) {
			instance_destroy();
		}
	}
	width = 20*10
	for (var i = 0;i<ds_list_size(serverList);i++){
		_host = ds_list_find_value(serverList, i);
		countPlayers = ds_list_size(ds_map_find_value(_host, "players"));
		var button = instance_create_layer(room_width/2 - width / 2, 50 + i * 30, "Instances", obj_control_button);
		button.image_xscale = 10;
		button.is_list = true;
		button.hostNum = i;
		button.text = string(i) + "  with "+ string(countPlayers) + " players"
		did_we_received_hosts = true;
	}
}