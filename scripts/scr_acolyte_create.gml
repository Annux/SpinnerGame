// Character Setup
myAvatar.sprite_index = spr_Acolyte;
myAvatar.sprite[animstate.idle] = spr_Warrior_idle;
myAvatar.sprite[animstate.damaged] = spr_Warrior_damage;
myAvatar.sprite[animstate.healed] = spr_Warrior_heal;
myAvatar.sprite[animstate.won] = spr_Warrior_win;

// HUD Setup
myHUD.healthBar.maxHP = 150
myHUD.manaBar[manaType.green].curMana  = 30;
myHUD.manaBar[manaType.blue].curMana   = 25;
myHUD.manaBar[manaType.red].curMana    = 15;
myHUD.manaBar[manaType.purple].curMana = 10;

// Spell Setup
mySpell[0] = spell.smoke_bomb;
mySpell[1] = spell.bash;
mySpell[2] = spell.shield;
mySpell[3] = spell.shatter;

for(var i = 0; i < global.numSpellButtons; i++)
{
    scr_spell_button_initialize(myBanner.spellButton[i], mySpell[i]) // arg[0] = the button to be initialized, arg[1] = the spelltype
}
