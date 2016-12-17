///scr_spinner_parse_footprint(string)
footPrint = 0;

var input = argument0;
var parsePos = 0;
var parseCount = 0;


for (var i = 0;i < numberOfColumns; ++i)
    {
    
    for (var j = 0;j < numberOfRows; ++j)
        {
        
        //Parse string to extract the data 
        parsPos += parseCount;  
        parseCount = 1;  
        
        var overload = 0;       
        while(string_char_at(input,parsePos + parseCount) != ',') //look for the next break in the data
            {
            parsCount+=1
            ++overload
            if (overload > 50)
                {
                //somthing went wrong =(
                show_debug_message("breaking out of parsing loop")
                parsPos = 0
                parseCount = 1;
                break;
                }
            }
            
        var state = string_copy(input,parsPos,parsCount-1); //get data out of the string 
        show_debug_message("FootPrint[" + string(i) + "," + string(j) + "] is set to " + string(state))     
        footPrint[i,j] = state;

        }
    }


    
    

    

