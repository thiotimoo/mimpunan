global.client = network_create_socket(network_socket_udp)
global.server_ip = "127.0.0.1"
global.server_port = 6069
global.player_buffer = buffer_create(100, buffer_grow, 100);

enum TASK {
	NONE,
	HOST,
	JOIN,
}

enum msgType {
	CREATE_HOST,
	JOIN_HOST,
	STOP_HOST,
	SET_PLAYER_STAT,
	GET_HOSTS,
	GET_PLAYER_STAT,
	GET_NEW_PLAYERS,
	SET_BLOCK_DATA,
	GET_BLOCK_DATA
}
global.host_key = noone;
global.host_number = noone;
global.player_number = noone;

check_new_player = false;
alarm[3] = room_speed * 1

task = TASK.NONE;
updateList = 0;
should_host_stop = false;
is_host_stopped = false;
serverList = noone
function host()
{
	
	task = TASK.HOST
	//do something
	var data_host = ds_map_create();
	ds_map_add(data_host, "hostNumber", noone);
	ds_map_add(data_host, "playerNumber", noone);
	ds_map_add(data_host, "hostKey", noone)
	scrSendMapOverUDP(global.server_ip, global.server_port, 100, data_host, msgType.CREATE_HOST)
}
did_we_received_hosts = false;
try_to_get_host = false;
try_to_join = false;
is_joined = false;
target_join = 0;
function connect() {
	room_goto(rm_menu_vs_list);
	task = TASK.JOIN
	did_we_received_hosts = false;
	try_to_get_host = true;
	is_joined = false;
	}