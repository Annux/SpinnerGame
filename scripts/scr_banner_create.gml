{
    if(instance_number(object_index) <= 1)
    {
        playerNumber = 1;
        buttonObject = obj_player_spell_button;
    }
    else
    {
        playerNumber = 2;
        buttonObject = obj_enemy_spell_button;
    }

    // CREATE spellButton[] array
    spellButtonHeight = sprite_get_height(spr_spellbutton) * global.sizeH;
    topMargin = y + 147 * global.sizeH + spellButtonHeight/2;
    buttonSpacing = 20 * global.sizeH + spellButtonHeight;
    
    for(var i = 0; i < global.numSpellButtons; i++)
    {
        spellButton[i] = instance_create(x, topMargin + (buttonSpacing * i), buttonObject);
        global.spellButton[playerNumber, i] = spellButton[i];
    }
}
