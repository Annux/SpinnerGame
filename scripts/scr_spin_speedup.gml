var i = argument0;

// move each row, hide/move the stuff that lands outside of the main spinner area
for(var j = 0; j < symbolsPerColumn; j++)
{
    scr_spinner_move(i, j);
    // Accelerate the spinner up to max speed
    if(symbolObject[i, j].vspeed < maxSpinSpeed)
    {
        symbolObject[i, j].vspeed += spinAccel;
    }
    else
    {
        symbolObject[i, j].vspeed = maxSpinSpeed;
    }
}
