///scr_symbol_match_purple_mana(player turn,symbols)

var turn = argument0;
var symbols = argument1;
var type = manaType.purple
var end_delay = 30;
var matches = array_length_1d(symbols);

show_debug_message(string(matches) + " Purples");

scr_symbol_match_mana(turn,symbols,type)

return end_delay;

