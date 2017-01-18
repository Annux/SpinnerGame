/// target of spell, amount of health in damage
var target = argument0
var amount = argument1

with(target)
{
    // Damage
    if(amount > 0)
    {
        if(myHUD.healthBar.curHP > amount)
        {
            myHUD.healthBar.curHP -= amount;
        }
        else
        {
            myHUD.healthBar.curHP = 0;
        }
        myChar.image_index = myChar.damageImg;
        shakeTimer = 10;
        // damage animation/sound/etc
    }
    
    // Healing
    else if(amount < 0)
    {
        // don't overheal
        if(myHUD.healthBar.maxHP - myHUD.healthBar.curHP > amount)
        {
            myHUD.healthBar.curHP -= amount;    
        }
        else
        {
            myHUD.healthBar.curHP = maxHP;
        }
        // heal animation/sound/etc
    }
<<<<<<< Updated upstream
=======
    
    //win/lose the game
    if (myHUD.healthBar.curHP <= 0)
    {
        instance_create(room_width/2, room_height/2,obj_win_lose)
        if (target = global.player[1])
        {
            obj_win_lose.image_index = 1;
        }
        if (target = global.player[2])
        {
            obj_win_lose.image_index = 0;
        }
    }
>>>>>>> Stashed changes
}
