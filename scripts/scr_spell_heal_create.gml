spellName = "Heal";
spellScript = asset_get_index("scr_spell_heal");

for(var i = 0; i < global.manaTypes; i++)
{
    spellCost[i] = 0;
}
spellCost[manaType.yellow] = 5;
spellCost[manaType.blue] = 2;
spellCost[manaType.green] = 2;
