spellName = "Bash";
spellScript = asset_get_index("scr_spell_bash");
spellIcon = spr_swordstrike;
idle_scale = .4*global.size;
pickup_scale = idle_scale * 3;

current_scale = idle_scale;
scale_target = idle_scale;

// Setting the actual spellcosts here;
spellCost[manaType.red] = 20;
spellCost[manaType.purple] = 3;

damageVal = 25;

spellEffectDur = .1*room_speed;
