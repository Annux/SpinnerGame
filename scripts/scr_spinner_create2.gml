// CREATION //
// Create the 2D array of symbols;
var middleColumn = numberOfColumns/2 + .5
var middleRow = numberOfRows/2 + .5

for(var i = 0; i < numberOfColumns; i++) // create the columns
{
    colPos[i] = columnCenter + columnSeperation*(i+1 - middleColumn); // establishes the column position based on the center column position
    colState[i] = 0;        // whether or not the slot column is idle, spinning, or finished spinning.
    newFirstIndex[i] = 0;   // this value holds the number of the symbol in the '0' position of the slot machine

///////////////////////////////////////////////////////////
// --------------------- PART 1 ------------------------ //
// CREATE, POPULATE AND SHUFFLE SPINNER COLUMN CONTENTS  //
///////////////////////////////////////////////////////////
    spinnerList[i] = ds_list_create();
    // Create all the mana symbols
    for(var n = 0; n < manaPerColumn; n++)
        ds_list_add(spinnerList[i],obj_redmana,obj_bluemana,obj_greenmana,obj_yellowmana);

    // Create all the wild symbols
    for(var n = 0; n < wildsPerColumn; n++)
        ds_list_add(spinnerList[i],obj_wildmana);
        
    ds_list_shuffle(spinnerList[i]);
    
///////////////////////////////////////////////////////////
// --------------------- PART 2 ------------------------ //
// ESTABLISH ALL OF THE SPINNER POSITIONS                //
///////////////////////////////////////////////////////////
    for(var j = 0; j < symbolsPerColumn; j++) // create the rows
    {
        // set the positions for all of the rows based on the middle row position
        if(i == 0)
        {
            // set the positions of all the symbols below the spinner (values smaller than the total / 2)
            if(j <= symbolsPerColumn/2 + 1)
            {
                rowPos[j] = rowCenter + rowSeperation*(j+1-middleRow)
            }
            // set the positions of all the symbols above the center (values larger than the total / 2)
            else
            {
                rowPos[j] = rowCenter + rowSeperation*(j+1-middleRow-symbolsPerColumn)
            }
        }
        // create a symbol object for every row position
        symbolObject[i, j] = instance_create(colPos[i], rowPos[j], ds_list_find_value(spinnerList[i], j));
        
        if(i == 0)
        {
            // Store the y value of the TOP visible symbol (no symbol above this point may ever be visible)
            if(j == symbolsPerColumn - (numberOfVisibleRows - numberOfRows)/2)
            {
                topVisLimit = rowPos[j];
            }
            // Store the y value of the BOTTOM visible block (no symbol below this point may ever be visible)
            if(j == numberOfRows-1 + (numberOfVisibleRows - numberOfRows)/2)
            {
                botVisLimit = rowPos[j];
            }
            // Store the y value of the topmost symbol (this is where symbols will screen wrap to)
            else if(rowPos[j] < topMostLimit)
            {
                topMostLimit = rowPos[j];
            }
            // Store the y value of the bottommost symbol (symbols that go beyond this will screenwrap to the top)
            else if(rowPos[j] > bottomMostLimit)
            {
                bottomMostLimit = rowPos[j];
            }
        }
    }
}
/*
///////////////////////////////////////////////////////////
// --------------------- PART 3 ------------------------ //
// ESTABLISH ALL OF THE SCATTER OBJECTS & POSITIONS      //
///////////////////////////////////////////////////////////
// CREATE THE NEUTRALS, make them initially invisible
/*for(var n = 0; n < maxNumOfNeutrals; n++)
{
    swordSymbols[n] = instance_create(0, 0, obj_swordsymbol)
    swordSymbols[n].visible = 0;
    shieldSymbols[n] = instance_create(0, 0, obj_shieldsymbol)
    shieldSymbols[n].visible = 0;
}

for(var i = 0; i < numberOfColumns; i++)
{
    for(var j = 0; j < numberOfRows; j++)
    {
        neutralPosition[i, j] = true; // variable which stores whether or not a position is available (so 2 neutrals don't spawn in the same place)
    }
}
*/

// Set the initial state of the slot (ie turn off everything outside of view, etc)
for(var i = 0; i < numberOfColumns; i++)
{
    for(var j = 0; j < symbolsPerColumn; j++)
    {
        scr_spinner_move(i, j);
    }
}
