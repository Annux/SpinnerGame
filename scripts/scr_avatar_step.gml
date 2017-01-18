if(animTimer > 0)
{
    animTimer--;
    if(animTimer <= 0)
    {
        sprite_index = sprite[animstate.idle];
        animTimer = 0;
    }
}
