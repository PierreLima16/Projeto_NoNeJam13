ajusta_depth();

if (place_meeting(x + velh, y, colisores))
{
    var _velh = sign(velh);
    while(!place_meeting(x + _velh, y, colisores))
    {
        x += _velh;
    }
    
    velh = 0;
}

x += velh;

if (place_meeting(x, y + velv, colisores))
{
    var _velv = sign(velv);
    while(!place_meeting(x, y + _velv, colisores))
    {
        y += _velv;
    }
    
    velv = 0;
}

y += velv;

