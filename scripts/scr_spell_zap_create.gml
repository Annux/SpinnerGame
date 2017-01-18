spellName = "Zap";
spellScript = asset_get_index("scr_spell_zap");
spellIcon = spr_zap;

// Setting the spellcosts;
spellCost[manaType.red] = 1;
spellCost[manaType.blue] = 5;

damageVal = 10;

spellEffectDur = .75*room_speed;
