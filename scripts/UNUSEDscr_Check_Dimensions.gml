// WHEN: Called every step by the Check_Orientation script
// WHAT: Checks to see if the orientation has changed

// COMMENTED: Currently the game does not flip orientations
/*
{
    var deviceHeight = display_get_height();
    var deviceWidth = display_get_width();
    if (deviceWidth > deviceHeight)
    {
        global.deviceWidth = deviceWidth;
        global.deviceHeight = deviceHeight;
        return 0;
    };
    else
    {
        global.deviceWidth = deviceWidth;
        global.deviceHeight = deviceHeight;
        return 1;
    };
    return null; // it shouldn't reach this line
}
