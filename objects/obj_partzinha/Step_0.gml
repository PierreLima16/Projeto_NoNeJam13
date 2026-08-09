if (global.hitstop) exit;
    

//Diminuindo minha vida;
vida_atual--;

//Convertendo o valor da minha vida em porcentagem
var _val = vida_atual / vida_max;

//Dimuindo o meu alpha de acordo com a minha vida
image_alpha = _val;

//Dimunindo a minha velocidade que acordo com a minha vida vez minha velocidade original
velh = _val * velh_original * _val;
velv = _val * velv_original * _val;

//Misturando minhas cores
var _nova_cor = merge_colour(cor_final, cor_original, _val);
//Definindo minha cor
image_blend = _nova_cor;

//Diminuindo o meu tamanho
image_xscale = _val * escala_original;
image_yscale = image_xscale;

//Se minha vida for menor ou igual a zero, eu me destruo
if (vida_atual <= 0) instance_destroy();

//Somando meu X e Y com minha velocidade horizontal e vertical
x += velh;
y += velv;