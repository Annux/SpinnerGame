var i = argument0;

// move each row, hide/move the stuff that lands outside of the main spinner area
for(var j = 0; j < symbolsPerColumn; j++)
{
    scr_spinner_move(i, j);
    // Accelerate the spinner up to max speed
    symbolObject[i, j].vspeed = min(symbolObject[i, j].vspeed + spinAccel, maxSpinSpeed);
}

