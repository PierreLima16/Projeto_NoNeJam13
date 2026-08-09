if (vida_atual <= 0)
{
    image_alpha -= 0.05;
    global.level = 1;
    global.xp_max = 130;
    global.xp_atual = 0;
    global.pause = false;
    
    
    if (image_alpha <= 0.1)
    {
        cria_transicao(sq_transicao1);
        global.destino = rm_menu;
    }
}

if (global.pause or vida_atual <= 0) 
{
    image_speed = 0; 
    velh = 0;
    velv = 0;
    exit;
}
else image_speed = 1;    


estado();


retorna_efeito_brilho(0, 0.1);
retorna_squash(0.1);