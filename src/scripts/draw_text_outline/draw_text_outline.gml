// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_outline(_x,_y,text){
color = draw_get_color();
draw_set_color(c_black)
draw_text(_x, _y+1, text)
draw_text(_x, _y-1, text)
draw_text(_x+1, _y, text)
draw_text(_x-1, _y, text)

draw_text(_x+1, _y+1, text)
draw_text(_x-1, _y-1, text)
draw_text(_x+1, _y-1, text)
draw_text(_x-1, _y+1, text)
draw_set_color(color)
draw_text(_x, _y, text)
}

function draw_text_outline_ext(_x,_y,text,sep,w){
color = draw_get_color();
draw_set_color(c_black)
draw_text_ext(_x, _y+1, text,sep,w)
draw_text_ext(_x, _y-1, text,sep,w)
draw_text_ext(_x+1, _y, text,sep,w)
draw_text_ext(_x-1, _y, text,sep,w)

draw_text_ext(_x+1, _y+1, text,sep,w)
draw_text_ext(_x-1, _y-1, text,sep,w)
draw_text_ext(_x+1, _y-1, text,sep,w)
draw_text_ext(_x-1, _y+1, text,sep,w)
draw_set_color(color)
draw_text_ext(_x, _y, text,sep,w)
}