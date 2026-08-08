if (global.pause) 
{
    image_speed = 0;
    exit;
}
else image_speed = 1;    


if (global.level > 8) exit;

if (timer_spawn > 0) timer_spawn--;
if (timer_spawn <= 0 or instance_number(obj_inimigo_pai) <= 0)
{
    var _qtd = irandom_range(qtd_min, qtd_max);
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();
    
    repeat(_qtd)
    {
        var _x = random_range(x - sprite_width/2, x + sprite_width/2);
        var _y = random_range(y - sprite_height/2, y + sprite_height/2);
        var _spawn = array_length(lista_inimigos[global.level]);
        
        var _inimigo = instance_create_layer(_x, _y, "Entidades", lista_inimigos[global.level]);
        
        timer_spawn = tempo_spawn;
    }
} 