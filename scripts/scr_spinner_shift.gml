// WHEN: Every time a symbol moves down off the reel, this script is played
// WHAT: This script handles the 'marble' effect of the slot machine. Any time a symbol is moved off the bottom, ->
//      -> A new symbol is added to the top reel from a list, and the bottom symbol is stored in a stock list (symbolStockList)
theSymbol = argument0
theColumn = argument1
theRow    = argument2
theOffset = argument3

// SHIFTING THE ARRAY DOWN 1
for(var j = theRow; j < symbolsPerColumn - 1; j++)
    {
    symbolObject[theColumn, j] = symbolObject[theColumn, j + 1]
    }

// MOVING LAST STOCK FROM STOCK TO SLOT
ds_list_shuffle(symbolStockList[theColumn]);                                                                // shuffle the STOCK
lastStockItem = ds_list_find_value(symbolStockList[theColumn], ds_list_size(symbolStockList[theColumn])-1)  // retrieve the last item in STOCK
secondLastStockItem = symbolObject[theColumn, symbolsPerColumn - 2]
symbolObject[theColumn, symbolsPerColumn - 1] = scr_symbol_move_into_spinner(colPos[theColumn], secondLastStockItem.y - rowSeperation, lastStockItem);  // drop it into the top spot of the slot column
ds_list_delete(symbolStockList[theColumn], ds_list_size(symbolStockList[theColumn])-1);                     // remove it from the STOCK
symbolObject[theColumn, symbolsPerColumn - 1].vspeed = theSymbol.vspeed                                   // Give it the speed of the object its replacing

// MOVING LAST SLOT FROM SLOT TO STOCK
if(theSymbol != noone)
{
     // add the symbol that dropped out of the slot to the STOCK
    scr_symbol_move_out_of_spinner(theSymbol,symbolStockList[theColumn],true)
    //re-activate the symbol
    scr_symbol_set_active(theSymbol, true);
    // updates the symbol's state
    with(theSymbol)
    {
        scr_symbol_get_status_effect_info(status_effect)
    }   
}
