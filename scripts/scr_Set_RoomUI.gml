//WHEN: Runs during the creation of each layout controlling object, and when the orientation changes
//WHAT: Sets the position of all the objects in the room
{
    switch(room)
    {
        case(Setup_Room):
            //room_goto(InGame_Screen) // PLACEHOLDER
            room_goto(Main_Menu) //PLACEHOLDER
            break
        case(Main_Menu):
            scr_MainMenu_Layout()
            break;
        case(InGame_Screen):
            scr_InGame_Layout()
            break;
        default: break;
    }
}

