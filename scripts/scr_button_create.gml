// sprites
image_index = 0;
image_speed = 0;
imgNormal = 0;
imgSelect = 1;
imgPress  = 2;
imgActive   = 3;
imgDisabled = 4;

// logic variabes
buttonSelected = false; // is button highlighted (currently being held down)
buttonActivated = false; // is button 'activated' (the last thing clicked)
buttonEnabled = true;  // is button available to click

canBeActivated = false; // if true, this button will remain highlighted so long as it was the last thing tapped
