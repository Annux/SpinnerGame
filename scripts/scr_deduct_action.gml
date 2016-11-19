// Deduct an action from the active player
with(obj_game_manager)
{
    if(instance_exists(obj_actioncoin))
    {
        global.actioncoin[actionsRemaining - 1].active = false;
    }
    actionsRemaining -= 1;
    
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
    global.actionsEnabled = true;
}
