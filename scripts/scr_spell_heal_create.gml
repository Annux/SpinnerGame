spellName = "Heal";
spellScript = asset_get_index("scr_spell_heal")
spellIcon = spr_heal;

scr_dragAndDrop_add_drop_script(spellScript,obj_spinner_machine)

spellCost[manaType.purple] = 5;
spellCost[manaType.blue] = 2;
spellCost[manaType.green] = 2;
