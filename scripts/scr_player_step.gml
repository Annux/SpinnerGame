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

// Check if Shaking

if(shakeTimer > 0)
{
    shakeTimer = scr_shake_object(self, origX, origY, 5, shakeTimer);
    myChar.x = x;
    myChar.y = y;
    //scr_shake_object(myChar, origX, origY, 5, shakeTimer);
    if(shakeTimer <= 0)
    {
        myChar.image_index = myChar.idleImg;
    }
}
