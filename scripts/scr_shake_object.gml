///scr_shake_object(initialX, initialY, intensity, currentDuration, totalDuration, doesDecay);
// returns true if curShakeDur < totalDuration
initialX  = argument[0];
initialY  = argument[1];
intensity = argument[2];
currentDuration = argument[3];
totalDuration = argument[4];
doesDecay = argument[5];

if(currentDuration >= totalDuration)
{
    x = initialX;
    y = initialY;
    return false;
}
else
{
    if(doesDecay)
        intensity = lerp(intensity, 0, currentDuration/totalDuration); // reduce intensity over duration of animation

        
    // place thing in a random position
    x = random_range(initialX - intensity, initialX + intensity);
    y = random_range(initialY - intensity, initialY + intensity);
    
    return true;
}
