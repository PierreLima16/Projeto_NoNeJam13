velh = 0;
velv = 0;

max_vel = 0.5;

dir = 1;

estado = "Seguindo";

vida_max = 2;
vida_atual = vida_max;
level = 1;

colisores = [obj_solido, obj_inimigo_pai];

alvo = noone;
dest_x = 0;
dest_y = 0;

tempo_ataque = FPS;
timer_ataque = 0;


toma_dano = function(_dano)
{
    
    vida_atual -= _dano;
    return;
    
}

maquina_estados = function()
{
    switch(estado)
    {
        case "Seguindo":
            
            if (instance_exists(obj_player))
            {
                alvo = obj_player;
            }
            
            if (alvo)
            {
                dest_x = alvo.x;
                dest_y = alvo.y;
                
                var _dir = point_direction(x, y, dest_x, dest_y);
                velh = lengthdir_x(max_vel, _dir);
                velv = lengthdir_y(max_vel, _dir);
                
                if (abs(x - dest_x) < 5 and abs(y - dest_y) < 5)
                {
                    estado = "Ataque";
                    velh = 0;
                    velv = 0;
                    timer_ataque = 0;
                }
                
            }
            
            break;
        
        
        case "Ataque":
            
            timer_ataque--;
            if (timer_ataque <= 0)
            {
                show_message("Ataquei");
                timer_ataque = tempo_ataque;
            }
            
            dest_x = alvo.x;
            dest_y = alvo.y;
                
            var _dist = point_distance(x, y, dest_x, dest_y);
            
            if (_dist > 10)
            {
                estado = "Seguindo";
            }
            
            break;
        
        case "Morte":
            
            instance_destroy();
            
            static _criei = false;
            if (!_criei)
            {
                
                var _x = x - sprite_xoffset + sprite_width/2;
                var _y = y - sprite_yoffset + sprite_height/2;
                
                var _dir = 0;
                var _val = random_range(30, 80);
                
                repeat(5)
                {
                    var _part = instance_create_layer(_x, _y, "Entidades", obj_part_inimigos);
                    _part.dir = _dir;
                    _part.level_inimigo = level;
                    _part.vel_inimigo = max_vel;
                    _part.vida_inimigo = vida_max;
                    
                    _dir += _val;
                }
            }
            
            break;
    }
}