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
}
