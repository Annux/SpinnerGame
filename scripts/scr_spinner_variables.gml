
///////////////////////// SLOT MACHINE VALUES /////////////////////////
//////////////////////////////////////////////////////////////////////
    numberOfColumns = 5;
    symbolsPerColumn = 10;
    numberOfRows = 3; // the number of rows that matter towards point calculation
    numberOfVisibleRows = 8; // the number of visible rows
    
    // Spinning & speeds
    spinDuration[0] = .9; // the amount of time it takes for the first column to stop spinning
    spinDuration[1] = .45;
    spinDuration[2] = .45;
    spinDuration[3] = .45;
    spinDuration[4] = .5;
    spinDelayPrCol = .333; // the amount of time increase between each columns stop time
    
    startSpinSpeed = 120 * (room_height / window_get_height()); // the speed the spinner must reach in order to spin
    maxSpinSpeed = 300; // the speed of the spinning animation at the peak of the animation
    spinAccel = 3.5; // rate of acceleration
    
    spinDecel[0] = .775; // % of speed decay for the first column
    spinDecel[1] = .775;
    spinDecel[2] = .775;
    spinDecel[3] = .775;
    spinDecel[4] = .8;
    spinDecelPrCol = .025; // additional spin % increased per column
    minSpinSpeed = 1; // the speed at which we can stop deceleration and just stop because speed is basically 0
    
    // Gyro force
    idleGravity = .8; // the force of the slot gyro (the jiggling-to-stop effect)
    idleGravityDecay = .5; // the speed at which the slot gyro slows down
    
    spinGravity = .9; // the force of the slot gyro when it's stopping after a spin
    spinGravityDecay = .4; // the speed at which the slot gyro slows down after a spin
    
    columnDrag = .8 // NOTE: THIS MUST BE > 0
    origMouseY = mouse_y;
    
///////////////////////// SYMBOLS/////////////////////////
//////////////////////////////////////////////////////////
    manaPerColumn = 5;
    wildsPerColumn = 0;

///////////////////////// DRAWING POSITIONS /////////////////////////
/////////////////////////////////////////////////////////////////////
    columnCenter = x-10*global.sizeH; // the center column position
    columnSeperation = sprite_width/5; // the seperation between columns
    
    rowCenter = y + 25*global.sizeH; // the center row position 
    rowSeperation = sprite_height/4; // the seperation between rows
    
    topLimit = y - rowSeperation/2; // the highest point you can drag to with your finger
    bottomLimit = y + sprite_height/2; // the lowest point you can drag to with you finger
    
//////////////////////////// LOGIC VARIABLES///////////////////////////////
// Please note that most (if not all) of these variables will not change //
//      if set here, as they are assigned in different scripts           //
///////////////////////////////////////////////////////////////////////////
    spinnerRoom = room; // stores the name of the room so the ds_lists can be destroyed later
    grabbedSpinner = false; // used to determine whether the spinner is being grabbed or not
    prevMouseY = 0; // used to calculate the speed of the user's flick
    inPosition = true; // used to determine whether or not the slot symbols are moving or not
    topVisLimit = rowCenter; // the highest point symbols may begin to be visible
    topMostLimit = rowCenter; // the highest point that symbols may go relative to the screen
    bottomVisLimit = rowCenter; // the lowest point symbols may begin to be visible
    bottomMostLimit = rowCenter; // the lowest point that symbols may go relative to the scree
    curStoppingColumn = 0; // this determines the order that the spinner stops columns (either from left to right or from right to left)
    slotState = 0; // 0 = not spinning, 1 = spinning

/***************************************************
  Mid-spin matching
 ***************************************************/

for (var r=0; r<numberOfRows; r+=1)
{
    midSpinMatches[r] = 0;
};

/***************************************************
  Scatter Matching
 ***************************************************/

for(var i = 0; i < numberOfColumns; i+=1)
    { 
    canStopOnScreenAction[i] = 1;
    }
preMatchDelay = 0;
    
/***************************************************
  symbol Collection
 ***************************************************/
 
symbolCollectionDelayDefault = room_speed * 0.4;
symbolCollectionDelay = symbolCollectionDelayDefault;
matchEndDelay = 0;
current_match_row = 0;
canMatch = true;
