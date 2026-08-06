velh = 0;
velv = 0;

max_vel = 0.3;

dir = 1;

estado = "Seguindo";

vida_max = 1;
vida_atual = vida_max;
level = 1;

meu_xp = 10;

colisores = [obj_solido];

tipo_de_inimigo(tipos_inimigos.inimigo_1);

alvo = noone;
dest_x = 0;
dest_y = 0;

dano = 0.5;

tempo_ataque = 5;
timer_ataque = 0;

outline_r = shader_get_uniform(sh_outline, "r_outline");
outline_g = shader_get_uniform(sh_outline, "g_outline");
outline_b = shader_get_uniform(sh_outline, "b_outline");

red = 0;
green = 0;
blue = 0;


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
                obj_player.toma_dano(dano);
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
                    _part.inimigo_id = inimigo_id;
                    _part.inimigo_tipo = inimigo_tipo;
                    _part.level_inimigo = level;
                    _part.vel_inimigo = max_vel;
                    _part.vida_inimigo = vida_max;
                    
                    _dir += _val;
                }
            }
            
            break;
    }
}