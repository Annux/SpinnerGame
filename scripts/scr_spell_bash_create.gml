spellName = "Bash";
spellScript = asset_get_index("scr_spell_bash");
spellIcon = spr_bash;

// Setting the actual spellcosts here;
spellCost[manaType.red] = 10;
spellCost[manaType.purple] = 1;

damageVal = 25;

spellEffectDur = .1*room_speed;
