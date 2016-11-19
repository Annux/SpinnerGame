var i = argument0;

for(var j = 0; j < symbolsPerColumn; j++)
{
    scr_spinner_move(i, j);
    
    // decelerate
    if(symbolObject[i, j].vspeed > minSpinSpeed && symbolObject[i,j].y < rowPos[j] + rowSeperation/4)
    {
<<<<<<< HEAD
        // stop columns sequencially
=======
>>>>>>> origin/master
        switch(global.turn)
        {
            // start at column 0, go from left to right
            case (1):
                stoppedColumnIndex = i;
                break;
            // start at last column, go from left to right
            case (2):
                stoppedColumnIndex = numberOfColumns - 1 - i
                break;
        }
        // make sure a deceleration value exists for the column index
        if(array_length_1d(spinDecel) >= i)
        {
            desiredDecel = spinDecel[stoppedColumnIndex];
        }
        // otherwise assign a default deceleration rate for the column index
        else
        {
            desiredDecel = spinDecel[0] + spinDecelPrCol*stoppedColumnIndex;      
        }
        // make sure the deceleration rate does not exceed 1 (otherwise the slot machine will start accelerating backwards
        symbolObject[i, j].vspeed *= min(desiredDecel, .999);
    }
    // if at min speed, move to position before stopping
    else
    {
        symbolObject[i, j].vspeed = 25
        if(symbolObject[i, j].y > rowPos[j] + rowSeperation*3/4)
        {
            symbolObject[i, j].vspeed = 0;
            colState[i] = 2;
        }
    }
}
