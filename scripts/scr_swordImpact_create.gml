///scr_swordImpact_create()

baseSize = 0.1
growSize = 4
baseSizeSpeed = 0.2;

image_angle = random(360);
rotationSpeed = random_range(1,-1);

lifeTime = 0.2 * room_speed;
life = 0;

image_xscale = global.size * baseSize;
image_yscale = global.size * baseSize;


