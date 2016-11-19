///scr_spinner_check_spin_matchs(turn,column,row)
var turn = argument0;
var column = argument1;
var row = argument2;


if (turn == 1)
    {
    if (column != 0)
        {
        if (symbolObject[column - 1,row].state == symbolObject[column,row].state)
            {       
            return symbolObject[column,row];
            }
        else 
            {
            return false
            }
        }
    }
else
    {
    if (column != numberOfColumns-1)
        {
        if (symbolObject[column + 1,row].state == symbolObject[column,row].state)
            {
            return symbolObject[column,row];
            }
        else 
            {
            return false
            }
        }
    }



