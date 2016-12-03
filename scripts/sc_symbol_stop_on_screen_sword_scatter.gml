scr_spinner_set_pre_match_delay(10);
burst_scale = 0.8;
show_debug_message("Sword Attack");

var damageVal = 1;

if (global.turn == 1)
    {
    scr_unit_takedamage(global.player[2], damageVal);
    }
else if (global.turn == 2)
    {
    scr_unit_takedamage(global.player[1], damageVal);
    }

