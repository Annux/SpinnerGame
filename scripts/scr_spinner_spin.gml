//****Added this for scatter.*****//
if (global.scatterActive == 1)
{
    global.scatterActive = 2 //the scatter is active AND the slot machine has moved at least once
}
//********************************//

// This script breaks the spinning phase down into 5 stages
// 0 - speeding up to max speed
// 1 - slowing down (triggered by scr_spinner_alarm, which goes off after a certain time limit)
// 2 - jiggling to a stop (triggered once the reel reaches a certain really slow speed)
// 3 - lock into position and wait until all columns have stopped
// 4 - once all slots are in position, tally up the results of the spin, change the results of the game as necessary
for(var i = 0; i < numberOfColumns; i++)
{
    // move each row, hide/move the stuff that lands outside of the main spinner area
    switch(colState[i])
    {
        case 0: // speeding up
            scr_spin_speedup(i);
            break
        case 1: // slowing down
            scr_spin_slowdown(i);
            break
        case 2: // jiggle to a stop
            scr_spin_jigglestop(i);
            break
        case 3: // lock into position, wait until all columns have stopped
            scr_spin_end(i);
            break;
        case 4:
        
            for(var j = 0; j < numberOfRows; j++)
                    {
                    var symbol = symbolObject[i,j];
                    scr_symbol_stop_on_screen_activate(symbol); 
                    }     
        
            if(i == numberOfColumns - 1)
            {   
                    
                scr_spinner_check_matches();
            }
            break;
    }   
}
