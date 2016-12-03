///scr_symbol_match_blue_mana(player turn,symbols)

var turn = argument0;
var symbols = argument1;
var type = manaType.blue
var end_delay = 15;
var matches = array_length_1d(symbols);

show_debug_message(string(matches) + " Blues");

var total_x = 0;
var i = 0;
var value = 0;
repeat(matches)
    {
    value += global.mana_gain[i];
   
    total_x += symbols[i].x;
    ++i
    }
    
var xx = total_x / matches
var yy =  symbols[0].y
scr_mana_gain_text_create_new(xx,yy,value,1 + (matches * 0.5),global.ManaColor[type])

scr_symbol_match_mana(turn,symbols,type)

return end_delay;


