///scr_symbol_create_new_symbol(Deafult State)
var def = argument0;

var obj = instance_create(0,0,obj_symbol);

obj.deafultState = def;
obj.active = false;
obj.canMatch = false;


with(obj)
    {
    
    state = deafultState;
    scr_symbol_get_state_information(state);
    
    }
    
return obj;



