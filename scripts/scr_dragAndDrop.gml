// Mousing over spell
if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left))
{
    startX = x;
    startY = y;
    xDiff = mouse_x - x;
    yDiff = mouse_y - y;
    script_execute(start_script);
}

// Clicking spell
if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button(mb_left) && isClicked == false)
{
    isClicked = true;
}
// Dragging spell over spell subjects
else if (isClicked)
{
    x = mouse_x - xDiff;
    y = mouse_y - yDiff;
    for(var i = 0; array_length_1d(spell_subject); i++)
    {
        if (place_meeting(x, y, spell_subject[i]))
        {
            script_execute(hover_script[i]);
        }
    }
}
// Releasing spell
if (mouse_check_button_released(mb_left))
{
    for(var i = 0; array_length_1d(spell_subject); i++)
    {
        if (place_meeting(x, y, spell_subject[i]))
        {
            script_execute(drop_script[i])
        }
    }

    x = startX;
    y = startY;
    isClicked = false;
}
