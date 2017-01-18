// Character Setup
myAvatar.sprite_index = spr_Thief;
myAvatar.sprite[animstate.idle] = spr_Wizard_idle;
myAvatar.sprite[animstate.damaged] = spr_Wizard_damage;
myAvatar.sprite[animstate.healed] = spr_Wizard_heal;
myAvatar.sprite[animstate.won] = spr_Wizard_win;

// HUD Setup
myHUD.healthBar.maxHP = 100
myHUD.manaBar[manaType.purple].curMana = 30;
myHUD.manaBar[manaType.red].curMana    = 25;
myHUD.manaBar[manaType.blue].curMana   = 15;
myHUD.manaBar[manaType.green].curMana  = 10;

// Spell Setup
mySpell[0] = spell.swordstrike
mySpell[1] = spell.bash
mySpell[2] = spell.smoke_bomb;
mySpell[3] = spell.shatter

for(var i = 0; i < global.numSpellButtons; i++)
{
    scr_spell_button_initialize(myBanner.spellButton[i], mySpell[i]) // arg[0] = the button to be initialized, arg[1] = the spelltype
}
