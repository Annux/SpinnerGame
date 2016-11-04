/// creates the HUD, which manages health & manabars
{    
    if(instance_number(object_index) <= 1)
    {
        playerNumber = 1;
        scaleDirection = 1;
        show_debug_message("Player 1 HUD X is " + string(x));
    }
    else
    {
        playerNumber = 2;
        scaleDirection = -1;
        sprite_index = spr_statbars_flip
        show_debug_message("Player 2 HUD X is " + string(x));
    }

    // CREATE the healthbars
    healthbarHeight  = sprite_get_height(spr_healthbar) * global.sizeH;
    topMargin        = y - (sprite_height / 2) + (21 * global.sizeH)  + healthbarHeight/2;
    healthbarMargin  = topMargin + (healthbarHeight / 2) + (8 * global.sizeH);
    manabarHeight    = round(40 * global.sizeH);
    manabarSpacing   = manabarHeight + 1;
    
    healthBar = instance_create(x, topMargin, obj_health_bar);
    global.healthBar[playerNumber] = healthBar;
    for(var i = 0; i < global.numManaBars; i++)
    {
        manaBar[i] = instance_create(x, healthbarMargin + manabarHeight / 2 + manabarSpacing * i, obj_mana_bar)
        global.manaBar[playerNumber, i] = manaBar[i];
        manaBar[i].color = global.ManaColor[i]
    }
}
