///scr_symbol_create_new_symbol(Deafult State)
var def = argument0;

var obj = instance_create(0,0,obj_symbol);

obj.deafultState = def;
obj.active = false;
obj.canMatch = false;


with(obj)
    {
    image_speed = 0.1
    
    state = deafultState;
    scr_symbol_get_state_information(state);
    
    status_effect_spins = -1
    show_status = false;
    status_effect = symbol_status_effect.normal;
    scr_symbol_get_status_effect_info(status_effect)
      
    }
    
return obj;



