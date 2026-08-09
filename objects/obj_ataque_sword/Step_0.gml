x_ataque = meu_x;
y_ataque = meu_y;


if (!instance_exists(dano))
{
    
    dano = instance_create_layer(meu_x, meu_y, "Armas", obj_dano);
    dano.alvo = id;
    dano.dano = 0.5;
    dano.image_xscale = 1.4;
    dano.image_yscale = 1.4;
    
    
}

if (instance_exists(meu_id))
{
    var _x_player = meu_id.x - meu_id.sprite_xoffset + meu_id.sprite_width/2;
    var _y_player = meu_id.y - meu_id.sprite_yoffset + meu_id.sprite_height/2;
    
    x = _x_player;
    y = _y_player;
    
    var _xx = x + lengthdir_x(28, meu_dir);
    var _yy = y + lengthdir_y(28, meu_dir);
    
    meu_x = _xx;
    meu_y = _yy;
    
    
    image_angle = meu_dir;
    
    meu_dir += 4;
}