//Make it older
life += 1;

//find out what percentage the object in its life
lifeAmount = life / lifeTime;

//scale to the amount between the base and max size;
image_xscale = global.size * (baseSize + (growSize * lifeAmount))
image_yscale = global.size * (baseSize + (growSize * lifeAmount))

//SPIIIIIIIN!!!!!!!.......              because... you know.... its spin quest.... or somthing....
image_angle += rotationSpeed;

//Make the thing fade!
image_alpha = 1-lifeAmount;

if (life > lifeTime)
    {
    instance_destroy();
    }

