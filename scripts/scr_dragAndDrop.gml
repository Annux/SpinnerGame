if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left))
{
    startX = x;
    startY = y;
    xDiff = mouse_x - x;
    yDiff = mouse_y - y;
    script_execute(start_script);
}

if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button(mb_left) && isClicked == false)
{
    isClicked = true;
} else



if (isClicked)
{
    x = mouse_x - xDiff;
    y = mouse_y - yDiff;
    if (place_meeting(x,y,hover_object1))
    {
        script_execute(hover_script1)
    }
        if (position_meeting(x,y,hover_object2))
    {
        script_execute(hover_script2)
    }
        if (position_meeting(x,y,hover_object3))
    {
        script_execute(hover_script3)
    }
}

if (mouse_check_button_released(mb_left))
{
    if (place_meeting(x,y,drop_object1))
    {
        script_execute(drop_script1)
    }
    if (position_meeting(x,y,drop_object2))
    {
        script_execute(drop_script2)
    }
    if (position_meeting(x,y,drop_object3))
    {
        script_execute(drop_script3)
    }
    x = startX;
    y = startY;
    isClicked = false;
}
