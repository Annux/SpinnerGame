/// activate the spell effects of the button, assuming it's clickable
// the first portion of this script is debug until 'click and drag' becomes the actual activator for spells
    global.actionsEnabled = false; // deactivate action use until this action has been completed
    scr_deduct_action()
    // deduct the mana cost from the player's mana pool
    for(var i = 0; i < global.manaTypes; i++)
    {
        scr_mana_add(i,-spellCost[i])
    }
