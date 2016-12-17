spellName = "Mana Bomb";
spellScript = asset_get_index("scr_spell_manabomb");
spellIcon = spr_manabomb;

scr_dragAndDrop_add_drop_script(spellScript,obj_spinner_machine)

spellCost[manaType.green] = 5;
spellCost[manaType.blue] = 5;
