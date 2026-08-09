
//Função para ativar meu damage flash
function ativa_damage_flash(_cor = c_white)
{
    var _flash = instance_create_depth(0, 0, 0, obj_damage_flash);
    
    //Pegando a altura e largura da sprite do meu flash
    var _spr_w = _flash.sprite_width;
    var _spr_h = _flash.sprite_height;
    
    //Tamanho do meu flash proporcional ao tamanho da room
    var _xscale = room_width / _spr_w;
    var _yscale = room_height / _spr_h;
    
    //Mudando o tamanho do meu flash
    _flash.image_xscale = _xscale;
    _flash.image_yscale = _yscale;
    
    //Mudando a cor do meu flash de acordo com o argumento passado
    _flash.image_blend = _cor;
}