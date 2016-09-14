{    
    // CREATE myHUD & myBanner //
    hudX = x - (sprite_width / 3)
    bannerY = y + (sprite_height / 4)
    
    myHUD = instance_create(hudX, y, obj_HUD);
    global.HUD[2] = myHUD;
    
    myBanner = instance_create(x, bannerY, obj_banner_red);
    global.banner[2] = myBanner;
    
    myChar = instance_create(x, y, obj_player_character);
    //////////////////////

    // BASE STATS //
    playerNumber = 2;
    myHUD.healthBar.maxHP = 100;
    myHUD.healthBar.curHP = 100;
    for(var n = 0; n < global.numManaBars; n++)
    {
        myHUD.manaBar[n].curMana = 20;
        myHUD.manaBar[n].maxMana = 40;
    }
    
    // CLASS SETUP //
    enemyClass = class.warrior; // TODO: SET UP PLAYER CLASS VIA MENU SELECTION, ETC
    switch(enemyClass)
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
    
    TakeDamage = 0;
}
