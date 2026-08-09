var _sobre = position_meeting(mouse_x, mouse_y, id);
var _click = mouse_check_button_pressed(mb_left);

if (_sobre or place_meeting(x, y, obj_cursor))
{
    tween(id, "image_xscale", xscale * 1.2, tween_animation.elastic, acel);
    tween(id, "image_yscale", yscale * 1.2, tween_animation.elastic, acel);
    tween(id, "escala_txt", 0.3, tween_animation.bounce, acel);
    
    if (!toquei)
    {
        efeito_sonoro(snd_sobre, 0.8, 1.2);
        toquei = true;
    }
    
    if (_click)
    {
        tween(id, "image_xscale", xscale * 5, tween_animation.bounce, 10);
        tween(id, "image_yscale", yscale * 2, tween_animation.bounce, 10);
        tween(id, "escala_txt", 0.7, tween_animation.bounce, 10);
        
        efeito_sonoro(snd_click, 0.8, 1.2);
        
        switch(texto)
        {
            case "JOGAR":
                
                cria_transicao(sq_transicao1);
                global.destino = rm_jogo;
                
                break;
            
            case "CRÉDITOS":
                
                cria_transicao(sq_transicao1);
                global.destino = rm_credits;
                
                break;
            
            case "SAIR":
                
                game_end();
                
                break;
            
            case "VOLTAR":
                
                cria_transicao(sq_transicao1);
                global.destino = rm_menu;
                
                break;
        }
        
    }
}
else
{
    tween(id, "image_xscale", xscale * 1, tween_animation.elastic, acel);
    tween(id, "image_yscale", yscale * 1, tween_animation.elastic, acel);
    tween(id, "escala_txt", 0.25, tween_animation.bounce, acel);
    
    toquei = false;
}