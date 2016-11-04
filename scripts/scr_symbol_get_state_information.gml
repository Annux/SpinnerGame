///scr_symbol_get_state_information(symbol state)

var state = argument0

switch(state)
    {
    case symbolState.blue:
    sprite_index = spr_BlueSpinIcon;
    canMatch = true;
    break;
    
    case symbolState.red:
    sprite_index = spr_RedSpinIcon;
    canMatch = true;
    break;
    
    case symbolState.green:
    sprite_index = spr_GreenSpinIcon;
    canMatch = true;
    break;
    
    case symbolState.purple:
    sprite_index = spr_PurpleSpinIcon;
    canMatch = true;
    break;
    
    case symbolState.wild:
    sprite_index = spr_WildSpinIcon;
    canMatch = true;
    break;
    }

