arma_x = 0;
arma_y = 0;
arma_id = noone;
arma_dir = 0;

dir = 1;

atirar = false;

estado = noone;
estado_txt = "Equipado";

tempo_recarregar = FPS;
timer_recarregar = tempo_recarregar;

tempo_tiro = FPS * 0.4;
timer_tiro = tempo_tiro;

tiro = function()
{
    atirar = mouse_check_button(mb_left);
    
    if (timer_tiro > 0) timer_tiro--;
    else if (timer_tiro <= 0)
    {
        if (atirar)
        {
            var _tiro = instance_create_layer(arma_x, arma_y, "Armas", obj_tiro_player);
            _tiro.max_vel = 8;
            _tiro.tiro_dir = arma_dir;
            
            timer_tiro = tempo_tiro;
        }
    }    
}

estado_equipado = function()
{
    if (instance_exists(arma_id))
    {
        var _x_player = arma_id.x - arma_id.sprite_xoffset + arma_id.sprite_width/2;
        var _y_player = arma_id.y - arma_id.sprite_yoffset + arma_id.sprite_height/2;
        
        x = _x_player;
        y = _y_player;
        
        var _x = x + lengthdir_x(20, arma_dir);
        var _y = y + lengthdir_y(20, arma_dir);
        
        arma_x = _x;
        arma_y = _y;
        
        image_angle = arma_dir;
        
        if (arma_x > _x_player) dir = 1;
        else if (arma_x < _x_player) dir = -1;   
            
       
        tiro();
    }
}

estado = estado_equipado;