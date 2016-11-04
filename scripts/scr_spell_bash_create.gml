spellName = "Bash";
spellScript = asset_get_index("scr_spell_bash");

// Defaulting spellcosts to 0
for(var i = 0; i < global.manaTypes; i++)
{
    spellCost[i] = 0;
}
// Setting the actual spellcosts here;
spellCost[manaType.red] = 5;
spellCost[manaType.purple] = 1;

spellEffectDur = .1*room_speed;
