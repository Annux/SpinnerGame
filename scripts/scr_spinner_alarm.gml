i = curStoppingColumn;
colState[i] = 1;
resetAlarm = false;

show_debug_message("entered alarm")

if(global.turn == 1)
{
    curStoppingColumn++;
    if(i < numberOfColumns - 1)
    {
        i++;
        resetAlarm = true;
        show_debug_message("can reset alarm")
    }
}
else
{
    curStoppingColumn--;
    if(i > 0)
    {
        i = numberOfColumns - i;
        resetAlarm = true;
        show_debug_message("can reset alarm")
    }
}

if(resetAlarm)
{
    if(array_length_1d(spinDuration) >= i)
    {
        show_debug_message("stopping Col " + string(i) + " in " + string(spinDuration[i]) + " seconds");
        show_debug_message("decelerationg Col " + string(i) + " at a rate of " + string(spinDecel[i]) + "% per frame");
        alarm[0] = spinDuration[i]*room_speed;
    }
    else
    {
        alarm[0] = spinDelayPrCol*room_speed;
    }
}
