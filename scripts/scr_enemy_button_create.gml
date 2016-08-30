// sprites
normalSprite = 0;
selectedSprite = 1;
pressedSprite = 2;
disabledSprite = 3;

// logic variabes
image_index = 0
image_speed = 0
buttonActive = false
buttonPressed = false
buttonEnabled = true

//buttonSnd = snd_button1;

if(isSpellButton)
{
    buttonEnabled = false
    // TODO: SET SPELLS IN PLAYER CLASS //// kinda done, needs to be different for both players (enemyClass is missing)

    spellType = spell.zap;
    
    switch(spellType)
    {
        case (spell.bash):
            scr_spell_bash_create();
            break;
        case (spell.heal):
            scr_spell_heal_create();
            break;
        case (spell.shatter):
            scr_spell_shatter_create();
            break;
        case (spell.manabomb):
            scr_spell_manabomb_create();
            break;
        case (spell.zap):
            scr_spell_zap_create();
            break;
    }
}
else
{
    spellName = "";
}
