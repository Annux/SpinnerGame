{
// SETTING UP POSITIONS //
    sizeH = global.sizeH

    // Margins
    topMargin = 45*sizeH;
    bottomMargin = 50*sizeH;
    leftMargin = 36*sizeH;
    rightMargin = room_width - leftMargin;
    playerIconWidth =  sprite_get_width(spr_Player1_Profile)*sizeH;
    playerIconHeight = sprite_get_height(spr_Player1_Profile)*sizeH;
    
    // Players
    player1MainX = leftMargin + playerIconWidth / 2;
    player2MainX = rightMargin - playerIconWidth / 2;
    playerMainY  = topMargin + playerIconHeight / 2;
    
    // Action Bar
    centerX = global.deviceWidth / 2;
    actionBarY = global.deviceHeight - sprite_get_height(spr_action_bar)*sizeH - bottomMargin;
    
    // Slot Machine
    spinnerTopMargin = playerMainY + sprite_get_height(spr_statbars)*sizeH / 2;  
    SpinnerY = (actionBarY - spinnerTopMargin) / 2 + spinnerTopMargin;
    
    global.spellFirePosX[1] = player1MainX; // placeholder
    global.spellFirePosX[2] = player2MainX; // placeholder
    global.spellFirePosY = playerMainY;     // placeholder

// CREATING SCENE OBJECTS, ADDING THEM TO ARRAY //
    // Create game manager
    instance_create(0, 0, obj_game_manager);

    // Create the characters
    objectArray[0] = instance_create(player1MainX, playerMainY, obj_player);
    global.player[1] = objectArray[0];
    
    objectArray[1] = instance_create(player2MainX, playerMainY, obj_enemy);
    global.player[2] = objectArray[1];
    
    // create the action box (where all the action counters are)
    objectArray[2] = instance_create(centerX, actionBarY, obj_action_bar);
    global.actionBar = objectArray[2];
    
    // Create the slot machine
    objectArray[3] = instance_create(centerX, SpinnerY, obj_spinner_machine);
    global.spinnerMachine = objectArray[3]
}
