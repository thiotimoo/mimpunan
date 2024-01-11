if (level == -1) {
	var new_level = instance_place(x,y,obj_level);
	if (new_level != noone) level = new_level.id;
}
var block = instance_position(x,y, obj_block)
if (!block){
    sprite_index = spr_slot;
}