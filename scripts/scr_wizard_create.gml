// Character Setup
myChar.sprite_index = spr_Wizard;

// HUD Setup
myHUD.healthBar.maxHP = 75
myHUD.manaBar[manaType.blue].curMana = 30;
myHUD.manaBar[manaType.purple].curMana = 25;
myHUD.manaBar[manaType.green].curMana = 15;
myHUD.manaBar[manaType.red].curMana = 10;

// Spell Setup

mySpell[0] = spell.fireball;
mySpell[1] = spell.freeze;
mySpell[2] = spell.manabomb;
mySpell[3] = spell.heal;

for(var i = 0; i < global.numSpellButtons; i++)
{
    scr_spell_button_initialize(myBanner.spellButton[i], mySpell[i]) // arg[0] = the button to be initialized, arg[1] = the spelltype
}
