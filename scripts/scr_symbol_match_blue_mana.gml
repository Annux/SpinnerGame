///scr_symbol_match_blue_mana(player turn, matches)

var turn = argument0;
var matches = argument1

var value = global.mana_gain[matches]

show_debug_message("+" + string(value) + " blues");
global.manaBar[global.turn,manaType.blue].curMana += value;



