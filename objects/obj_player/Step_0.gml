if (global.pause) 
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