scr_game_music(room)
var base_w = 320;
var base_h = 240;
var aspect = display_get_width() / display_get_height();

if (aspect > 1)
    {
    //landscape
    display_set_gui_size(base_h * aspect, base_h);
    }
else
    {
    //portrait
    display_set_gui_size(base_w, base_w / aspect);
    }
var aspect = display_get_width() / display_get_height();
if (aspect > 1)
    {
    //landscape
    global.ww_gui = base_h * aspect;
    global.hh_gui = base_h;
    display_set_gui_maximise((display_get_width() / global.ww_gui), (display_get_height() / global.hh_gui), 0, 0);
    }
else
    {
    //portrait
    global.ww_gui = base_w;
    global.hh_gui = base_w / aspect;
    display_set_gui_maximise((display_get_width() / global.ww_gui), (display_get_height() / global.hh_gui), 0, 0);
    }
if (!window_get_fullscreen()) {
	display_set_gui_size(base_w, base_h)
	global.ww_gui = base_w
	global.hh_gui = base_h
}