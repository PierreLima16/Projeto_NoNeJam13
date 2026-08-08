//global.xp_atual %= global.xp_max;
if (global.xp_atual >= global.xp_max and !global.pause)
{
    global.pause = true;
    
    var _spr_w = sprite_get_width(spr_descricao);
    var _spr_h = sprite_get_height(spr_descricao);
    
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();
    
    for (var i = 0; i < 3; i++)
    {
        var _x = 360 - _spr_w/2;
        var _y = 40 + i * 100;
        
        var _escolha = instance_create_layer(_x, _y, "Geral", obj_escolha);
        _escolha.pos_x = _x;
        _escolha.pos_y = _y;
        
        if (i >= 3)
        {
            break;
        }
    }
}

if (global.level > 8)
{
    if (instance_number(obj_inimigo_pai) <= 0)
    {
        show_message("Parabéns");    
    }
    
}

   

