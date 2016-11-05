///scr_symbol_on_spin_activate

if (status_effect_spins == 0)
    {
    scr_symbol_change_status_effect(id,symbol_status_effect.normal,-1 )
    }
    
if (status_effect_spins > 0)
    {   
    status_effect_spins -=1
    }
