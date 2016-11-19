///scr_match_symbols_in_row_noncontiguous(row)

//checks a single row for matches and activates the mached symbol's collection action 

var row = argument0 // the row to be tested
var didMatch = false;

var symbol_array; //array to hold the matched symbols
symbol_array[0,0] = noone;   
var j = 0; //index in the array of matches


//loop over the columns (numberOfColumns - 1) times
for (var i=0; i<numberOfColumns - 1; i+=1)
    {
    // find the two symbols to test
    var symbol1 = symbolObject[i, row];
    var symbol2 = symbolObject[i+1, row];

    //test the match between the symbols
    if (symbol1.canMatch && symbol1.state == symbol2.state)
        {
        //add the symbols to the matched array
        var array_pos = array_length_2d(symbol_array,j) - 1;
        symbol_array[j,array_pos] = symbol1; 
        symbol_array[j,array_pos+1] = symbol2;
        didMatch = true; //show that at least one match has been made
        }
    else
        {
        //failed to match test if match array can be incremented
        if (symbol_array[j,0] != noone)
            {
            //array slot is full, move on to the next
            j+=1;
            symbol_array[j,0] = noone;  
            }
        }
    }

    
   
if (didMatch)
    {
    var q = 0;//index to check
    repeat(array_height_2d(symbol_array))
        {    
        //if there is a match, activate it's match action script
        if (symbol_array[q,0] != noone)
            {
            var qq = 0; //second index to check... or whatever... i dont really know what to call this.... so yeah.... how are you?
            var symbols_temp;
            
            repeat(array_length_2d(symbol_array,q))
                {
                symbols_temp[qq] = symbol_array[q,qq];
                qq += 1;
                }
            //trigger the match action of the type of symbole
            matchEndDelay = script_execute(symbols_temp[0].matchAction, global.turn,symbols_temp);//match action scripts return their end delay
            }
        q += 1;
        }

    }
else
    {
    show_debug_message("Nothing in row: " + string(row))
    }
    

