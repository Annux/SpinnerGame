// unclick the button, which either turns it off, or 'activate's it
if(buttonSelected)
{
    image_index = imgNormal
    buttonSelected = false;
    if(canBeActivated)
    {
        image_index = imgActive
        buttonActivated = true;
    }
}
