if (global.pause) exit;

x_ataque = x;
y_ataque = y;

velh = lengthdir_x(vel, dir);
velv = lengthdir_y(vel, dir);

var _magia_ext = instance_create_depth(x, y, depth+1, obj_magia_ext);

x += velh;
y += velv;