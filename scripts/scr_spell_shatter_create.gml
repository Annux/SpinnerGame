spellName = "Shatter";
spellScript = asset_get_index("scr_spell_shatter");
spellIcon = spr_shatter;
idle_scale = .25*global.size;
pickup_scale = idle_scale * 3;

current_scale = idle_scale;
scale_target = idle_scale;

for(var i = 0; i < global.manaTypes; i++)
{
    spellCost[i] = 0;
}
spellCost[manaType.red] = 5;
spellCost[manaType.blue] = 3;

spellEffectDur = 0.75 * room_speed;
