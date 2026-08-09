if (!audio_is_playing(msc_menu))
{
    audio_play_sound(msc_menu, 0, 1);
    audio_stop_sound(msc_jogo);
}

if (global.transicao)
{
    cria_transicao(sq_transicao2);
}

if (!instance_exists(obj_cursor))
{
    instance_create_depth(mouse_x, mouse_y, -99999999, obj_cursor);
}