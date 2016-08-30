// WHEN: Run by scr_spinner_step. Plays every frame that the slot is in the 0 state (not spinning)
// WHAT: This script checks for input and moves the slot reels if the player clicks & holds the spinner ->
//        -> if they drag far enough, it begins the spinning process
if (position_meeting(mouse_x,mouse_y,self) && mouse_check_button_pressed(mb_left) && !grabbedSpinner) // If the player grabs the slot, they control it
{
    grabbedSpinner = true;
    inPosition = false;
    yOffset = y - mouse_y; // the offset position of where the player clicked
    origMouseY = mouse_y;
    /*// turn off scatters if they're visible
    if(neutralsAreVisible)
    {
        scr_deactivate_neutrals();
        neutralsAreVisible = false;
    }*/
}
else if(!grabbedSpinner && !inPosition) // reset the slots if the player lets go without spinning
{
    scr_spinner_reset(); // resets the spinner gradually via gyro
}

////////////////////////////////////////
// -------- HOLDING & DRAGGING -------//
////////////////////////////////////////
// while the player is holding/dragging the spinner
if(grabbedSpinner)
{
    if (mouse_y + yOffset < topLimit) // if they drag too far up, reset to middle
        || (mouse_check_button_released(mb_left)) // if they let go, reset to middle
    {
        grabbedSpinner = false;
    }
    // if they are within the spinner area, move the symbols based on the mouse/finger position
    else if (mouse_y + yOffset < bottomLimit)
    {
        for(var i = 0; i < numberOfColumns; i++)
        {
            for(var j = 0; j < symbolsPerColumn; j++)
            {
                symbolObject[i, j].y = rowPos[j] + (mouse_y - origMouseY);
                prevMouseY = mouse_y - origMouseY;
                scr_spinner_move(i, j);
            }
        }
    }
    // if they drag too far down, begin the spin
    else if (mouse_y + yOffset > bottomLimit)
    {
        slotState = 1; // SLOT STATE 1 - SPINNING //
        for(var i = 0; i < numberOfColumns; i++)
        {
            colState[i] = 0;
            for(var j = 0; j < symbolsPerColumn; j++)
            {
                symbolObject[i, j].vspeed = initSpinSpeed;
            }
        }
        alarm[0] = spinDuration*room_speed;  // ALARM FOR SLOT STATE 2 - STOPPING//
        grabbedSpinner = false;
        global.actionsRemaining -= 1;
    }
}
