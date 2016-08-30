if(buttonPressed)
{
    if(isSpellButton)
    {
        script_execute(spellScript); // run the spell-specific script
        
        // deduct the mana cost from their mana pool
        for(var i = 0; i < global.manaTypes; i++)
        {
            global.player[global.turn].curMana[i] -= spellCost[i];
        }
        
        // press the button
        buttonPressed = false;
        global.actionsRemaining -= 1;
        if(global.actionsRemaining <= 0)
        {
            scr_switch_turns(global.turn);
        }
    }
}
