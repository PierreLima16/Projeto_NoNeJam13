
if (global.pause) 
{
    image_speed = 0;
    velh = 0;
    velv = 0;
    exit;
}
else image_speed = 1;    


vel = max_vel;

velh = lengthdir_x(vel, tiro_dir);
velv = lengthdir_y(vel, tiro_dir);

image_angle = tiro_dir;

x += velh;
y += velv;