///scr_symbol_step()

fade_alpha += (fade_alpha_target - fade_alpha) / fade_alpha_smoothing;
burst_scale += (burst_scale_target - burst_scale) / burst_scale_smoothing;
  
    
if (!active)
    {
    fade_alpha_target = 0.7;    
    canMatch = false;
    }
else
    {
    fade_alpha_target = 0;
    }
    
