///scr_symbol_change_state(Symbol id, new state)

var obj = argument0;
var newState = argument1;

if (obj.state != newState)
<<<<<<< Updated upstream
{
    state = newState
    scr_symbol_get_state_information(state)
}
=======
    {
    obj.state = newState
    with(obj)
        {
        scr_symbol_get_state_information(state)
        }
    }
>>>>>>> Stashed changes
