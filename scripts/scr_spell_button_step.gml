canDrag = buttonEnabled;
if (global.actionActive )
    {
    canDrag = false
    isClicked = false
    }

if (!buttonEnabled)
    {
    isClicked = false
    }
    
if (isClicked)
    {
    scale_target = pickup_scale;
    }
else
    {
    scale_target = idle_scale;
    } 
    
current_scale += (scale_target - current_scale ) / scale_smoothing;
