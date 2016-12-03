
var bombs = 15;
var overload = 0

while (bombs > 0)
    {
    var obj = scr_return_random_symbol_on_screen()
    if (obj.status_effect != symbol_status_effect.smoke)   
        {
        scr_symbol_change_status_effect(obj,symbol_status_effect.smoke,3)
        bombs -= 1;
        }
        
    overload += 1;
    if (overload > 50)
        {
        break
        }
    }

scr_end_action()
