/// creates the banner, which manages the players spells
{
    if(object_index = obj_banner_blue)
    {
        playerNumber = 1;
    }
    else
    {
        playerNumber = 2;
        show_debug_message("I am player 2!");
    }

    // CREATE spellButton[] array
    spellButtonHeight = sprite_get_height(spr_spellbutton) * global.sizeH;
    topMargin = y + 147 * global.sizeH + spellButtonHeight/2;
    buttonSpacing = 20 * global.sizeH + spellButtonHeight;
    
    for(var i = 0; i < global.numSpellButtons; i++)
    {
        spellButton[i] = instance_create(x, topMargin + (buttonSpacing * i), obj_spell_button);
        global.spellButton[playerNumber, i] = spellButton[i];
        show_debug_message("player " + string(playerNumber) + " button " + string(i));
    }
}
