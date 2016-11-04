// MANA
// Assign the symbols to their new slot positions
show_debug_message("///NEXT SPIN///");
for(var i = 0; i < numberOfColumns; i++)
{   
    for(var j = 0; j < symbolsPerColumn; j++)
    {    
        symbolObject[i, j] = instance_nearest(colPos[i], rowPos[j], obj_symbol_parent);
    }
}

// gets the slot machine results and awards the spinning player accordingly.
for(var i = 0; i < numberOfRows; i++)
{
    // determines PLAYER 1 matches - starts from the leftmost column and multiplies results going towards the right
    if(global.turn = 1)
    {
        Type = symbolObject[0, i].object_index
        var value = matchValue[0];
        if(symbolObject[1, i].object_index == Type || symbolObject[1, i].object_index == obj_wildmana) // 2 in a row
        {
            value = matchValue[1];
            if(symbolObject[2, i].object_index == Type || symbolObject[2, i].object_index == obj_wildmana) // 3 in a row
            {
                value = matchValue[2];
                if(symbolObject[3, i].object_index == Type || symbolObject[3, i].object_index == obj_wildmana) // 4 in a row
                {
                    value = matchValue[3];
                    if(symbolObject[4, i].object_index  == Type || symbolObject[4, i].object_index == obj_wildmana) // 5 in a row
                        value = matchValue[4];
                }
            }
        }
    }

    // determines PLAYER 2 matches - starts from the rightmost column and multiplies results going towards the left
    else if(global.turn = 2)
    {
        Type = symbolObject[4, i].object_index
        var value = matchValue[0];
        if(symbolObject[3, i].object_index == Type || symbolObject[3, i].object_index == obj_wildmana) // 2 in a row
        {
            value = matchValue[1];
            if(symbolObject[2, i].object_index == Type || symbolObject[2, i].object_index == obj_wildmana) // 3 in a row
            {
                value = matchValue[2];
                if(symbolObject[1, i].object_index == Type || symbolObject[1, i].object_index == obj_wildmana) // 4 in a row
                {
                    value = matchValue[3];
                    if(symbolObject[0, i].object_index  == Type || symbolObject[0, i].object_index == obj_wildmana) // 5 in a row
                        value = matchValue[4];
                }
            }
        }
    }
    
    // Awards player 1 or 2 based on the outcome of the matches
    switch(Type)
    {
        case (obj_purplemana):
            show_debug_message("+" + string(value) + " purples");
            global.manaBar[global.turn,manaType.purple].curMana += value;
            //global.player[global.turn].curMana[manaType.purple] += value;
            break;
        case (obj_greenmana):
            show_debug_message("+" + string(value) + " greens");
            global.manaBar[global.turn,manaType.green].curMana += value;
            global.player[global.turn].curMana[manaType.green] += value;
            break;
        case (obj_redmana):
            show_debug_message("+" + string(value) + " reds");
            global.manaBar[global.turn,manaType.red].curMana += value;
            global.player[global.turn].curMana[manaType.red] += value;
            break;
        case (obj_bluemana):
            show_debug_message("+" + string(value) + " blues");
            global.manaBar[global.turn,manaType.blue].curMana += value;
            global.player[global.turn].curMana[manaType.blue] += value;
            break;
    }
}

// NEUTRALS
// Assign the neutrals to their new slot positions
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

///////////////

// resets the slot machine for the next spin
curStoppingColumn = -1;
slotState = 0;
