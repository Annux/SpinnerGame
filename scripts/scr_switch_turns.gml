// Controls turn swapping from the player to the enemy
curTurn = argument0;
show_debug_message("CHANGING TURNS")

switch(curTurn)
{
    case (1):
        show_debug_message("PLAYER 2's TURN")
        global.turn = 2;
        for(var n = 0; n < global.numSpellButtons; n++)
        {
            global.spellButton[1,n].buttonEnabled = false;
            global.spellButton[2,n].buttonEnabled = true;
        }
        break;
    case (2):
        show_debug_message("PLAYER 1's TURN")
        global.turn = 1;
        for(var n = 0; n < global.numSpellButtons; n++)
        {
            global.spellButton[2,n].buttonEnabled = false;
            global.spellButton[1,n].buttonEnabled = true;
        }
        break;
}

global.actionsRemaining = global.actionsPerTurn;
