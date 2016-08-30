// Enabling/Disabling Buttons based on mana cost
if(global.turn = playerNumber)
{
    for(var v = 0; v < global.numSpellButtons; v++)
    {
        var haveEnoughMana = true;
        for(var w = 0; w < global.numManaBars; w++)
        {
            if(global.spellButton[playerNumber, v].spellCost[w] > curMana[w])
            {
                haveEnoughMana = false;
            }
            global.manaBar[playerNumber, w].curMana = curMana[w];
        }
        global.spellButton[playerNumber, v].buttonEnabled = haveEnoughMana;
    }
}

if(TakeDamage > 0)
{
    scr_unit_takedamage();
}
