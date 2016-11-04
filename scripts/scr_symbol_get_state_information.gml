///scr_symbol_get_state_information(symbol state)

var state = argument0

switch(state)
    {
    //blue mana
    case symbolState.blue:
    sprite_index = spr_BlueSpinIcon;
    canMatch = true;
    stop_on_screen = scr_symbol_stop_on_screen_null;
    break;
    
    //red mana
    case symbolState.red:
    sprite_index = spr_RedSpinIcon;
    canMatch = true;
    stop_on_screen = scr_symbol_stop_on_screen_null;
    break;
    
    //green mana
    case symbolState.green:
    sprite_index = spr_GreenSpinIcon;
    canMatch = true;
    stop_on_screen = scr_symbol_stop_on_screen_null;
    break;
    
    //purple mana
    case symbolState.purple:
    sprite_index = spr_PurpleSpinIcon;
    canMatch = true;
    stop_on_screen = scr_symbol_stop_on_screen_null;
    break;
    
    //wild mana
    case symbolState.wild:
    sprite_index = spr_WildSpinIcon;
    canMatch = true;
    stop_on_screen = scr_symbol_stop_on_screen_null;
    break;
    }

