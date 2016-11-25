///scr_symbol_match_mana(turn,symbols,mana type)
var turn = argument0;
var symbols = argument1;
var type = argument2;
var matches = array_length_1d(symbols);

var i = 0;
repeat(matches)
    {
    var value = global.mana_gain[i]
    
    with(symbols[i])
        {
        scr_symbol_set_active(id,false)
        var obj = global.manaBar[global.turn,type]
        var xx = scr_manabar_get_endx(obj)
        if (instance_exists(obj))
            {
            scr_mana_particle_create_new(x,y,xx,obj.y,type,value,value * 60)
            }
        }
    i += 1;
    }
    



