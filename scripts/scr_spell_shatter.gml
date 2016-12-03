///scr_spell_shatter(Symbole)
var obj = argument0
var target_state = obj.state;
with(instance_find(obj_spinner_machine, 0))
{
    var Destroyed = 0;
    inPosition = false
    for(var i = 0; i < numberOfColumns; i++)
    {
        for(var j = 0; j < symbolsPerColumn; j++)
        {
            if(symbolObject[i,j].state = target_state)
            {
                scr_spinner_shift(symbolObject[i,j],i,j,0)
                j -= 1;
                if(j < numberOfRows)
                {
                Destroyed += 1;
                }
            }
        }
    }
    show_debug_message("shatterd: " + string(Destroyed));
    if(global.turn == 1)
    {
        scr_unit_takedamage(global.player[2], 10*Destroyed);
    }
    else if(global.turn == 2)
    {
        scr_unit_takedamage(global.player[1], 10*Destroyed);
    }
    
    instance_create(0,0,obj_shatter_timer);
}
