///scr_symbol_match_purple_mana(player turn, matches)

var turn = argument0;
var matches = argument1

var value = global.mana_gain[matches]

show_debug_message("+" + string(value) + " Purple");
global.manaBar[global.turn,manaType.purple].curMana += value;

/*

STAY OUT OF MY SWAMP!

~~Sherk

2001 - 2004

Rip in peice
