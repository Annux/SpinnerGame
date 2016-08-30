spellName = "Zap";
spellScript = asset_get_index("scr_spell_zap");

// Defaulting spellcosts to 0
for(var i = 0; i < global.manaTypes; i++)
{
    spellCost[i] = 0;
}
// Setting the actual spellcosts here;
spellCost[manaType.red] = 1;
spellCost[manaType.blue] = 5;

spellEffectDur = .75*room_speed;
