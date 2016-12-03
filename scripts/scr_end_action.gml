// Deduct an action from the active player
with(obj_game_manager)
{
    actionsRemaining -= 1;
    // insert animation/sounds of the action chips being deducted here.

    // SWITCH TURNS STATE
    if(actionsRemaining <= 0)
    {
        scr_game_switch_turns();
        actionsRemaining = global.actionsPerTurn;
        for(var i = 0; i < instance_number(obj_actioncoin); i++)
        {         
            global.actioncoin[i].active = true;        
        }
    }
    global.actionActive = false;
    global.actionsEnabled = true;
}
