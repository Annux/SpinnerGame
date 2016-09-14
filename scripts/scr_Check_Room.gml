//WHEN: Each frame
//WHAT: Checks whether the room has changed. If it has, creates all the objects necessary for that room
if(currentRoom != room)
{
    currentRoom = room;
    show_debug_message("Going To " + string(currentRoom))
    scr_Set_RoomUI(room);
}
