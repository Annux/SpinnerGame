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
    scale_target = pickup_scale
    }
else
    {
    scale_target = 1
    } 
    
scale += (scale_target - scale ) / scale_smoothing;
