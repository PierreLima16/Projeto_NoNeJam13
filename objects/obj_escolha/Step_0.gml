var _sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);

if (_sobre)
{
    if (_mouse_click and global.pause)
    {
        global.pause = false;
        global.level += 1;
        global.xp_max += 25;
        global.xp_atual = 0;
        
        instance_destroy(obj_escolha);
    }
}