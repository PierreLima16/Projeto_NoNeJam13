
//Função para criar minhas particulas
function cria_particula(_vida_min = 30, _vida_max = 60, _x = 0, _y = 0,_velh = 0, _velv = 0, _cor_inicial = c_white, _cor_final = c_white)
{
    //Se meu gerenciador de particulas não existe, eu crio ele
    if (!instance_exists(obj_part_manager)) instance_create_depth(0, 0, 0, obj_part_manager);
        
    //Acessando meu gerenciador de particulas
    with(obj_part_manager)
    {
        //Aleatorizando o número de particulas a serem criadas
        var _qtd = irandom_range(10, 20);
        
        //Velocidade da particula
        var _vel = abs(_velh) + abs(_velv);
        
        //Pegando a direção da minha particula
        var _dir = point_direction(0, 0, _velh, _velv);
        
        //Quantidade e vezes que irá repetir a criação das particulas
        repeat(_qtd)
        {
            //Variando o X e Y da minha particula
            var _xx = _x + random_range(-12, 12);
            var _yy = _y + random_range(_velv, _velv * 4);
            
            //Criando minhas particula
            var _part = instance_create_layer(_xx, _yy, "Particulas", obj_partzinha);
            
            //Variação de tamanho da particula
            var _tam = random_range(0.2, 0.5);
            
            //Variando a direção da particula
            var _dir_part = _dir + random_range(-30, 30);
            
            //Pegando a vida das minhas particulas
            var _vida = random_range(_vida_min, _vida_max);
            
            //Variação de velocidade
            var _vel_final = _vel + random_range(0, 2);
            
            //Dando direção a minha particula
            _part.velh_original = lengthdir_x(_vel_final, _dir_part);
            _part.velv_original = lengthdir_y(_vel_final, _dir_part);
            
            //Variando o tamanho da particula
            _part.escala_original = _tam;
            
            //Fazendo ela apontar para a direção que ela está indo
            _part.image_angle = _dir_part;
            
            //Definindo a vida das minhas particulas
            _part.vida_max = _vida;
            _part.vida_atual = _vida;
            
            //Passando a cor inicial e final para as minhas particulas
            _part.cor_original = _cor_inicial;
            _part.cor_final = _cor_final;
            
            //Escolhendo uma sprite para cada particula
            _part.sprite_index = choose(spr_part_linha, spr_part_triang, spr_part_circle);
            
        }
        
    }
}