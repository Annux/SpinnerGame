///scr_symbol_match_blue_mana(player turn,symbols)

var turn = argument0;
var symbols = argument1;
var type = manaType.blue
var end_delay = 15;
var matches = array_length_1d(symbols);

show_debug_message(string(matches) + " Blues");

scr_symbol_match_mana(turn,symbols,type)

return end_delay;


