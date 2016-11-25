spellName = "Shatter";
spellScript = asset_get_index("scr_spell_shatter");
spellIcon = spr_shatter;

for(var i = 0; i < global.manaTypes; i++)
{
    spellCost[i] = 0;
}
spellCost[manaType.red] = 1;
spellCost[manaType.blue] = 1;

spellEffectDur = 0.75 * room_speed;
