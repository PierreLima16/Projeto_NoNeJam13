draw_self();

draw_sprite_ext(spr_icon, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);

var _iid = upgrade;
var _spr_xoff = sprite_get_xoffset(spr_icon);
var _spr_yoff = sprite_get_yoffset(spr_icon);

var _spr_w = sprite_get_width(spr_icon);
var _spr_h = sprite_get_height(spr_icon);

var _x = x - _spr_xoff + _spr_w/2;
var _y = y - _spr_yoff + _spr_h/2;
draw_sprite_ext(global.item_index[# _iid, ups_stat.sprite], 0, _x, _y, escala_spr, escala_spr, 0, c_white, 1);

draw_set_font(fnt_jogo);
draw_set_halign(0);
draw_set_valign(0);

var _sep = string_height("OI");

draw_text_ext_transformed(x + 85, y + 5, string(global.item_index[# _iid, ups_stat.desc]), _sep, bbox_right * 1.2, escala_txt, escala_txt, 0);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
