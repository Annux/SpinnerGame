///scr_match_symbols_in_row(row)

//checks a single row for matches and activates the mached symbol's collection action 

var row = argument0
var matches = 0;
var obj = noone;
var didMatch = false;
var symbols = noone;

if(global.turn = 1)
    {
    show_debug_message("Player 1 mached:")
    obj = symbolObject[0, row]
    if (obj.canMatch)
        {
        didMatch = true
        var Type = obj.state;
        
        symbols[0] = obj;
        
        for (var i=1; i<numberOfColumns-1; i+=1)
            {
            if((symbolObject[i, row].state == Type  || symbolObject[i, row].state == symbolState.wild) && symbolObject[i, row].canMatch )  
                {
                matches += 1;
                symbols[i] = symbolObject[i, row];
                }
            else
                {
                break;
                }
            }
        }
    }
    
if(global.turn = 2)
    {
    show_debug_message("Player 2 mached:")
    obj = symbolObject[numberOfColumns-1, row]
    if (obj.canMatch)
        {
        didMatch = true
        var Type = obj.state;
        
        symbols[0] = obj;
        
        var j = 1;
        for (var i=numberOfColumns-2; i>-1; i-=1)
            {
            if((symbolObject[i, row].state == Type  || symbolObject[i, row].state == symbolState.wild) && symbolObject[i, row].canMatch )  
                {
                matches += 1;
                symbols[j] = symbolObject[i, row];
                j += 1;
                }
            else
                {
                break;
                }
            }
        }
    }
   
if (didMatch)
    {
    script_execute(obj.matchAction, global.turn, matches,symbols);
    }
else
    {
    show_debug_message("Nothing in row: " + string(row))
    }
