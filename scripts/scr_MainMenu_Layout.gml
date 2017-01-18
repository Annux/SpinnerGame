// Center of the screen
CenterX = global.deviceWidth /2;
CenterY = global.deviceHeight /2;

// Start button
instance_create(CenterX, room_height*4/5, obj_button); 

// Class selection
instance_create(CenterX, CenterY, obj_classSelect);
