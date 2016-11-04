///scr_symbol_get_status_effect_info(status effect)

var status = argument0;

switch (status)
    {
    case symbol_status_effect.normal :
        {
        show_status = false;
        status_effect_sprite = spr_status_null;
        status_stop_on_screen = scr_symbol_stop_on_screen_null;
        }
    break;
    
    case symbol_status_effect.smoke:
        {
        show_status = true;
        status_effect_sprite = spr_status_smoke;
        status_stop_on_screen = scr_symbol_stop_on_screen_smoke;
        }
    break;    
    }





