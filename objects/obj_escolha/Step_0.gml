var _sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);

depth = -1000000;

if (_sobre)
{
    tween(id, "image_xscale", 1.1, tween_animation.bounce, FPS * 0.5);
    tween(id, "image_yscale", 1.1, tween_animation.bounce, FPS * 0.5);
    tween(id, "escala_txt", 0.35, tween_animation.bounce, FPS * 0.5);
    tween(id, "escala_spr", 2.2, tween_animation.bounce, FPS * 0.5);
    
    if (_mouse_click and global.pause)
    {
        global.pause = false;
        global.level += 1;
        global.xp_max += 80;
        global.xp_atual = 0;
        
        if (global.level > 7)
        {
            with(obj_spawner)
            {
                qtd_max = qtd_max + 1;
            }
        
        }
        
        var _up = global.item_index[# upgrade, ups_stat.up];
        
        _up();
        
        instance_destroy(obj_escolha);
    }
}
else
{
    tween(id, "image_xscale", 1, tween_animation.bounce, FPS * 0.5);
    tween(id, "image_yscale", 1, tween_animation.bounce, FPS * 0.5);
    tween(id, "escala_txt", 0.3, tween_animation.bounce, FPS * 0.5);
    tween(id, "escala_spr", 2, tween_animation.bounce, FPS * 0.5);
}