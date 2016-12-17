var bash = instance_create(global.spellFirePosX[1]+100, global.spellFirePosY, obj_bash);
bash.alarm[0] = spellEffectDur;
global.bashDamage = 0;
with (obj_symbol)
{

    if (self.state = obj_symbol.symbolState.red)
    {
        if (place_meeting(x,y,obj_spinner_machine))
        {
            global.bashDamage++;
        }
    }
}
reds = global.bashDamage;
global.bashDamage /= 9;
damageVal = 10 + power(10, (1+global.bashDamage)) + 3 * reds;
bash.damageVal = damageVal;
global.bashDamage = 0
//I love you;
