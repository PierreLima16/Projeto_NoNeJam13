#macro FPS game_get_speed(gamespeed_fps)

enum tipos_inimigos
{
    inimigo_1,
    inimigo_2,
    inimigo_3,
    inimigo_4,
    inimigo_5,
}

function tipo_de_inimigo(_tipo)
{
    inimigo_tipo = _tipo;
    inimigo_id = 0;

    switch(inimigo_tipo)
    {
        case tipos_inimigos.inimigo_1:
            
            inimigo_id = obj_inimigo_01;
            
            break;
        
        case tipos_inimigos.inimigo_2:
            
            inimigo_id = obj_inimigo_02;
            
            break;
        
        case tipos_inimigos.inimigo_3:
            
            break;
        
        case tipos_inimigos.inimigo_4:
            
            break;
        
        case tipos_inimigos.inimigo_5:
            
            break;
    }
}

function colisao(_hspd, _vspd, _colisores)
{
    if (place_meeting(x + _hspd, y, _colisores))
    {
        var _velh = sign(_hspd);
        while(!place_meeting(x + _velh, y, _colisores))
        {
            x += _velh;
        }
        
        _hspd = 0;
    }
    
    x += _hspd;
    
    if (place_meeting(x, y + _vspd, _colisores))
    {
        var _velv = sign(_vspd);
        while(!place_meeting(x, y + _velv, _colisores))
        {
            y += _velv;
        }
        
        _vspd = 0;
    }

    y += _vspd;
}