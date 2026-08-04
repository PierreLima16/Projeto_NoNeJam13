#macro FPS game_get_speed(gamespeed_fps)

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