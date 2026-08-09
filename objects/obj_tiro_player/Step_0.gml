
if (global.pause) 
{
    image_speed = 0;
    velh = 0;
    velv = 0;
    exit;
}
else image_speed = 1;    


vel = max_vel;

velh = lengthdir_x(vel, tiro_dir);
velv = lengthdir_y(vel, tiro_dir);

image_angle = tiro_dir;

x += velh;
y += velv;

var _colisao = ds_list_create();
var _qtd = instance_place_list(x, y, obj_inimigo_pai, _colisao, false);

for (var i = 0; i < _qtd; i++)
{
    var _outro = _colisao[| i];
    var _valor = ds_list_find_index(lista_inimigos, _outro);
    
    if (_valor == -1)
    {
        ds_list_add(lista_inimigos, _outro);
        
        _outro.toma_dano(dano);
        _outro.hit_dir = tiro_dir;
        
        instance_destroy();
        
    }
}

ds_list_destroy(_colisao);
