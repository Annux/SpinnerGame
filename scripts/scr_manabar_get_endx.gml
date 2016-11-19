///scr_manabar_get_endx(mana bar id)
//gets the x position of the mana bar reletive to the fill of the bar
obj = argument0;
with (obj)
    {
    if(playerNumber == 1)
        {
        return x + ((width / maxMana) * curMana);
        }
    else
        {
        return x - ((width / maxMana) * curMana);
        }
    }
