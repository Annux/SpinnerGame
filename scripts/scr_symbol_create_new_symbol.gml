///scr_symbol_create_new_symbol(Deafult State)
var def = argument0;

var obj = instance_create(0,0,obj_symbol);

obj.deafultState = def;
obj.active = false;
obj.canMatch = false;


with(obj)
    {
    image_speed = 0
    
    state = deafultState;
    scr_symbol_get_state_information(state);
    
    status_effect_spins = -1
    show_status = false;
    status_effect = symbol_status_effect.normal;
    scr_symbol_get_status_effect_info(status_effect)
    
    
    active = true;
    fade_alpha = 0;
    fade_alpha_target = 0;
    fade_alpha_smoothing = 4;
    
    burst_scale = 0;  
    burst_scale_target = 0;
    burst_scale_smoothing = 4;
    }
    
return obj;



