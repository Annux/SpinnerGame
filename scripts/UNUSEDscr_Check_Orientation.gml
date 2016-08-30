// WHEN: Called every step by the object that controls screen layout
// WHAT: Checks to see if the orientation of the screen has changed, and resets orientation if it does

// COMMENTED: Currently the game does not flip orientations
/*
{
    if (checkStep == global.checkSpeed) // limits the checker for orientation to improve performance
    {
        checkStep = 0;
        var newOrient = scr_Check_Dimensions();
    
        if (newOrient != global.currentOrient)
        {
            global.buttonsOn = false; // disables buttons temporarily
            scr_Update_Dimensions(newOrient);
            global.currentOrient = newOrient;
            
            scr_Reset_Orientation(currentRoom);
        }
    }
    checkStep += 1;
}
