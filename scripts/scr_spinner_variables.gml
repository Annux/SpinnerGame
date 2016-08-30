///////////////////////// SLOT MACHINE VALUES /////////////////////////
//////////////////////////////////////////////////////////////////////
numberOfColumns = 5;
symbolsPerColumn = 10;
numberOfRows = 3; // the number of rows that matter towards point calculation
numberOfVisibleRows = 5; // the number of visible rows

// Spinning & speeds
spinDuration = 1; // the amount of time it takes for the first column to stop spinning
spinDelayPrCol = .333; // the amount of time increase between each columns stop time

initSpinSpeed = 20; // the speed of the spinning animation at the start of the animation
maxSpinSpeed = 200; // the speed of the spinning animation at the peak of the animation
spinAccel = 3; // rate of acceleration

spinDecel = .8; // % of speed decay for the first column
spinDecelPrCol = 0
spinDecelPrCol = .025 // additional spin % increased per column
minSpinSpeed = 1; // the speed at which we can stop deceleration and just stop because speed is basically 0

// Gyro force
slotGravity = .6; // the force of the slot gyro (the jiggling-to-stop effect)
gravityDecayRate = .6; // the speed at which the slot gyro slows down

///////////////////////// SYMBOLS/////////////////////////
//////////////////////////////////////////////////////////
// Mana
manaPerColumn = 4;
wildsPerColumn = 2;

// Neutrals (Scatter Version)
//maxNumOfNeutrals = 5; // the is the maximum amount of a scatter symbol that can appear in a single roll (EX swords and shields)
/*swordChance[0] = 75;
swordChance[1] = 90;
swordChance[2] = 95;
swordChance[3] = 97;
swordChance[4] = 99;

shieldChance[0] = 75;
shieldChance[1] = 90;
shieldChance[2] = 95;
shieldChance[3] = 97;
shieldChance[4] = 99;*/

///////////////////////// MATCHING POINTS /////////////////////////
///////////////////////////////////////////////////////////////////
// return value for getting x many things in a row
matchValue[0] = 1;
matchValue[1] = 4;
matchValue[2] = 8;
matchValue[3] = 16;
matchValue[4] = 32;

///////////////////////// DRAWING POSITIONS /////////////////////////
/////////////////////////////////////////////////////////////////////
columnCenter = x-2*global.sizeH; // the center column position
columnSeperation = 220*global.sizeH; // the seperation between columns

rowCenter = y + 100*global.sizeH; // the center row position
rowSeperation = 200*global.sizeH; // the seperation between columns

topLimit = y - sprite_height*global.sizeH / 10; // the highest point you can drag to with your finger
bottomLimit = y + sprite_height*global.sizeH / 5; // the lowest point you can drag to with you finger

//////////////////////////// LOGIC VARIABLES///////////////////////////////
// Please note that most (if not all) of these variables will not change //
//      if set here, as they are assigned in different scripts           //
///////////////////////////////////////////////////////////////////////////
spinnerRoom = room; // stores the name of the room so the ds_lists can be destroyed later
newFirstIndex = 0;
grabbedSpinner = false;
neutralsAreVisible = false;
inPosition = true;
topVisLimit = rowCenter; // the highest point symbols may begin to be visible
topMostLimit = rowCenter; // the highest point that symbols may go relative to the screen
bottomVisLimit = rowCenter; // the lowest point symbols may begin to be visible
bottomMostLimit = rowCenter; // the lowest point that symbols may go relative to the scree
slotState = 0;
curSpinDecel = spinDecel;
curStoppingColumn = -1;
curOffset = 0;
