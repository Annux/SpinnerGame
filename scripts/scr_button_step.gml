// the button is not pressed
if(!buttonActive)
{
    // the mouse is hovering over the button
    if(position_meeting(mouse_x,mouse_y,self)  && buttonEnabled)
    {
        image_index = selectedSprite;
        // the mouse is pressed while on the button
        if(mouse_check_button_pressed(mb_left))
        {
            buttonActive = true
        }
    }
    // the button isn't touching the mouse
    else
    {
        image_index = normalSprite;
        buttonActive = false
    }
}
// the mouse is held down while on the button
else
{
    image_index = pressedSprite;
    
    // the mouse click is released
    if(mouse_check_button_released(mb_left))
    {
        buttonPressed = true
        buttonActive = false
    }
    // the mouse leaves the button
    else if(!position_meeting(mouse_x,mouse_y,self))
    {
        buttonActive = false;
    }
}
