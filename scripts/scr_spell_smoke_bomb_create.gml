spellName = "Smoke Bomb";
spellScript = asset_get_index("scr_spell_smoke_bomb");
spellIcon = spr_smoke_bomb;

for(var i = 0; i < global.manaTypes; i++)
{
    spellCost[i] = 0;
}
spellCost[manaType.purple] = 8;
spellCost[manaType.green] = 5;

spellEffectDur = 2 * room_speed;
