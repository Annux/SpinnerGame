var bash = instance_create(global.spellFirePosX[1]+100, global.spellFirePosY, obj_bash);
bash.alarm[0] = spellEffectDur;
bash.damageVal = damageVal;

var xx = 0;
var yy = 0;

if(global.turn == 1)
{
    xx = global.player[2].x
    yy = global.player[2].y
}
else if(global.turn == 2)
{
    xx = global.player[1].x
    yy = global.player[1].y
}

instance_create(xx,yy,obj_sword_effects);

