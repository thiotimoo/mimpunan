event_user(2);
global.prev_level = level
if (randomAtk != noone) {
var randomdur = 0
if (randomAtk[0]) randomdur = irandom(0)
alarm[2] = timerAtk[0] - randomdur
}
var _a = c_white
var _b = c_white
with obj_venn_rect {
	if (text = "A") _a = image_blend
	if (text = "B") _b = image_blend
}
with obj_venn_circle {
	if (text = "A") _a = image_blend
	if (text = "B") _b = image_blend
}
aColor = _a
bColor = _b
