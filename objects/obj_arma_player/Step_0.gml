if (instance_exists(arma_id))
{
    var _x_player = arma_id.x - arma_id.sprite_xoffset + arma_id.sprite_width/2;
    var _y_player = arma_id.y - arma_id.sprite_yoffset + arma_id.sprite_height/2;
    
    x = _x_player;
    y = _y_player;
    
    var _x = x + lengthdir_x(20, arma_dir);
    var _y = y + lengthdir_y(20, arma_dir);
    
    arma_x = _x;
    arma_y = _y;
    
    image_angle = arma_dir;
    
    if (arma_x > _x_player) dir = 1;
    else if (arma_x < _x_player) dir = -1;    
}