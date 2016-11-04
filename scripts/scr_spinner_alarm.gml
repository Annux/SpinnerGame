i = curStoppingColumn;
colState[i] = 1;

if(global.turn == 1)
{
    curStoppingColumn++;
    if(i < numberOfColumns - 1)
    {
        alarm[0] = spinDelayPrCol*room_speed;
    }
}
else
{
    curStoppingColumn--;
    if(i > 0)
    {
        alarm[0] = spinDelayPrCol*room_speed;
    }
}

/* Dear Snow,
//  #IWantToBelieve
//  I am a Belieber
//  Believe in your Smellf
//  Google these things, you will not be disappointed.

// Sincerely,
//      Jesus Christ
//          The lord's deadbeat son
