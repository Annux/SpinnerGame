if(global.turn == 1)
{
    if (global.healthBar[1].curHealth + 10 <= global.player[1].maxHP) //Add only if health isn't max
    {
        global.player[1].curHP += 10;
        global.healthBar[1].curHealth += 10;
    }
    else //If you add more than max Health, keep at max health
    {
        global.player[1].curHP = global.player[1].maxHP;
        global.healthBar[1].curHealth = global.player[1].maxHP;
    }
}
else if(global.turn == 2)
{
    if (global.healthBar[2].curHealth + 10 <= global.player[1].maxHP) //Add only if health isn't max
    {
        global.player[2].curHP += 10;
        global.healthBar[2].curHealth += 10;
    }
    else //If you add more than max Health, keep at max health
    {
        global.player[2].curHP = global.player[1].maxHP;
        global.healthBar[2].curHealth = global.player[1].maxHP;
    }
}

/*/Dear Dustin,
    Is this what we've become?
                Love, Snow./*/
                
/*/Dear Snow,
    I changed this script BROAH
                MUCH love, Doostin/*/
