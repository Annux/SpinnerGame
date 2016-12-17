// WHEN: Called by scr_spinner_flick when the player drags their finger enough to start the spinner
// WHAT: Begins the 'spinning' of the slot machine by preparign any variables necessary for that process
initSpinSpeed = argument0;

// Move the columns and set them all into the 'moving' state
slotState = 1;
for(var i = 0; i < numberOfColumns; i++)
{
    colState[i] = 0;
    for(var j = 0; j < symbolsPerColumn; j++)
    {
        symbolObject[i, j].vspeed = initSpinSpeed;
    }
}

scr_spinner_footprint_create_footprint_string(0)
scr_spinner_footprint_create_footprint_string(1)
//scr_spinner_parse_footprint()

scr_deduct_action()

// this alarm will tell the 'curStoppingColumn' to start slowing down to a stop, then set the alarm for the next column
alarm[0] = spinDuration[0]*room_speed;
// The first column to stop for P1 is the leftmost column
if(global.turn = 1)
    curStoppingColumn = 0;
// The first column to stop for P2 is the rightmost column
else
    curStoppingColumn = numberOfColumns - 1;
    
grabbedSpinner = false;
global.actionsEnabled = false;
canMatch = true;

//activate all Symbol "on spin triggers"
var i = 0;
repeat(instance_number(obj_symbol))    
{
    var obj = instance_find(obj_symbol,i)
    with (obj)
        {
        scr_symbol_on_spin_activate()
        }
    ++i;
}
