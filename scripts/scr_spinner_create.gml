// CREATION //
show_debug_message("Creating the spinner");
//instance_create(x, y, obj_spinner_BG);

////////////////////////////////////////////////////////////
// --------------------- COLUMNS ------------------------ //
//   Create all the columns and store thier x positions   //
////////////////////////////////////////////////////////////
var middleColumn = numberOfColumns/2 + .5
var middleRow = numberOfRows/2 + .5

enum symbolState
    {
    blue,
    red,
    green,
    purple,
    wild,
    test
    }

for(var i = 0; i < numberOfColumns; i++)
{
    colPos[i] = columnCenter + columnSeperation*(i+1 - middleColumn); // establishes the column position based on the center column position
    colState[i] = 0;        // whether or not the slot column is idle (0), spinning (1), or calculating score (2).
    
/////////////////////////////////////////////////////////////////////////////
// --------------------------- LIST CREATION ----------------------------- //
// Create the 'master' list of all the symbols that appear in each column  //
/////////////////////////////////////////////////////////////////////////////
    spinnerList[i] = ds_list_create();
       
    // Create all the mana symbols (NOTE this method assumes there is initially an equal amount of each types of mana)
    for(var n = 0; n < manaPerColumn; n++)
    {
        var bl = scr_symbol_create_new_symbol(symbolState.blue)
        var rd = scr_symbol_create_new_symbol(symbolState.red)
        var gr = scr_symbol_create_new_symbol(symbolState.green)
        var pr = scr_symbol_create_new_symbol(symbolState.purple)
        
        ds_list_add(spinnerList[i],bl,rd,gr,pr);
    }

    // Create all the wild symbols in all middle columns (wilds do not appear in row 0 or the last row because starting a chain on a wild is OP opie)
    if(i < numberOfColumns - 1 && i > 0)
    {
            
    
        for(var n = 0; n < wildsPerColumn; n++)
        {
            var wl = scr_symbol_create_new_symbol(symbolState.wild)
            
            ds_list_add(spinnerList[i],wl);
        }
    }
    ds_list_shuffle(spinnerList[i]);
    
    symbolStockList[i] = ds_list_create();
    for(var n = 0; n < ds_list_size(spinnerList[i]); n++)
    {
        ds_list_add(symbolStockList[i], ds_list_find_value(spinnerList[i], n));
    }

    
/////////////////////////////////
// ----- LIST CREATION ------- //
// Create the 'reserve' list.  //
///////////////////////////////// 

    reserveList[i]= ds_list_create();  
         
///5////////////////////////////////////////////////////////
// ----------------- ROWS & POSITIONS ------------------ //
//         ESTABLISH ALL OF THE SPINNER POSITIONS        //
///////////////////////////////////////////////////////////
    for(var j = 0; j < symbolsPerColumn; j++) // create the rows
    {
        // set the positions for all of the rows and the vertical maximum/minimum (based on the middle row position)
        if(i == 0)
        {
            rowPos[j] = rowCenter - rowSeperation*(j+1-middleRow);
        }
        // create a symbol object for every row position
        var lastStockItem = ds_list_find_value(symbolStockList[i], ds_list_size(symbolStockList[i])-1); // retrieve the last item in stock
        symbolObject[i, j] = scr_symbol_move_into_spinner(colPos[i], rowPos[j], lastStockItem);                      // drop it into the top spot of the column
        ds_list_delete(symbolStockList[i], ds_list_size(symbolStockList[i])-1);                         // remove it from the list
    }
    botVisLimit = rowPos[0] + rowSeperation;
    topVisLimit = rowPos[numberOfVisibleRows-1];
    topMostLimit = rowPos[symbolsPerColumn-1];
    bottomMostLimit = botVisLimit;
}
////////////////////////////////////////////////////
// ----------------- NEUTRALS ------------------  //
//       Create the neutrals & set them up        //
////////////////////////////////////////////////////
/*for(var n = 0; n < maxNumOfNeutrals; n++)
{
    swordSymbols[n] = instance_create(0, 0, obj_swordsymbol)
    swordSymbols[n].visible = 0;
    shieldSymbols[n] = instance_create(0, 0, obj_shieldsymbol)
    shieldSymbols[n].visible = 0;
}*/

for(var i = 0; i < numberOfColumns; i++)
{
    for(var j = 0; j < numberOfRows; j++)
    {
        scr_spinner_move(i, j)       // do the initial slot clear
        //neutralPosition[i, j] = true; // variable which stores whether or not a position is available (so 2 neutrals don't spawn in the same place)
    }
}
