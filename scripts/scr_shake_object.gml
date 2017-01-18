var object = argument0;
var origX = argument1;
var origY = argument2;
var shakeRate = argument3;
var timer = argument4;

with(object)
{
    timer -= 1;
    if(timer > 0)
    {
        x = random_range(x - shakeRate, x + shakeRate);
        y = random_range(y - shakeRate, y + shakeRate);
    }
    else
    {
        x = origX;
        y = origY;
    }
    
    return timer;
}
