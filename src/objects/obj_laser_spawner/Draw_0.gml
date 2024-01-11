
if (vertical) {
	_x1 = x + _xminus
	_x2 = x + 20 - _xminus
	_y1 = 0
	_y2 = room_height
	
} else {
	_x1 = 0
	_x2 = room_width
	_y1 = y + _xminus
	_y2 = y+20 - _xminus
}
draw_set_alpha(image_alpha)
draw_set_colour(image_blend)
draw_rectangle(_x1,_y1,_x2,_y2,false)
draw_set_colour(c_white)
draw_set_alpha(1)