if(instance_number(object_index) <= 1)
{
    playerNumber = 1;
    scaleDirection = 1;
}
else
{
    playerNumber = 2;
    scaleDirection = -1;
    sprite_index = spr_healthbar_flip
}

curHealth = 100;
maxHealth = 100;
height = sprite_get_height(spr_healthbar);
width = sprite_get_width(spr_healthbar);
