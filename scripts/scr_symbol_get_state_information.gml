///scr_symbol_get_state_information(symbol state)

var state = argument0

switch(state)
    {
    //blue mana
    case symbolState.blue:
    sprite_index = spr_BlueSpinIcon;
    canMatch = true;
    matchAction = scr_symbol_match_blue_mana;
    stop_on_screen = scr_symbol_stop_on_screen_null;
    break;
    
    //red mana
    case symbolState.red:
    sprite_index = spr_RedSpinIcon;
    canMatch = true;
    matchAction = scr_symbol_match_red_mana;
    stop_on_screen = scr_symbol_stop_on_screen_null;
    break;
    
    //green mana
    case symbolState.green:
    sprite_index = spr_GreenSpinIcon;
    canMatch = true;
    matchAction = scr_symbol_match_green_mana;
    stop_on_screen = scr_symbol_stop_on_screen_null;
    break;
    
    //purple mana
    case symbolState.purple:
    sprite_index = spr_PurpleSpinIcon;
    canMatch = true;
    matchAction = scr_symbol_match_purple_mana;
    stop_on_screen = scr_symbol_stop_on_screen_null;
    break;
    
    //wild mana
    case symbolState.wild:
    sprite_index = spr_WildSpinIcon;
    canMatch = true;
    matchAction = scr_symbol_match_null;
    stop_on_screen = scr_symbol_stop_on_screen_null;
    break;
    }

