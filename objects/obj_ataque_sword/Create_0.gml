meu_x = 0;
meu_y = 0;
meu_id = obj_player;
meu_dir = 0;

dir = 1;

x_ataque = 0;
y_ataque = 0;

var _x = x - sprite_xoffset + sprite_width/2;
var _y = y - sprite_yoffset + sprite_height/2;
dano = instance_create_layer(meu_x, meu_y, "Armas", obj_dano);
dano.alvo = id;
dano.dano = 0.3;
dano.image_xscale = 1.4;
dano.image_yscale = 1.4;

tempo = 5;
timer = tempo;