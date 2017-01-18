// The Player creates a heirarchy of objects which all store references of their children and can be referenced in the following ways
// player
// -> myAvatar (the player character portrait)
// -> myHUD (the health & mana bar frame)
//      -> myHUD.healthBar
//      -> myHUD.manaBar[1, 2, 3, 4]
// -> myBanner (the banner that hangs below the player icon)
//      -> myBanner.spellButton[1, 2, 3, 4]

{
    myAvatar = instance_create(x, y, obj_player_avatar);

    hudX = x + (sprite_width / 3)
    bannerY = y + (sprite_height / 4)
    
    myHUD = instance_create(hudX, y, obj_HUD);
    global.HUD[1] = myHUD;

    myBanner = instance_create(x, bannerY, obj_banner_blue);
    global.banner[1] = myBanner;

    //////////////////////    
    // CLASS SETUP //
    switch(global.playerClass)
    {
        case (class.warrior):
            scr_warrior_create();
            break;
        case (class.thief):
            scr_thief_create();
            break;
        case (class.acolyte):
            scr_acolyte_create();
            break;
        case (class.wizard):
            scr_wizard_create();
            break;
    }
    
    //////////////////////
    // BASE STATS //
    playerNumber = 1;
    myHUD.healthBar.curHP = myHUD.healthBar.maxHP;
    for(var n = 0; n < global.numManaBars; n++)
    {
        myHUD.manaBar[n].maxMana = 50;
    }
    
    ////////////////////
    // ANIMATION //
    curTimer = 0;
    
    // shake animation
    isShaking = false;
    shakeDuration = .4 * room_speed;
    shakeIntensity = 0; // the shake intensity is equal to the amount of damage received * the shake modifier
    shakeMod = .6;
    initX = x;
    initY = y;
}
