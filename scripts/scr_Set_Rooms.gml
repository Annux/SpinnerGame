// WHEN: On the start of the game
// WHAT: Loops through all the rooms and scales them to the device width/height/resolution
{
    maxRes = 2048
    maxResH = 1536
    
    global.deviceWidth = display_get_width();
    global.deviceHeight = display_get_height();
    
    /*if (global.deviceWidth > global.deviceHeight)
    {*/
    global.assetScale = global.deviceHeight;
    viewWidth = global.deviceWidth;
    viewHeight = global.deviceHeight;
    /*};
    else
    {
        rmSize = global.deviceHeight;
        global.assetScale = global.deviceWidth;
        viewWidth = global.deviceHeight;
        viewHeight = global.deviceWidth;
    };*/
    view0 = 1;
    //view1 = 0;

    global.size = global.deviceWidth / maxRes; // resolution / width
    global.sizeH = global.deviceHeight / maxResH;
    
    ///////////
    //This loops through all the rooms to set their 2 views - landscape and portrait.
    currentRoom = room_first;
    while (currentRoom < room_last)
    {
        room_set_height(currentRoom, viewHeight);
        room_set_width(currentRoom, viewWidth);
        room_set_view(currentRoom, 0, true, 0, 0, viewWidth, viewHeight, 0 ,0, viewWidth, viewHeight, 0, 0, 0, 0, -1);
        //room_set_view(currentRoom, 1, view1, 0, 0, viewHeight, viewWidth, 0 ,0 , viewHeight, viewWidth, 0, 0, 0, 0, -1);
        currentRoom = room_next(currentRoom);
    }
    room_set_height(room_last, viewHeight);
    room_set_width(room_last, viewWidth);
    room_set_view(room_last, 0, true, 0, 0, viewWidth, viewHeight, 0 ,0, viewWidth, viewHeight, 0, 0, 0, 0, -1);
    currentRoom = -1;
    ///////////
}
