{
// SETTING UP POSITIONS //
    sizeH = global.sizeH

    // Margins
    topMargin = 45*sizeH;
    bottomMargin = 50*sizeH;
    leftMargin = 36*sizeH;
    rightMargin = room_width - leftMargin;
    playerIconWidth =  sprite_get_width(spr_Player1_Profile)*global.sizeH;
    playerIconHeight = sprite_get_height(spr_Player1_Profile)*global.sizeH;
    spinnerTopMargin = topMargin + playerIconHeight
    
    // Slot machine
    centerX = global.deviceWidth /2;  
    //centerY = global.deviceHeight /2;
    SpinnerY = (global.deviceHeight - spinnerTopMargin) / 2 + spinnerTopMargin
    
    // Players
    player1MainX =  leftMargin + playerIconWidth / 2;
    player2MainX = rightMargin - playerIconWidth / 2;
    playerMainY  =  topMargin + playerIconHeight / 2;
    
    global.spellFirePosX[1] = player1MainX; // placeholder
    global.spellFirePosX[2] = player2MainX; // placeholder
    global.spellFirePosY = playerMainY;     // placeholder

// CREATING SCENE OBJECTS, ADDING THEM TO ARRAY //
    // Create the characters
    objectArray[0] = instance_create(player1MainX, playerMainY, obj_player);
    global.player[1] = objectArray[0];
    objectArray[1] = instance_create(player2MainX, playerMainY, obj_enemy);
    global.player[2] = objectArray[1];
    
    // Create the slot machine
    objectArray[3] = instance_create(centerX, SpinnerY, obj_spinner_machine);
}

