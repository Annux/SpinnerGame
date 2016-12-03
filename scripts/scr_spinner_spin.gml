//****Added this for scatter.*****//
if (global.scatterActive == 1)
{
    global.scatterActive = 2 //the scatter is active AND the slot machine has moved at least once
}

// This script breaks the spinning phase down into 5 stages
// 0 - speeding up to max speed
// 1 - slowing down (triggered by scr_spinner_alarm, which goes off after a certain time limit)
// 2 - jiggling to a stop (triggered once the reel reaches a certain really slow speed)
// 3 - lock into position and wait until all columns have stopped
// 4 - once all slots are in position, tally up the results of the spin, change the results of the game as necessary

var allRowsStopped = true;
for(var i = 0; i < numberOfColumns; i++)
{
    // move each row, hide/move the stuff that lands outside of the main spinner area
    switch(colState[i])
    {
        // speeding up
        case 0:
            scr_spin_speedup(i);
            allRowsStopped = false;
            break
        // slowing down
        case 1:
            scr_spin_slowdown(i);
            allRowsStopped = false;
            break
        // jiggle to a stop
        case 2:
            scr_spin_jigglestop(i);
            allRowsStopped = false;
            break
        // lock into position, wait until all columns have stopped
        case 3:
            scr_spin_end(i);
            allRowsStopped = false;
            canStopOnScreenAction[i] = 1;
            break;
        // stopped
        case 4:
            if (canStopOnScreenAction[i] == 1)
            {
                for(var j = 0; j < numberOfRows; j++)
                {
                    var symbol = symbolObject[i,j];
                    canStopOnScreenAction[i] = 0;
                    scr_symbol_stop_on_screen_activate(symbol);                
                };
            }
            break;
        default:
            show_debug_message("Error handling for scr_spinner_spin?");
            break;
            
    };
};


if(allRowsStopped)
{
    if (preMatchDelay <= 0)
    {
        global.actionActive = false;
        scr_spinner_start_checking_matches();
    }
    else
    {
        preMatchDelay -= 1 * global.delta
    }
};
