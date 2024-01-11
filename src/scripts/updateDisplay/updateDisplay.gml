
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateDisplay(center){
// Screen Ratio

var base_w = 320;
var base_h = 240;
var max_w = display_get_width();
var max_h = display_get_height();
var aspect = display_get_width() / display_get_height();
if (max_w < max_h)
    {
    // portait
   // var VIEW_WIDTH = min(base_w, max_w);
	//var VIEW_HEIGHT = VIEW_WIDTH / aspect;
	//ww = base_h * aspect;
    //hh = base_h;
	var max_w = display_get_height();
	var max_h = display_get_width();
	var VIEW_HEIGHT = min(base_h, max_h);
    var VIEW_WIDTH = VIEW_HEIGHT * aspect;
	ww = base_w;
    hh = base_w / aspect;
    }
else
    {
    // landscape
    var VIEW_HEIGHT = min(base_h, max_h);
    var VIEW_WIDTH = VIEW_HEIGHT * aspect;
	ww = base_w;
    hh = base_w / aspect;
    }
global.ww_gui = max_w
global.hh_gui = max_h
if (view_wport[0] != max_w && view_hport[0] != max_h){
	/*
camera_set_view_size(view_camera[0], floor(VIEW_WIDTH), floor(VIEW_HEIGHT))

view_wport[0] = max_w;
view_hport[0] = max_h;


*/
//surface_resize(application_surface, max_w, max_h);
display_set_gui_size(320,240);
if (center){
//window_set_size(floor(VIEW_WIDTH)*2, floor(VIEW_HEIGHT)*2);
window_set_position(display_get_width()/2 - camera_get_view_width(0), display_get_height()/2 - camera_get_view_height(0));
//display_reset(0, true);
}
}

}