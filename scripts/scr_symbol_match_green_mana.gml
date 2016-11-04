///scr_symbol_match_green_mana(player turn, matches)

var turn = argument0;
var matches = argument1

var value = global.mana_gain[matches]

show_debug_message("+" + string(value) + " Greens");
global.manaBar[global.turn,manaType.green].curMana += value;

/*

STAY OUT OF MY SWAMP!

~~Sherk

2001 - 2004

Rip in peice
