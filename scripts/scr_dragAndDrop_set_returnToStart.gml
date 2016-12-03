///scr_dragAndDrop_set_returnToStart(return, return smoothing)
returnToStart = argument0
if (argument1 != 0)
    {
    movementSmoothing = argument1
    }
else
    {
    show_error("A Drag and drop object cannot have a movement smoothing value of 0 as it is divided by. If no smoothing is wanted, change the value to 1",false)
    movementSmoothing = 1;
    }
