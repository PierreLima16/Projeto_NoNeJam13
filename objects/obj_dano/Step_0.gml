if (alvo)
{
    if (alvo != obj_ataque_sword)
    {
        x = alvo.x_ataque;
        y = alvo.y_ataque;
    }
}




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
        _outro.hit_dir = point_direction(x, y, _outro.x, _outro.y);
    }
}
ds_list_destroy(_colisao);