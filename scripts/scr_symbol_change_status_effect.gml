///scr_symbol_change_status_effect(symbol, status effect)

var obj = argument0;
var status = argument1;

obj.status_effect = status;

with (obj)
    {
    scr_symbol_get_status_effect_info(status_effect);
    }

