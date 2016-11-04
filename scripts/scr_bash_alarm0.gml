if(global.turn == 1)
{
    scr_unit_takedamage(global.player[2], damageVal);
}
else if(global.turn == 2)
{
    scr_unit_takedamage(global.player[1], damageVal);
}
scr_deduct_action();

instance_destroy();
