if(global.turn == 1)
{
    global.player[2].TakeDamage = 10;
    var lightningSource = instance_create(global.spellFirePosX[1]+100, global.spellFirePosY, obj_lightningSource);
    var lightning = instance_create(global.spellFirePosX[1], global.spellFirePosY, obj_lightning);
    lightning.finalTargetX = global.spellFirePosX[2];
}
else if(global.turn == 2)
{
    global.player[1].TakeDamage = 10;
    var lightningSource = instance_create(global.spellFirePosX[2]-100, global.spellFirePosY, obj_lightningSource);
    var lightning = instance_create(global.spellFirePosX[2], global.spellFirePosY, obj_lightning);
    lightning.finalTargetX = global.spellFirePosX[1];
}
lightning.finalTargetY = global.spellFirePosY;
lightning.duration = spellEffectDur;
lightning.alarm[0] = spellEffectDur;
lightning.image_xscale = 0;
