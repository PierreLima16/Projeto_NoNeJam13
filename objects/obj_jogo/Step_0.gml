//global.xp_atual %= global.xp_max;
if (global.xp_atual >= global.xp_max)
{
    global.level += 1;
    global.xp_max += 25;
    global.xp_atual = 0;
}