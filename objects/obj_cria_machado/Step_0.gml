x = obj_player.x;
y = obj_player.y;

timer--;
if (timer <= 0)
{
    for (var i = 0; i < qtd_machados; i++)
    {
        var _machado = instance_create_layer(obj_player.x, obj_player.y, "Armas", obj_machado);
        
    }
    
    timer = tempo;
}
