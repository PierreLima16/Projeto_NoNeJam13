draw_self();

draw_sprite(spr_icon, 0, x, y);

var _iid = upgrade;
var _spr_xoff = sprite_get_xoffset(spr_icon);
var _spr_yoff = sprite_get_yoffset(spr_icon);

var _spr_w = sprite_get_width(spr_icon);
var _spr_h = sprite_get_height(spr_icon);

var _x = x - _spr_xoff + _spr_w/2;
var _y = y - _spr_yoff + _spr_h/2;
draw_sprite_ext(global.item_index[# _iid, ups_stat.sprite], 0, _x, _y, 2, 2, 0, c_white, 1);

