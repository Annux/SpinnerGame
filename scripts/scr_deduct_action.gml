// Deduct an action from the active player
with(obj_game_manager)
{
    actionsRemaining -= 1;
    // insert animation/sounds of the action chips being deducted here.
    
    if(actionsRemaining <= 0)
    {
        scr_game_switch_turns();
        actionsRemaining = global.actionsPerTurn;
    }
    global.actionsEnabled = true;
}
