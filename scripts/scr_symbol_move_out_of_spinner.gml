///scr_symbol_move_out_of_spinner(Symbol id,reserve list,reset state?)

var obj = argument0;
var list = argument1
var reset = argument2;

obj.active = false;
obj.x = 0
obj.y = 0
ds_list_add(list, obj)
if (reset)
    {
    obj.state = obj.deafultState;
    }





