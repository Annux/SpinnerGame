// CREATION //
show_debug_message("Creating the spinner");

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
    sword
    }
    
enum symbol_status_effect
    {
    normal,
    smoke
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
        var sw = scr_symbol_create_new_symbol(symbolState.sword)
        
        ds_list_add(spinnerList[i],bl,rd,gr,pr,sw);

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

for(var i = 0; i < numberOfColumns; i++)
{
    for(var j = 0; j < numberOfRows; j++)
    {
        scr_spinner_move(i, j) // do the initial slot clear
    }
}
/***************************************************
  Foot print setup
 ***************************************************/
scr_spinner_footprint_create_symbol_stat_system()

var i = 0;
repeat(2)
    {
    scr_spinner_footprint_add_symbol_stat(i,symbolState.red,100,100,100,100,100)
    scr_spinner_footprint_add_symbol_stat(i,symbolState.blue,100,100,100,100,100)
    scr_spinner_footprint_add_symbol_stat(i,symbolState.green,100,100,100,100,100)
    scr_spinner_footprint_add_symbol_stat(i,symbolState.purple,100,100,100,100,100)
    ++i;
    }
 

/***************************************************
  For all you probibility needs see scr_spinner_footprint_variables
 ***************************************************/
 
scr_spinner_footprint_variables() // press f12 to open
