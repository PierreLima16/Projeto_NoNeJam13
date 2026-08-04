draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * dir, image_yscale, image_angle, image_blend, image_alpha);

draw_text(x, y - 40, estado);
draw_text(x, y - 60, vida_atual);
draw_text(x, y - 80, "Lv. " + string(level));

