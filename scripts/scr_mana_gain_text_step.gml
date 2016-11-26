y -= 2
bobble += bobble_speed;
if (bobble > pi*2)
    {
    bobble -= pi*2;
    }
    
bobble_amount += (bobble_amount_target - bobble_amount) / bobble_amount_smoothing;

if (!active)
    {
    image_alpha -= 0.1;
    }
if (image_alpha <= 0)
    {
    instance_destroy();
    }
