/// creates the banner, which manages the players spells
{
    playerNumber = scr_find_my_player();

    // CREATE spellButton[] array
    spellButtonHeight = sprite_get_height(spr_spellbutton) * global.sizeH;
    topMargin = y + 140 * global.sizeH + spellButtonHeight/2;
    buttonSpacing = 35 * global.sizeH + spellButtonHeight;
    
    for(var i = 0; i < global.numSpellButtons; i++)
    {
        spellButton[i] = instance_create(x, topMargin + (buttonSpacing * i), obj_spell_button);
        global.spellButton[playerNumber, i] = spellButton[i];
    }
}
