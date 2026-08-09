global.hitstop = false;

function ativa_hitstop(_tempo = 10)
{
    global.hitstop = true;
    
    if (instance_exists(obj_hitstop_manager))
    {
        obj_hitstop_manager.timer_hitstop = _tempo;
        trava_backgrounds(obj_hitstop_manager.lista_backgrounds);
    }
    else
    {
        instance_create_depth(0, 0, 0, obj_hitstop_manager);
    }
}

function pega_backgrounds()
{
    //Pegando todas as minhas layers e armazenando-as em um array
    var _layer = layer_get_all();
    
    //Tamanho da minha lista de layers
    var _arr = array_length(_layer);
    
    //Array para guardar minhas layers de backgrounds
    var _bgs = [];
    
    //Passando pelos meus backgrounds
    for (var i = 0; i < _arr; i++)
    {
        var _atual = _layer[i];
        var _teste = layer_background_get_id(_atual);
        
        if (_teste != -1)
        {
            //Pegando o nome das minhas layers de background
            var _nome = layer_get_name(_atual);
            
            //Empurrando no meu array
            array_push(_bgs, _nome);
        }
    }
    
    //Devolvendo minhas layers de backgrounds salvas no array "_bgs"
    return _bgs;
}

//Função para travar os backgrounds
function trava_backgrounds(_lista_bgs)
{
    //Tamanho do meu array passado como argumento
    var _arr = array_length(_lista_bgs);
    
    //Passando meu pelo array
    for (var i = 0; i < _arr; i++)
    {
        //Pegando minha layer de background
        var _atual = _lista_bgs[i];
        
        //Salvando a velocidade vertival a horizontal das minhas layers de background
        var _hspeed = layer_get_hspeed(_atual);
        var _vspeed = layer_get_vspeed(_atual);
        
        //Empurrando as informações nos meus arrays
        array_push(obj_hitstop_manager.bgs_hspeed, _hspeed);
        array_push(obj_hitstop_manager.bgs_vspeed, _vspeed);
        
        //Zerando a velocidade dos backgrounds armazenados na lista
        layer_vspeed(_atual, 0);
        layer_hspeed(_atual, 0);
        
    }
    
}

//Função para destravar meus backgrounds
function destrava_background(_lista_bgs, _bgs_hspeed, _bgs_vspeed)
{
    //Tamanho do meu array
    var _arr = array_length(_lista_bgs);
    
    //Passando pelo meu array
    for (var i = 0; i < _arr; i++)
    {
        //Pegando minhas layers de backgrounds
        var _atual = _lista_bgs[i];
        
        //Pegando a velocidade delas antes de serem travadas
        var _hspeed = _bgs_hspeed[i];
        var _vspeed = _bgs_vspeed[i];
        
        //Voltando a velcidade
        layer_hspeed(_atual, _hspeed);
        layer_vspeed(_atual, _vspeed);
    }
}


