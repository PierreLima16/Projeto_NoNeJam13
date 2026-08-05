velh = lengthdir_x(max_vel, dir);
velv = lengthdir_y(max_vel, dir);

max_vel = lerp(max_vel, 0, acel);

x += velh;
y += velv;

if (timer > 0) timer--;

var _col = instance_place(x, y, obj_part_inimigos);
if (_col)
{
    if (_col.level_inimigo == level_inimigo and _col.inimigo_tipo == inimigo_tipo and timer <= 0)
    {
        var _inimigo = instance_create_layer(x, y, "Entidades", inimigo_id);
        _inimigo.level = level_inimigo + 1;
        _inimigo.max_vel = vel_inimigo + 0.05;
        _inimigo.vida_max = vida_inimigo + 0.3;
        _inimigo.vida_atual = _inimigo.vida_max;
        
        instance_destroy();
        
        timer = tempo;   
    }
    
    
}


if (timer_destruir > 0) timer_destruir--;
else if (timer_destruir <= 0) destruir = true;    

if (destruir)
{
    image_alpha = lerp(image_alpha, 0, 0.1);
    if (image_alpha <= 0.05)
    {
        instance_destroy();
    }
}