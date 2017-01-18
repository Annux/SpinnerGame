spellName = "Shatter";
spellScript = asset_get_index("scr_spell_shatter");
spellIcon = spr_shield;
idle_scale = .4*global.size;
pickup_scale = idle_scale * 3;

for(var i = 0; i < global.manaTypes; i++)
{
    spellCost[i] = 0;
}
spellCost[manaType.purple] = 5;
spellCost[manaType.green] = 5;
spellCost[manaType.red] = 5;

spellEffectDur = 0.75 * room_speed;
