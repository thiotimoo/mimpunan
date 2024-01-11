
if !move //&& !locked
{
locked = false;
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
var block = instance_place(x+hsp,y+vsp, obj_block);
 if hsp <> 0 && place_free(x+hsp,y) && instance_place(x + (hsp*20), y, obj_level) {
	 //move=true;
	 vsp=0;
	 var xbefore = x;
	 x = scr_snap_to_grid(x + hsp*20, 20);
	 shake_x = xbefore - x;
	 }
 else if vsp <> 0 && place_free(x,y+vsp) && instance_place(x, y+(vsp*20), obj_level) {
	 //move=true;
	 hsp=0;
	 var ybefore = y;
	 y = scr_snap_to_grid(y + vsp*20, 20);
	 shake_y = ybefore - y;
	 }
 else if (block) {
	 shake_x = hsp * 5
	 shake_y = vsp * 5
	 with block {event_user(0)}}
}
