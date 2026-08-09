upgrade = irandom_range(1, 11);

if (instance_exists(obj_escolha) and obj_escolha.id.upgrade == upgrade)
{
    obj_escolha.id.upgrade = irandom_range(1, 11);
}

pos_x = 0;
pos_y = 0;

escala_txt = 0.3;

escala_spr = 2;