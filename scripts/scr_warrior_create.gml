// Character Setup
myChar.sprite_index = spr_Warrior;
myChar.idleImg = 0;
myChar.damageImg = 1;

// HUD Setup
myHUD.healthBar.maxHP = 125
myHUD.manaBar[manaType.red].curMana = 30; // agg
myHUD.manaBar[manaType.green].curMana = 25; // def
myHUD.manaBar[manaType.purple].curMana = 15; // agg control
myHUD.manaBar[manaType.blue].curMana = 10; // def control

// Spell Setup
mySpell[0] = spell.smoke_bomb;
mySpell[1] = spell.bash;
mySpell[2] = spell.shield;
mySpell[3] = spell.shatter;

for(var i = 0; i < global.numSpellButtons; i++)
{
    scr_spell_button_initialize(myBanner.spellButton[i], mySpell[i]) // arg[0] = the button to be initialized, arg[1] = the spelltype
}
