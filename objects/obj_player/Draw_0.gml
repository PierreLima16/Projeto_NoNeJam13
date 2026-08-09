draw_sprite_ext(sprite_index, image_index, x, y, xscale * dir, yscale, image_angle, image_blend, image_alpha);
desenha_efeito_brilho();

var _vida = (vida_atual / vida_max) * 100;
draw_healthbar(x - 15, y + 5, x + 15, y + 10, _vida, c_maroon, c_red, c_lime, 0, 1, 0);

//draw_text(x, y - 40, estado_txt);
//draw_text(x, y - 60, vida_atual);

