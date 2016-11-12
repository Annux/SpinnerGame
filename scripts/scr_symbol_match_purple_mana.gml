///scr_symbol_match_purple_mana(player turn, matches,symbols)

var turn = argument0;
var matches = argument1
var symbols = argument2
var type = manaType.purple

show_debug_message(string(matches) + " Purples");

var i = 0;
repeat(array_length_1d(symbols))
    {
    var value = global.mana_gain[i]
    
    with(symbols[i])
        {
        var obj = global.manaBar[global.turn,type]
        if (instance_exists(obj))
            {
            scr_mana_partial_create_new(x,y,obj.x,obj.y,type,value)
            }
        }
    i += 1;
    }
