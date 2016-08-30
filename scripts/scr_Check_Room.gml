if(currentRoom != room)
{
    currentRoom = room;
    show_debug_message("Going To " + string(currentRoom))
    scr_Set_RoomUI(room);
}
