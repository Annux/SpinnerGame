///scr_spinner_check_adjacent_symbols(column)
var i = argument0;
for(var j = 0; j < numberOfRows; j++)
        {
        var highest_match = 0;
        if(scr_spinner_check_spin_matchs(global.turn,i,j))
            {            
            midSpinMatches[j] += 1;
            if (midSpinMatches[j] > highest_match)
                {
                highest_match = midSpinMatches[j]
                }                    
            }
        else
            {
            midSpinMatches[j] = 0;
            }
        if (highest_match > 0)
            {
            audio_sound_pitch(snd_match_hit,1 + (highest_match / 5));   
            audio_play_sound(snd_match_hit,1,false);
            }
        }
        
    repeat(numberOfRows)
        {
        midSpinMatches[j] = 0;
        }
