///scr_mana_add(mana type,amount)
var type = argument0;
var amount = argument1;
manaBar = global.manaBar[global.turn,type];

manaBar.curMana += amount;
clamp(manaBar.curMana, 0, manaBar.maxMana);
