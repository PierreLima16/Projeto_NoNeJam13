inicia_efeito_brilho();
inicia_efeito_squash();

velh = 0;
velv = 0;
vel = 2;

dir = 1;

colisores = [obj_solido];

left = false;
right = false;
down = false;
up = false;
atirar = false;

estado = noone;
estado_txt = "Idle";

vida_max = 40;
vida_atual = vida_max;

var _x = x - sprite_xoffset + sprite_width/2;
var _y = y - sprite_yoffset + sprite_height/2;
minha_arma = instance_create_layer(_x, _y, "Armas", obj_arma_player);
minha_arma.arma_id = id;

var _cam = instance_create_layer(x, y, "Geral", obj_camera);
_cam.alvo = id;

toma_dano = function(_dano)
{
    vida_atual -= _dano;
    aplica_efeito_brilho(c_red, 1);
    efeito_squash(1.2, 1.5);
    return;
}

aplica_movimento = function()
{
    //Pegando meus inputs básicos
    left  = keyboard_check(ord("A"));
    right = keyboard_check(ord("D"));
    up    = keyboard_check(ord("W"));
    down  = keyboard_check(ord("S"));
    
    //Ajustando lado que vou olhar
    //Se minha velocidade horizontal não estiver zerada
    if (velh != 0) dir = sign(velh); //Eu uso ela de base para saber para onde devo olhar
    
    //Pegando a direção que devo ir
    var _dir = point_direction(0, 0, (right - left), (down - up))
    
    //Se eu estou apertando alguma tecla de movimento
    if ((down xor up) or (right xor left))
    {
        //Eu aplico velocidade para ir na direção correta
        velh = lengthdir_x(vel, _dir);
        velv = lengthdir_y(vel, _dir);
    }
    //Caso não esteja apertando nenhuma tecla de movimento
    else
    {
        //Eu zero minha velocidade
        velh = 0;
        velv = 0;
    }
    
}

estado_idle = function()
{
    estado_txt = "Idle";
    
    //Zerando minha velocidade
    velh = 0;
    velv = 0;
    
    //Permitindo o movimento
    aplica_movimento();
    
    //Ajustando minha sprite
    troca_sprite(spr_player_idle);
    
    //Se eu estou apertando alguma tecla de movimento
    if ((down xor up) or (right xor left))
    {
        //Vou para o estado de walk
        estado = estado_walk;
    }
    
}

estado_walk = function()
{
    estado_txt = "Walk";
    
    //Permitindo o movimento
    aplica_movimento();
    
    //Ajustando minha sprite
    troca_sprite(spr_player_walk);
    
    //Se minha velocidade horizontal e velocidade vertical estiver zerada
    if (velh == 0 and velv == 0)
    {
        //Vou para o estado de idle
        estado = estado_idle;
    }
}

//Iniciando no estado de idle'
estado = estado_idle;