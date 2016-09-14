{
    var sizeH = global.sizeH;
    
////////////
// SETTING UP POSITIONS //
    // Slot machine
    centerX = global.deviceWidth /2;
    centerY = global.deviceHeight /2;

    // Margins
    leftMargin = 36*sizeH;
    rightMargin = room_width - leftMargin;
    topMargin = 45*sizeH;
    bottomMargin = 50*sizeH;
    charIconRadius = 230*sizeH;
    
    // Character images
    player1X = leftMargin + charIconRadius
    player2X = rightMargin - charIconRadius
    playerY = topMargin + charIconRadius
    p1statbarsX = player1X + charIconRadius
    p2statbarsX = player2X - charIconRadius
    statbarsY = playerY // redundant?
    global.spellFirePosX[1] = player1X;
    global.spellFirePosX[2] = player2X;
    global.spellFirePosY = playerY;
    
    // spell buttons
    p1Banner1X = player1X; // redundant?
    p2BannerX = player2X // redundant?
    bannerY = playerY + charIconRadius/2
    
    p1SpellX = player1X; // redundant?
    p2SpellX = player2X // redundant?
    spellYOffset = 20*sizeH;
    SpellY = playerY + charIconRadius + spellYOffset;
    
    spellSprite[1,0] = spr_P1_Spell1;
    spellSprite[1,1] = spr_P1_Spell2;
    spellSprite[1,2] = spr_P1_Spell3;
    spellSprite[2,0] = spr_P2_Spell1;
    spellSprite[2,1] = spr_P2_Spell2;
    spellSprite[2,2] = spr_P2_Spell3;
    
    // mana bars
    /*pManaX = pSpellX*2;
    eManaX = room_width-pSpellX*2;
    manabarXOffset = 52*sizeH;*/
///////////

//////////
// CREATING SCENE OBJECTS, ADDING THEM TO ARRAY //
    // Create the player, enemy & healthbars
        objectArray[0] = instance_create(player1X, playerY, obj_player);  // delegates the player construction, including the banner,
        global.player[1] = objectArray[0];
        objectArray[1] = instance_create(player2X, playerY, obj_enemy);
        global.player[2] = objectArray[1];
    
    // create the statbars
        objectArray[2] = instance_create(p1statbarsX, statbarsY, obj_statbars);
        global.healthBar[1] = objectArray[2];
        global.healthBar[1].curHealth = global.player[1].curHP;
        global.healthBar[1].maxHealth = global.player[1].maxHP;
        
        objectArray[3] = instance_create(p2statbarsX, statbarsY, obj_statbars);
        global.healthBar[2] = objectArray[3];
        global.healthBar[2].curHealth = global.player[2].curHP;
        global.healthBar[2].maxHealth = global.player[2].maxHP;
        global.healthBar[2].direction = 180;
        global.healthBar[2].image_angle = global.healthBar[2].direction;
    
    // Create the main hud - the slot machine, info textbox and combat area
        objectArray[4] = instance_create(centerX, centerY, obj_slot_machine); // delegates the slot construction
        objectArray[5] = instance_create(centerX, centerY, obj_slot_BG);
        var index = 8;
    /*slot machinewindow*/ instance_create(centerX, centerY, obj_spinner_window);
    objectArray[4] = instance_create(centerX, centerY, obj_slot_machine);
    objectArray[5] = instance_create(centerX, centerY, obj_slot_BG);
    objectArray[6] = instance_create(centerX, characterY, obj_combat_area);
    objectArray[7] = instance_create(centerX, SpellAndManaY, obj_event_textbox);
    var index = 8;
    
    // Create the player & enemy buttons, store them in the global spell button array so they can be referenced by all scripts
    var target = global.numSpellButtons*2 + index;
    for(var i = global.numSpellButtons-1; index < target; i--)
    {
        objectArray[index] = instance_create(pSpellX, SpellAndManaY - spellYOffset*(global.numSpellButtons-(1+i)), obj_player_spell_button);
        global.spellButton[1,i] = objectArray[index];
        global.spellButton[1,i].sprite_index = spellSprite[1,i];
        index += 1;
        objectArray[index] = instance_create(eSpellX, SpellAndManaY - spellYOffset*(global.numSpellButtons-(1+i)), obj_enemy_spell_button);
        global.spellButton[2,i] = objectArray[index];
        global.spellButton[2,i].sprite_index = spellSprite[2,i];
        index += 1;
    }
    
        // Create the player & enemy mana bars, store them in the global mana bar array so they can be referenced by all scripts
    /*targetIndex = global.numManaBars*2 + index;
    for(var i = 0; index < targetIndex; i++)
    {
        objectArray[index] = instance_create(pManaX + manabarXOffset*i, SpellAndManaY, obj_mana_bar);
        global.manaBar[1,i] = objectArray[index];
        global.manaBar[1,i].maxMana = global.player[1].maxMana[i];
        global.manaBar[1,i].fullBar = manaSprite[i];
        index++;
        objectArray[index] = instance_create(eManaX - manabarXOffset*i, SpellAndManaY, obj_mana_bar);
        global.manaBar[2,i] = objectArray[index];
        global.manaBar[2,i].maxMana = global.player[2].maxMana[i];
        global.manaBar[2,i].fullBar = manaSprite[i];
        index++;
    }*/
    
    // turn on the buttons, set player 1 to current player
    global.buttonsOn = true;
    scr_switch_turns(2);
//////////*/
}
