if (global.pause) exit;

x = obj_player.x;
y = obj_player.y;

timer--;
if (timer <= 0)
{
    var _espaco = 0;
    repeat(4)
    {
        var _magia = instance_create_layer(obj_player.x, obj_player.y, "Armas", obj_magia);
        _magia.dir = _espaco;
        
        _espaco += 90;
    }
    
    timer = tempo;
}