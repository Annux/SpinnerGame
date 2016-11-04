if(global.turn == 1)
{
    scr_unit_takedamage(global.player[2], damageVal);
    var lightningSource = instance_create(global.spellFirePosX[1]+100, global.spellFirePosY, obj_lightningSource);
    var lightning = instance_create(global.spellFirePosX[1], global.spellFirePosY, obj_lightning);
    lightning.finalTargetX = global.spellFirePosX[2];
    scr_deduct_action();
}
else if(global.turn == 2)
{
    scr_unit_takedamage(global.player[1], damageVal);
    var lightningSource = instance_create(global.spellFirePosX[2]-100, global.spellFirePosY, obj_lightningSource);
    var lightning = instance_create(global.spellFirePosX[2], global.spellFirePosY, obj_lightning);
    lightning.finalTargetX = global.spellFirePosX[1];
    scr_deduct_action();
}
lightning.finalTargetY = global.spellFirePosY;
lightning.duration = spellEffectDur;
lightning.alarm[0] = spellEffectDur;
lightning.image_xscale = 0;
