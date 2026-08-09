x_ataque = x;
y_ataque = y;


velv += grav;
velv = clamp(velv, -6, 6);

image_angle += 5;

if (velh != 0) dir = sign(velh);

x += velh;
y += velv;