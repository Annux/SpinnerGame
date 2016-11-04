//WHEN: Runs upon the creation of each room
//WHAT: Sets the position of all the objects in the room
{
    switch(room)
    {
        case(Setup_Room):
            room_goto(Main_Menu)
            break
        case(Main_Menu):
            scr_MainMenu_Layout()
            break;
        case(InGame_Screen):
            scr_InGame_Layout()
            break;
        default:
            break;
    }
}

