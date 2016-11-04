spellName = "Mana Bomb";
spellScript = asset_get_index("scr_spell_manabomb");

for(var i = 0; i < global.manaTypes; i++)
{
    spellCost[i] = 0;
}
spellCost[manaType.green] = 5;
spellCost[manaType.blue] = 5;
