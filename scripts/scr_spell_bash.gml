if(global.turn == 1)
{
    global.player[2].TakeDamage = 10;
}
else if(global.turn == 2)
{
    global.player[1].TakeDamage = 10;
}

var bash = instance_create(global.spellFirePosX[1]+100, global.spellFirePosY, obj_bash);
bash.alarm[0] = spellEffectDur
