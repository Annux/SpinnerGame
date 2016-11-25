///scr_symbol_step()

fade_alpha += (fade_alpha_target - fade_alpha) / fade_alpha_smoothing;
  
    
if (!active)
    {
    fade_alpha_target = 1;
    canMatch = false;
    }
else
    {
    fade_alpha_target = 0;
    }
    
