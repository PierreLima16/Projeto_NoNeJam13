if (global.pause) 
{
    image_speed = 0;
    velh = 0;
    velv = 0;
    exit;
}
else image_speed = 1;    


maquina_estados();

if (vida_atual <= 0) estado = "Morte";

if (x > obj_player.x) dir = -1;
if (x < obj_player.x) dir = 1;

/*
if (timer_hit > 0)
{
    timer_hit--;
    
    velh = lengthdir_x(1, hit_dir);
    velv = lengthdir_y(1, hit_dir);
}
*/

switch(level)
{
    case 1:
        
        red   = 255;
        green = 255;
        blue  = 255;
        
        break;
    
    case 2:
        
        red   = 255;
        green = 0;
        blue  = 0;
        
        break;
    
    case 3:
        
        red   = 0;
        green = 255;
        blue  = 0;
        
        break;
    
    case 4:
        
        red   = 0;
        green = 0;
        blue  = 255;
        
        break;
    
    case 5:
        
        red   = 100;
        green = 50;
        blue  = 150;
        
        break;
}