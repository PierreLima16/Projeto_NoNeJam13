
vel = max_vel;

velh = lengthdir_x(vel, tiro_dir);
velv = lengthdir_y(vel, tiro_dir);

image_angle = tiro_dir;

x += velh;
y += velv;