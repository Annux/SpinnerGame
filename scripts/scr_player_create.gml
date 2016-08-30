// BASE STATS //
playerNumber = 1;
maxHP = 100;
curHP = maxHP;

// CURRENTLY UNUSED STATS //
/*level = 1;
playerName = Arthur;
curXP = 0;
maxXP = 0;
curXP = 0;
maxXP = 0;
rateOfXPIncrease = 2; // multiplier 
rateOfXPIncrease = 2; // multiplier
*/

// CLASS SETUP //
switch(global.playerClass)
{
    case (class.warrior):
        scr_warrior_create();
        break;
    case (class.thief):
        scr_thief_create();
        break;
    case (class.acolyte):
        scr_acolyte_create();
        break;
    case (class.wizard):
        scr_wizard_create();
        break;
}

for(var n = 0; n < global.manaTypes; n++)
{
    curMana[n] = 10;
    maxMana[n] = 40;
}

TakeDamage = 0;

