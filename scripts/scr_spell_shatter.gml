with(instance_find(obj_spinner_machine, 0))
{
    var bluesDestroyed = 0;
    inPosition = false
    for(var i = 0; i < numberOfColumns; i++)
    {
        for(var j = 0; j < symbolsPerColumn; j++)
        {
            if(symbolObject[i,j].object_index = obj_bluemana)
            {
                scr_spinner_shift(symbolObject[i,j],i,j,0)
                if(j < numberOfRows)
                    bluesDestroyed += 1;
            }
        }
    }
    show_debug_message(string(bluesDestroyed));
    if(global.turn == 1)
    {
        scr_unit_takedamage(global.player[2], 10*bluesDestroyed);
    }
    else if(global.turn == 2)
    {
        scr_unit_takedamage(global.player[1], 10*bluesDestroyed);
    }
    scr_deduct_action();
}
