
if (async_load[? "size"] > 0) {
	var c_rec_buff = async_load[?"buffer"]
	buffer_seek(c_rec_buff, buffer_seek_start, 0)
	var message_id = buffer_read(c_rec_buff, buffer_text);
	//show_debug_message("< " + message_id)
	response = json_decode(message_id); 
	if (ds_map_find_value(response, "type") == msgType.GET_BLOCK_DATA) {
		show_message("balls")
		var blockStat = ds_map_find_value(response, "blockData")
		var bn = ds_map_find_value(blockStat, "blockNumber")
		if (bn == blockNumber) {
			x = ds_map_find_value(blockStat, "x")
			y = ds_map_find_value(blockStat, "y")
		}
	}
}