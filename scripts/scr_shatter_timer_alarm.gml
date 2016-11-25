with (instance_find(obj_spinner_machine,0))
    {
    for(var q = 0; q < numberOfRows; q++)
        {
        scr_spinner_match_symbols_in_row_noncontiguous(q)
        }
    scr_deduct_action();
    }
    

