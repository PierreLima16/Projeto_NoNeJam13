x = lerp(x, mouse_x, 0.3);
y = lerp(y, mouse_y, 0.3);

if (mouse_check_button(mb_any))
{
    image_xscale = lerp(image_xscale, 0.7, 0.2);
    image_yscale = image_xscale;
}
else
{
    image_xscale = lerp(image_xscale, 1, 0.2);
    image_yscale = image_xscale;
}
/*
if (room == rm_jogo)
{
    if (global.pause)
    {
        visible = true;
    }
    else
    {
        visible = false;
    }
}
else
{
    visible = true;
}
*/
window_set_fullscreen(tela_cheia);
if (keyboard_check_pressed(vk_f11))
{
    tela_cheia = !tela_cheia;
}