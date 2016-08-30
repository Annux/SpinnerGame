var i = argument0;

//if the symbols are in position, stop.
if(symbolObject[i, newFirstIndex[i]].y > rowPos[0]-.1 && symbolObject[i, newFirstIndex[i]].y < rowPos[0]+.1
 && symbolObject[i, newFirstIndex[i]].vspeed > -1 && symbolObject[i, newFirstIndex[i]].vspeed < 1)
{
    colState[i] = 3;
    exit;
}
// if the symbols are above their position, move them down
if(symbolObject[i, newFirstIndex[i]].y < rowPos[0])
{
    var distanceFromCenter = (rowPos[0] - symbolObject[i, newFirstIndex[i]].y); 
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
else if(symbolObject[i, newFirstIndex[i]].y > rowPos[0])
{
    var distanceFromCenter = (symbolObject[i, newFirstIndex[i]].y - rowPos[0]);
    for(var j = 0; j < symbolsPerColumn; j++)
    {
        symbolObject[i, j].vspeed -= slotGravity*distanceFromCenter;
        if(symbolObject[i, j].vspeed > 0)
        {
            symbolObject[i, j].vspeed*=gravityDecayRate;
        }
        
        scr_spinner_move(i, j);
    }
}
