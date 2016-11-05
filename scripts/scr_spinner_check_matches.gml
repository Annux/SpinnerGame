show_debug_message("///NEXT SPIN///");
// gets the slot machine results and awards the spinning player accordingly.
for(var i = 0; i < numberOfRows; i++)
{
    vspeed = 0;
    // determines PLAYER 1 matches - starts from the leftmost column and multiplies results going towards the right
    var matched = false;
    if(global.turn = 1)
    {
        if (symbolObject[0, i].canMatch)
        {
        matched = true;
        
        Type = symbolObject[0, i].state
        var value = 0;

        if((symbolObject[1, i].state == Type  || symbolObject[1, i].state == symbolState.wild) && symbolObject[1, i].canMatch ) // 2 in a row
            {
                value = 1;
                if((symbolObject[2, i].state == Type  || symbolObject[2, i].state == symbolState.wild) && symbolObject[2, i].canMatch) // 3 in a row
                {
                    value = 2;
                    if((symbolObject[3, i].state == Type || symbolObject[3, i].state == symbolState.wild)&& symbolObject[3, i].canMatch) // 4 in a row
                    {
                        value = 3;
                        if((symbolObject[4, i].state  == Type || symbolObject[4, i].state == symbolState.wild)&& symbolObject[4, i].canMatch ) // 5 in a row
                        {
                            value = 4;
                        }
                    }
                }
            }
        }
        
    }
    // determines PLAYER 2 matches - starts from the rightmost column and multiplies results going towards the left
    else if(global.turn = 2)
    {
        if (symbolObject[4, i].canMatch)
        {
        matched = true;
        
        Type = symbolObject[4, i].state
        var value = 0;

        if((symbolObject[3, i].state == Type  || symbolObject[3, i].state == symbolState.wild)&& symbolObject[3, i].canMatch) // 2 in a row
            {
                value = 1;
                if((symbolObject[2, i].state == Type  || symbolObject[2, i].state == symbolState.wild)&& symbolObject[2, i].canMatch) // 3 in a row
                {
                    value = 2;
                    if((symbolObject[1, i].state == Type  || symbolObject[1, i].state == symbolState.wild)&& symbolObject[1, i].canMatch) // 4 in a row
                    {
                        value = 3;
                        if((symbolObject[0, i].state  == Type || symbolObject[0, i].state == symbolState.wild)&& symbolObject[0, i].canMatch) // 5 in a row
                        {
                            value = 4;
                        }
                    }
                }
            }
        }
        
    }
    
    // Awards player 1 or 2 based on the outcome of the matches
    if (matched)
    {
        switch(Type)
        {
            case (symbolState.purple):
                scr_symbol_match_purple_mana(global.turn,value)
    
                break;
            case (symbolState.green):
                scr_symbol_match_green_mana(global.turn,value)
    
                break;
            case (symbolState.red):
                scr_symbol_match_red_mana(global.turn,value)
    
                break;
            case (symbolState.blue):
                scr_symbol_match_blue_mana(global.turn,value)
                
                break;
        }
    }
    else
        {
        show_debug_message("NO SOUP FOR YOU!")
        }
}

// resets the slot machine for the next spin
slotState = 0;
scr_deduct_action();

/*
// NEUTRALS -Assign the neutrals to their new slot positions
for(var i = 0; i < numberOfColumns; i++)
{   
    for(var j = 0; j < numberOfRows; j++)
    {    
        neutralPosition[i,j] = true;
    }
}
scr_activate_neutrals();
scr_activate_neutrals();
neutralsAreVisible = true;

// gets the neutrals and awards the player accordingly
var num = 0;
for(var p = 0; p < maxNumOfNeutrals; p += 1)
{
    if(swordSymbols[p].visible == true)
        num++;
}
show_debug_message("there are " + string(num) + " swords");
num = 0;
for(var q = 0; q < maxNumOfNeutrals; q += 1)
{
    if(shieldSymbols[q].visible == true)
        num++;
}
show_debug_message("there are " + string(num) + " shields");
*/
