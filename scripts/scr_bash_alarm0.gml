if(global.turn == 1)
{
    scr_unit_takedamage(global.player[2], damageVal);
}
else if(global.turn == 2)
{
    scr_unit_takedamage(global.player[1], damageVal);
}

instance_destroy();
