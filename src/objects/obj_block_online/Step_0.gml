depth = -y;
image_index = item;
if (!locked){
if (glowing)
image_alpha = lerp(image_alpha,0.2,0.2);
}

data = ds_map_create();
ds_map_add(data, "blockData", noone)
ds_map_add(data, "blockNumber", blockNumber)
ds_map_add(data, "hostNumber", global.host_number);
ds_map_add(data, "hostKey", global.host_key)
ds_map_add(data, "playerNumber", global.player_number);
scrSendMapOverUDP(global.server_ip, global.server_port, 100, data, msgType.GET_BLOCK_DATA)