
if !move && !locked
{
hsp = 0
vsp = 0
if global.facing == "down"{
vsp = 1
}else if global.facing == "up"{
vsp = -1
}else if global.facing == "right"{
hsp = 1
}else {
hsp = -1
}
var block = instance_place(x+hsp,y+vsp, obj_block_online);
 if hsp <> 0 && place_free(x+hsp,y) {
	 //move=true;
	 vsp=0;
	 
	 var xbefore = x;
	 x = scr_snap_to_grid(x + hsp*20, 20);
	 shake_x = xbefore - x;
	 
	 data = ds_map_create();
	ds_map_add(data, "x", x);
	ds_map_add(data, "y", y);
	ds_map_add(data, "blockNumber", blockNumber)
	ds_map_add(data, "hostNumber", global.host_number);
	ds_map_add(data, "hostKey", global.host_key)
	ds_map_add(data, "playerNumber", global.player_number);
	scrSendMapOverUDP(global.server_ip, global.server_port, 100, data, msgType.SET_BLOCK_DATA)
	 }
 else if vsp <> 0 && place_free(x,y+vsp) {
	 //move=true;
	 hsp=0;
	 
	 var ybefore = y;
	 y = scr_snap_to_grid(y + vsp*20, 20);
	 shake_y = ybefore - y;
	 data = ds_map_create();
	ds_map_add(data, "x", x);
	ds_map_add(data, "y", y);
	ds_map_add(data, "blockNumber", blockNumber)
	ds_map_add(data, "hostNumber", global.host_number);
	ds_map_add(data, "hostKey", global.host_key)
	ds_map_add(data, "playerNumber", global.player_number);
	scrSendMapOverUDP(global.server_ip, global.server_port, 100, data, msgType.SET_BLOCK_DATA)
	 }
 else if (block) {
	 shake_x = hsp * 5
	 shake_y = vsp * 5
	 with block {event_user(0)}}
}
