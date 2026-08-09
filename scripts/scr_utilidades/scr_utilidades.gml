#macro FPS game_get_speed(gamespeed_fps)

global.level = 1;
global.xp_atual = 0;
global.xp_max = 130;

global.transicao = false;
global.destino = false;

enum tipos_inimigos
{
    inimigo_1,
    inimigo_2,
    inimigo_3,
    inimigo_4,
    inimigo_5,
    inimigo_6,
    inimigo_7,
    inimigo_8,
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
            
            inimigo_id = obj_inimigo_03;
            
            break;
        
        case tipos_inimigos.inimigo_4:
            
            inimigo_id = obj_inimigo_04;
            
            break;
        
        case tipos_inimigos.inimigo_5:
            
            inimigo_id = obj_inimigo_05;
            
            break;
        
        case tipos_inimigos.inimigo_6:
            
            inimigo_id = obj_inimigo_06;
            
            break;
        
        case tipos_inimigos.inimigo_7:
            
            inimigo_id = obj_inimigo_07;
            
            break;
        
        case tipos_inimigos.inimigo_8:
            
            inimigo_id = obj_inimigo_08;
            
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

function troca_sprite(_spr)
{
    if (sprite_index != _spr)
    {
        sprite_index = _spr;
        image_index = 0;
    }
}

function ajusta_depth()
{
    depth = -y;
}

function efeito_sonoro(_snd, _pitch1, _pitch2)
{
    var _pitch = random_range(_pitch1, _pitch2);
    audio_play_sound(_snd, 0, 0, , , _pitch);
    
}

function cria_transicao(_seq)
{
    if (!layer_sequence_exists("Transicao", _seq))
    {
        layer_sequence_create("Transicao", 0, 0, _seq);
        layer_depth("Transicao", -99999);
    }
}

function muda_room()
{
    global.transicao = true;
    room_goto(global.destino);
}

function finaliza_transicao()
{
    global.transicao = false;
    layer_depth("Transicao", 0);
    
}



