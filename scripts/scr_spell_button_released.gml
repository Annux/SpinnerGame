/// activate the spell effects of the button, assuming it's clickable
// the first portion of this script is debug until 'click and drag' becomes the actual activator for spells
// Debug - Debug - Debug //
if(buttonActivated)
{
    image_index = imgNormal
    buttonActivated = false;
    buttonSelected = false;
// Debug - Debug - Debug //
    
    script_execute(spellScript); // run the spell-specific script
    // deduct the mana cost from the player's mana pool
    for(var i = 0; i < global.manaTypes; i++)
    {
        global.manaBar[global.turn, i].curMana -= spellCost[i];
    }
    global.actionsRemaining -= 1;
}
