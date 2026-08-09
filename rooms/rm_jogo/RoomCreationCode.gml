if (!audio_is_playing(msc_jogo))
{
    audio_play_sound(msc_jogo, 0, 1);
    audio_stop_sound(msc_menu);
}

if (global.transicao)
{
    cria_transicao(sq_transicao2);
}