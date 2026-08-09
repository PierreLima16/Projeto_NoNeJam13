
if (level > 1)
{
    shader_set(sh_outline);

    shader_set_uniform_f(outline_r, red);
    shader_set_uniform_f(outline_g, green);
    shader_set_uniform_f(outline_b, blue);
    
    draw_sprite_ext(sprite_index, image_index, x, y + 1.5, (xscale * 1.1) * dir, yscale * 1.1, image_angle, c_purple, image_alpha);
    
    shader_reset();
    
}

draw_sprite_ext(sprite_index, image_index, x, y, xscale * dir, yscale, image_angle, image_blend, image_alpha);
desenha_efeito_brilho();
/*
draw_text(x, y - 40, estado);
*/

//draw_text(x, y - 60, vida_atual);
/*
draw_text(x, y - 80, "Lv. " + string(level));

