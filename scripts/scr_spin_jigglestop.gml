var i = argument0;

inPosition = true
var i = argument0;
for(var j = 0; j < symbolsPerColumn; j++)
{
    // check if out of position
    if(symbolObject[i,j].y > rowPos[j]+.1 || symbolObject[i,j].y < rowPos[j]-.1) // && symbolObject[i,j].vspeed > slotGravity && symbolObject[i,j].vspeed < -slotGravity)
    {
        // if out of position, move to correct position
        inPosition = false;
        if(symbolObject[i, j].y < rowPos[j])
        {
             var distanceFromCenter = (rowPos[j] - symbolObject[i, j].y);
             symbolObject[i, j].vspeed += slotGravity*distanceFromCenter;
             if(symbolObject[i, j].vspeed > 0)
             {
                 symbolObject[i, j].vspeed*=gravityDecayRate
             }
        }
        else if(symbolObject[i, j].y > rowPos[j])
        {
             var distanceFromCenter = (symbolObject[i, j].y - rowPos[j]);
             symbolObject[i, j].vspeed -= slotGravity*distanceFromCenter;
             if(symbolObject[i, j].vspeed < 0)
             {
                 symbolObject[i, j].vspeed*=gravityDecayRate
             }
        }
        scr_spinner_move(i, j);
    }
    // otherwise, stop it from moving
}
if(inPosition)
{
    colState[i] = 3;
    exit;
}

/*//if the symbols are in position, stop.
if(symbolObject[i, 0].y > rowPos[0]-.1 && symbolObject[i, 0].y < rowPos[0]+.1
    && symbolObject[i, 0].vspeed > -1 && symbolObject[i, 0].vspeed < 1)
{
    colState[i] = 3;
    exit;
}

// if the symbols are above their position, move them down
if(symbolObject[i, 0].y < rowPos[0])
{
    var distanceFromCenter = (rowPos[0] - symbolObject[i, 0].y); 
    for(var j = 0; j < symbolsPerColumn; j++)
    {
        symbolObject[i, j].vspeed += slotGravity*distanceFromCenter;
        if(symbolObject[i, j].vspeed < 0)
        {
            symbolObject[i, j].vspeed*=gravityDecayRate
        }
        scr_spinner_move(i, j);
    }
}
// if the symbols are below their position, move them up
else if(symbolObject[i, 0].y > rowPos[0])
{
    var distanceFromCenter = (symbolObject[i, 0].y - rowPos[0]);
    for(var j = 0; j < symbolsPerColumn; j++)
    {
        symbolObject[i, j].vspeed -= slotGravity*distanceFromCenter;
        if(symbolObject[i, j].vspeed > 0)
        {
            symbolObject[i, j].vspeed*=gravityDecayRate;
        }
        scr_spinner_move(i, j);
    }
}*/
