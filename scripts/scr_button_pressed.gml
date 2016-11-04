// if you press this button, highlight it
if(position_meeting(mouse_x,mouse_y,self) && buttonEnabled)
{
    buttonSelected = true
    image_index = imgSelect
}
// otherwise if you press somewhere else, unhighlight it
else if(canBeActivated)
{
    buttonActivated = false;
    image_index = imgNormal
}
