var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

var _total_xp = (global.xp_atual / global.xp_max) * 100;
draw_healthbar(0, 20, _gui_w, 0, _total_xp, c_gray, c_aqua, c_aqua, 0, 1, 0);
