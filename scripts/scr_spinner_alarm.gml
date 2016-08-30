// This script goes off after a set period of spinning, as determined by 'spinDuration'
if(global.turn == 1)
{
    curStoppingColumn++;
    i = curStoppingColumn
    if(i < numberOfColumns - 1)
    {
        alarm[0] = spinDelayPrCol*room_speed
    }
}
else if(global.turn == 2)
{
    curStoppingColumn--;
    i = curStoppingColumn
    if(i > 0)
    {
        alarm[0] = spinDelayPrCol*room_speed
    }
}

colState[i] = 1;
curSpinDecel = spinDecel;

/* Dear Snow,
//  #IWantToBelieve
//  I am a Belieber
//  Believe in your Smellf
//  Google these things, you will not be disappointed.

// Sincerely,
//      Jesus Christ
//          Our Lord and Saviors dirtbag son
