// WHEN: Runs when the orientation in a room changes.
// WHAT: Destroys all objects stored in the room array and reloads them

/// TODO: Consider just moving everything to the new perspective instead of deleting & recreating everything
// COMMENTED: Currently the game does not flip orientations
/*
{
    var currentRoom = argument0;
    for (i = 0; i < instanceNum; i += 1)
    {
        with (objectArray[currentRoom,i])
        {
            instance_destroy();
        };
    };
    scr_Set_RoomUI(currentRoom);
}
