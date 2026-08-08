
global.upgrades = ds_list_create();
ds_list_clear(global.upgrades);

global.item_index = ds_grid_create(ups.total, ups_stat.total)

global.pause = false;

enum ups
{
    none, aumento_vida, aumento_velociade, tiro_vel, reducao_dano,
    bala_vel, aumento_xp, /*espadas_volta, rajada_magia, machado_ar, tiro_dano,
    inimigo_vel,*/ total
}

enum ups_stat
{
    sprite,
    desc,
    up,
    total,
    
}


function cria_upgrades(_up_id, _spr, _desc, _up)
{
    global.item_index[# _up_id, ups_stat.sprite] = _spr;
    global.item_index[# _up_id, ups_stat.desc] = _desc;
    global.item_index[# _up_id, ups_stat.up]  = _up;
    
    usa_item = function()
    {
        _up();
    }
}

//Aumento de vida
function ganha_vida()
{
    with(obj_player)
    {
        vida_max = vida_max + vida_max * 1.1;
    }
}

//Aumento de velocidade
function ganha_vel()
{
    with(obj_player)
    {
        vel = vel + vel * 0.5;
    }
}

function vel_ao_atirar()
{
    with(obj_arma_player)
    {
        tempo_tiro = tempo_tiro - tempo_tiro * 0.5;
    }
}

function reduz_dano()
{
    with(obj_inimigo_pai)
    {
        dano = dano - dano * 0.3;
    }
}

function bala_speed()
{
    with(obj_arma_player)
    {
        vel_bala = vel_bala + vel_bala * 0.2;
    }
}

function ganha_xp()
{
    with(obj_inimigo_pai)
    {
        meu_xp = meu_xp + meu_xp * 0.3;
    }
}

//aumento vida
cria_upgrades(ups.aumento_vida, spr_saude, "Aumento da saúde máxima em 10%", ganha_vida);

//aumento velocidade
cria_upgrades(ups.aumento_velociade, spr_vel_up, "Aumento de velocidade em 5%", ganha_vel);

//velocidade ao atirar
cria_upgrades(ups.tiro_vel, spr_vel_bala, "Velocidade ao atirar aumentada em 5%", vel_ao_atirar);

//reducao dano
cria_upgrades(ups.reducao_dano, spr_dano_down, "Redução do dano recebido em 3%", reduz_dano);

//Velocidade da bala
cria_upgrades(ups.bala_vel, spr_vel_bala, "Velocidade dos tiros aumentada em 2%", bala_speed);

//Aumento do ganho de xp
cria_upgrades(ups.aumento_xp, spr_xp, "Aumenta o ganho de xp em 3%", ganha_xp);



