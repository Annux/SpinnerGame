// Deduct an action from the active player
with(obj_game_manager)
{
    if(instance_exists(obj_actioncoin))
    {
        global.actioncoin[actionsRemaining - 1].active = false;
    }
    global.actionActive = true    
}
