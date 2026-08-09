velh = choose(-1, 1);
velv = -6;

dir = 1;

grav = 0.3;

x_ataque = 0;
y_ataque = 0;

var _x = x - sprite_xoffset + sprite_width/2;
var _y = y - sprite_yoffset + sprite_height/2;
dano = instance_create_layer(_x, _y, "Armas", obj_dano);
dano.alvo = id;
dano.dano = 1.5;