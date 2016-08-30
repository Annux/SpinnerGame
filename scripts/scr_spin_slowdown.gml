var i = argument0

for(var j = 0; j < symbolsPerColumn; j++)
{
    scr_spinner_move(i, j);
    // decelerate
    if(symbolObject[i, j].vspeed > minSpinSpeed)
    {
        symbolObject[i, j].vspeed *= (spinDecel + spinDecelPrCol*i);
    }
    // if at min speed, STOP
    else
    {
        vspeed = 0;
        colState[i] = 2;
    }
}
