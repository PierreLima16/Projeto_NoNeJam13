//draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
draw_self();
draw_set_font(fnt_jogo);
draw_set_halign(1);
draw_set_valign(1);

var _sep = string_height("OI");

draw_text_ext_transformed(x, y, texto, _sep, bbox_right * 1.2, escala_txt, escala_txt, 0);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);


