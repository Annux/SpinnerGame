// WHEN: Run by scr_spinner_step. Plays every frame that the slot is in the 0 state (not spinning)
// WHAT: This script checks for input and moves the slot reels if the player clicks & holds the spinner ->
//        -> if they drag far enough, it begins the spinning process
if (position_meeting(mouse_x,mouse_y,self) && mouse_check_button_pressed(mb_left) && !grabbedSpinner) // If the player grabs the slot, they control it
{
    grabbedSpinner = true;
    inPosition = false;
    yOffset = y - mouse_y; // the offset position of where the player clicked
    prevMouseY = origMouseY;
    origMouseY = mouse_y;
    
    var closestColDist = room_width;
    closestCol = 0;
    for(var i = 0; i < numberOfColumns; i++)
    {
        if(closestColDist > abs(mouse_x - colPos[i]))
        {
            closestColDist = abs(mouse_x - colPos[i])
            closestCol = i;
        }
    }
    show_debug_message(string(closestCol) + " is the closest column");
}
else if(!grabbedSpinner && !inPosition) // reset the slots if the player lets go without spinning
{
    scr_spinner_reset(); // resets the spinner gradually via gyro
}

////////////////////////////////////////
// -------- HOLDING & DRAGGING -------//
////////////////////////////////////////
// while the player is holding/dragging the spinner
if(grabbedSpinner && !global.actionActive )
{
    var distanceFlicked = mouse_y - prevMouseY;
    // BEGINNING THE 'SPINNING' STATE //
    if (mouse_check_button(mb_left) ) // if they let go, reset to middle
    {
        if(distanceFlicked > startSpinSpeed)
        {
            scr_spinner_begin_spinning(distanceFlicked);
            grabbedSpinner = false;
        }
    
    }
    if (mouse_check_button_released(mb_left))
        {
        grabbedSpinner = false;
        prevMouseY = y
        }
    // DRAGGING TOO FAR UP //
    else if (mouse_y + yOffset < topLimit) 
    {
        grabbedSpinner = false;
    }
    // DRAGGING //
    else if (mouse_y < bottomLimit)
    {
        for(var i = 0; i < numberOfColumns; i++)
        {
            for(var j = 0; j < symbolsPerColumn; j++)
            {
                var distanceToClosestCol = abs(closestCol - i) + 1;
                symbolObject[i, j].y = rowPos[j] + (mouse_y - origMouseY) / (distanceToClosestCol * columnDrag);
                prevMouseY = mouse_y;
                scr_spinner_move(i, j);
            }
        }
    }
}
