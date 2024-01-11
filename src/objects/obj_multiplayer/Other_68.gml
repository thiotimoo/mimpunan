
if (async_load[? "size"] > 0) {
	var c_rec_buff = async_load[?"buffer"]
	buffer_seek(c_rec_buff, buffer_seek_start, 0)
	var message_id = buffer_read(c_rec_buff, buffer_text);
	//show_debug_message("< " + message_id)
	response = json_decode(message_id); 
	if (ds_map_find_value(response, "type") == msgType.SET_PLAYER_STAT) {
		//show_debug_message("on player stat")
	} else if (ds_map_find_value(response, "type") == msgType.CREATE_HOST) {
		show_debug_message("< " + message_id)
		var hostNumber = ds_map_find_value(response, "hostNumber");
		var hostKey = ds_map_find_value(response, "hostKey");
		var playerNumber = ds_map_find_value(response, "playerNumber");
		show_debug_message("we create host number " + string(hostNumber) + " and our player is " + string(playerNumber))
		global.host_number = hostNumber;
		global.host_key = hostKey;
		global.player_number = playerNumber;
		room_goto(rm_lobby);
		is_joined = true;
	} else if (ds_map_find_value(response, "type") == msgType.STOP_HOST) {
		show_debug_message("< " + message_id)
		var res = ds_map_find_value(response, "res")
		if (res == "stopped") {
			should_host_stop = false;
			is_host_stopped = false;
			room_goto(rm_menu);
			alarm[0] = -1;
		}
	} else if (ds_map_find_value(response, "type") == msgType.GET_HOSTS) {
		//show_debug_message("on player stat")
		show_debug_message("< " + message_id)
		serverList = ds_map_find_value(response, "hosts");
	} else if (ds_map_find_value(response, "type") == msgType.GET_NEW_PLAYERS && is_joined) {
		show_debug_message("on player stat")
		var players = ds_map_find_value(response, "players");
		number_of_players_already_in_room = instance_number(obj_player);
		if (number_of_players_already_in_room > 0) {
			for (var i = 0; i < number_of_players_already_in_room; i++) {
				var ext_player = instance_find(obj_player, i)
				var number_of_players = ds_list_size(players);
				for (var j = 0; j < number_of_players; j++) {
					var player = ds_list_find_value(players, j);
					var pn = ds_map_find_value(player, "playerNumber")
					if (pn == ext_player.playerNumber) {
						ds_list_delete(players, j)
						number_of_players = ds_list_size(players);
					}
				}
			}
		}
		var number_of_player_remain = ds_list_size(players);
		for (var i = 0; i < number_of_player_remain; i++) {
			var player = ds_list_find_value(players, i);
			var xx = ds_map_find_value(player, "x");
			var yy = ds_map_find_value(player, "y");
			newPlayer = instance_create_layer(xx, yy,  "Instances", obj_player);
			newPlayer.is_local = false;
			newPlayer.playerNumber = ds_map_find_value(player, "playerNumber")
			
		}
		if (ds_exists(players,ds_type_list)) ds_list_destroy(players)
	} else if (ds_map_find_value(response, "type") == msgType.JOIN_HOST) {
		//show_debug_message("on player stat")
		show_debug_message("< " + message_id)
		global.player_number = ds_map_find_value(response, "playerNumber");
		global.host_number = ds_map_find_value(response, "hostNumber");
		global.host_key = ds_map_find_value(response, "hostKey");
		is_joined = true;
		try_to_join = false;
		alarm[2] = -1;
		room_goto(rm_lobby);
	}
	//ds_map_destroy(response)
}
/*var type = async_load[? "type"];
var socket = async_load[? "socket"]
if (type == network_type_connect){
	
	var buffer = buffer_create(2, buffer_fixed, 1);
	//show_message(string(ds_list_size(clients)))
	buffer_write(buffer, buffer_u8, DATA.INIT_DATA);
	buffer_write(buffer, buffer_u8, ds_list_size(clients))
	
	network_send_packet(socket, buffer, buffer_get_size(buffer));
	buffer_delete(buffer);
	
	var plr = instance_create_layer(450, 625, "Instances", obj_player);
	plr.playerID = ds_list_size(clients);
	plr.is_local = false;
	var _buffer = buffer_create(2,buffer_fixed,1);
    buffer_write(_buffer,buffer_u8,DATA.PLAYER_JOINED);
    buffer_write(_buffer,buffer_u8,plr.playerID);
   
    for (var i=0;i<ds_list_size(clients);i++)
    {
        var soc = clients[| i];
       
        if (soc < 0) continue;
       
        network_send_packet(soc, _buffer, buffer_get_size(_buffer));
    }
    buffer_delete(_buffer);
   
    //add to list
    ds_list_add(clients,socket);
}else if (type == network_type_non_blocking_connect){
		connecting = false;
		if (async_load[? "succeeded"] == 1){
		room_goto(rm_school_1);
		//show_message("Connected")
		} else {
		//show_message("Timed Out")
		}
}else if (type == network_type_data) {
	var buffer = async_load[? "buffer"];
	buffer_seek(buffer, buffer_seek_start,0);
	var data = buffer_read(buffer,buffer_u8);
	switch (data){
		case DATA.BROADCAST:
		var serverName = buffer_read(buffer,buffer_string);
		if (!is_server) {
			if (ds_list_find_index(serverList, serverName) == -1){
				ds_list_add(serverList, serverName);
				ds_list_add(ipList, async_load[? "ip"]);
				updateList = 1;
				var bufferIP = buffer_create(2, buffer_grow, 1);
				buffer_write(bufferIP, buffer_u8, DATA.SERVER_IP);
				buffer_write(bufferIP, buffer_string, async_load[? "ip"]);
				network_send_packet(socket, async_load[? "ip"], buffer_get_size(bufferIP))
				buffer_delete(bufferIP);
			}
		}
		break;
		case DATA.SERVER_IP:
		show_message("bro")
		if (is_server) {
			server_ip = buffer_read(buffer,buffer_string);
		}
		break;
		
		case DATA.INIT_DATA:
		var count = buffer_read(buffer, buffer_u8);
		meCount = count
		for (var i = 0; i < count; i++) {
		var plr = instance_create_layer(random(room_width), random(room_height), "Instances", obj_player);
		plr.playerID = i;
		plr.is_local = false;
		}
		break;
		case DATA.PLAYER_UPDATE:
		var pID = buffer_read(buffer,buffer_u8);
		with (obj_player) {
			if (pID == playerID) {
				x = buffer_read(buffer,buffer_s16);
				y = buffer_read(buffer, buffer_s16);
				sprite_index = buffer_read(buffer,buffer_u16);
				image_index = buffer_read(buffer, buffer_u8);
			}
		}
		//server forwards player positions
        if (is_server)
        {
            for (var i=0; i<ds_list_size(clients);i++)
            {
                var soc = clients[| i];
                //make sure socket is not the one that sent the data
                if (soc < 0 || soc == async_load[? "id"]) continue;
               
                network_send_udp(soc,server_ip,server_port,buffer,buffer_get_size(buffer));
            }
        }
		break;
		case DATA.PLAYER_JOINED:
		 var inst = instance_create_layer(0,0,"Instances",obj_player);
        inst.playerID = buffer_read(buffer,buffer_u8);
        inst.is_local = false;
		break;
		case DATA.PLAYER_DISCONNECTED:
		var pIDdisc = buffer_read(buffer,buffer_u8);
            with (obj_player)
                {
                if (pIDdisc == playerID) instance_destroy();
				if (pIDdisc < playerID) playerID -= 1;
                }
		break;
		case DATA.PING:
			timeout = 0;
		break;
	}
} else if (type == network_type_disconnect)
    {
    var _cliSockID = async_load[? "socket"];
    discText = true;    // show on oGUI
    var pID = -2;

    #region DESTROY DISCONNECTED PLAYER INSTANCE FROM SERVER CLIENT
    for (var i=0; i<ds_list_size(clients); i++)
        {
        if (clients[| i] == _cliSockID)
            {
            pID = _cliSockID;
            with (obj_player)
                {
                if (pID == playerID) instance_destroy();
				if (pID < playerID) playerID -= 1;
            }
        }
		}
    #endregion

    var pos = ds_list_find_index(clients,pID);
    ds_list_delete(clients,pos);
   
    #region INFORM ALL CLIENTS THAT A CLIENT HAS LEFT THE SERVER
        var bufferPlayerLeft = buffer_create(2, buffer_fixed, 1);

        buffer_write(bufferPlayerLeft, buffer_u8, DATA.PLAYER_DISCONNECTED);
        buffer_write(bufferPlayerLeft, buffer_u8, pID);

        for (var i=0; i < ds_list_size(clients); i++)
        {
            var _cliSockID = clients[| i];
       
            if (_cliSockID < 0) continue;
   
            network_send_packet(_cliSockID, bufferPlayerLeft, buffer_get_size(bufferPlayerLeft));
        }
        buffer_delete(bufferPlayerLeft);
    #endregion

    }*/