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
            scr_set_animation_trigger(myAvatar, myAvatar.sprite[animstate.damaged], myAvatar.animDuration);
        }
        else
        {
            myHUD.healthBar.curHP = 0;
            scr_set_animation_trigger(myAvatar, myAvatar.sprite[animstate.lost], -1);
        }
        // start the shaker
        isShaking = true;
        shakeIntensity = amount*shakeMod;
        curTimer = 0;
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
        scr_set_animation_trigger(myAvatar, myAvatar.sprite[animstate.healed]);
    }
}
