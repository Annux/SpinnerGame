/// activate the spell effects of the button, assuming it's clickable
// the first portion of this script is debug until 'click and drag' becomes the actual activator for spells
// Debug - Debug - Debug //
if(buttonActivated && global.actionsEnabled)
{
    image_index = imgNormal
    buttonActivated = false;
// Debug - Debug - Debug //
    global.actionsEnabled = false; // deactivate action use until this action has been completed
    
    scr_deduct_action()
    script_execute(spellScript); // run the spell-specific script
    // deduct the mana cost from the player's mana pool
    for(var i = 0; i < global.manaTypes; i++)
    {
        global.manaBar[global.turn, i].curMana -= spellCost[i];
    }
}
else if(!global.actionsEnabled)
{
    buttonActivated = false;
    image_index = imgNormal;
}
