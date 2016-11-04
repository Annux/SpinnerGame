// Center of the screen
CenterX = global.deviceWidth /2;
CenterY = global.deviceHeight /2;

// Start button
instance_create(CenterX, CenterY+CenterY/2, obj_button); 

// Class selection
instance_create(CenterX, CenterY/1.5, obj_classSelect);
