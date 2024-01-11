var block = instance_position(x,y, obj_block)
if (block){
    if (block.category == answer){
        sprite_index = spr_slot_true
        block.locked = true;
        if (done == 0){
            done = 1
        }
    }else{
        sprite_index = spr_slot_false
    }
}else{
    sprite_index = spr_slot
}
if (done == 1){
    level.currentData[getBlockTypeID(answer)]++;
    done = 2
}