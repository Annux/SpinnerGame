var i = argument0

for(var j = 0; j < symbolsPerColumn; j++)
{
    // decelerate
    if(symbolObject[i, j].vspeed > minSpinSpeed)
    {
        symbolObject[i, j].vspeed *= (spinDecel + spinDecelPrCol*i);
    }
    // if at max speed, STOP
    else
    {
        // assign index 0 to the the symbol thats closest to position 0
        if(symbolObject[i, j] = instance_nearest(colPos[i], rowPos[0], obj_symbol_parent))
        {
            newFirstIndex[i] = j;
        }
        vspeed = 0;
        colState[i] = 2;
    }
    
    scr_spinner_move(i, j);
}
