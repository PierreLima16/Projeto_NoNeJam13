colisao(velh, velv, colisores);

var _x = x - sprite_xoffset + sprite_width/2;
var _y = y - sprite_yoffset + sprite_height/2;

with(minha_arma)
{
    arma_dir = point_direction(_x, _y, mouse_x, mouse_y);
}
