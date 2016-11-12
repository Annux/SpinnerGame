var i = argument0;

inPosition = true
var i = argument0;
for(var j = 0; j < symbolsPerColumn; j++)
{
    // check if out of position
    if(symbolObject[i,j].y > rowPos[j]+.1 || symbolObject[i,j].y < rowPos[j]-.1)
    {
        // if out of position, move to correct position
        inPosition = false;
        if(symbolObject[i, j].y < rowPos[j])
        {
             var distanceFromCenter = (rowPos[j] - symbolObject[i, j].y);
             symbolObject[i, j].vspeed += spinGravity*distanceFromCenter;
             if(symbolObject[i, j].vspeed > 0)
             {
                 symbolObject[i, j].vspeed*=spinGravityDecay
             }
        }
        else if(symbolObject[i, j].y > rowPos[j])
        {
             var distanceFromCenter = (symbolObject[i, j].y - rowPos[j]);
             symbolObject[i, j].vspeed -= spinGravity*distanceFromCenter;
             if(symbolObject[i, j].vspeed < 0)
             {
                 symbolObject[i, j].vspeed*=spinGravityDecay
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
