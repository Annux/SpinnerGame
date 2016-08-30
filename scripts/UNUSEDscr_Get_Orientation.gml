// WHEN: Calls once at the start to check the orientation
// WHAT: Sets the initial orientation

// COMMENTED: Currently the game does not flip orientations
/*
{
    var newOrient;
    newOrient = scr_Check_Dimensions();
    scr_Update_Dimensions(newOrient);
    global.currentOrient = newOrient;
}
