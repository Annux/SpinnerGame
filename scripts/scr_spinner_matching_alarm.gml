///scr_spinner_matching_alarm()

if (current_match_row > -1)
    {
    scr_spinner_match_symbols_in_row(current_match_row)
    current_match_row -= 1
    
    alarm[2] = symbolCollectionDelay
    }
else
    {
    show_debug_message("Done Matching")
    scr_spinner_end_matching()
    }

