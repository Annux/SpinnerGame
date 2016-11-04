// CHECKING MANA & BUTTONS
for(var spellindex = 0; spellindex < global.numSpellButtons; spellindex++)
{
    // Enabling/Disabling Buttons based on mana cost
    if(global.turn == playerNumber)
    {
        // Checking if there is sufficient mana
        var haveEnoughMana = true;
        for(var manaindex = 0; manaindex < global.numManaBars; manaindex++)
        {
            if(myBanner.spellButton[spellindex].spellCost[manaindex] > myHUD.manaBar[manaindex].curMana)
            {
                haveEnoughMana = false;
            }
        }
        myBanner.spellButton[spellindex].buttonEnabled = haveEnoughMana;
    }
    else 
    {
        myBanner.spellButton[spellindex].buttonEnabled = false;
    }
}