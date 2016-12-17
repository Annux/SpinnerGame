///scr_spinner_footprint_create_footprint_string(player)

var player = argument0;

player = clamp(player,1,2)
var map = symbolsStats[player - 1]

var line = ""; //the eventual output of this function
var matchesMade = ds_stack_create(); //stores what matches of what kind will be made



for(var i = 0; i < numberOfRows; i++ )
    {
    
    /***************************************************
      GENERATE THE MATCHES
     ***************************************************/
    
    var tempString = "";  //a temperary string to, once complete, make part of the line
        
    var spaceRemaining = numberOfColumns; //how much space is there to fill in a row

    var matches = 0 //how many total matches are made
    
    while(spaceRemaining > 0) //while there is still space remaining
        {
        var matchIndex = scr_get_weighted_index(noMatchWeight,match2Weight,match3Weight,match4Weight,match5Weight); //get a weighted random match    
        var matchSize = matchIndex + 1; //how much space a match takes up in the string
        
        if (matchSize <= spaceRemaining) // will the match fit in the string?
            {
            spaceRemaining -= matchSize; // add the match and decriment the spaceRemaining
            
            ds_stack_push(matchesMade,matchIndex); // incement the match that was made
            matches += 1 // incement the number of total matches made
            }   
        else
            {
            } 
        }
    
    
    /***************************************************
      ARRANGE THE MATCHES
     ***************************************************/
        
    var charIndex = 1; //stores a int that will be later converted to a char for parsing purposes 
      
    var overload = 0;//just a percaution       
    var tempString = "";// string to assemble the line in
    
    var lastIndex = -1;// used to mke sure the same symbol state isent chosen twice;
    
    repeat(ds_stack_size(matchesMade))  // are there any matches left to arrange
        {
        
        /***************************************************
          Save all match strings to a list
          then add all the strings in the list together
          then add them to tempString
         ***************************************************/
   
        
        var m = ds_stack_pop(matchesMade) // pops the stack and stores its value;
        
        var weights = 0; // the weights to meassure
        for(var q =0; q < ds_list_size(symbolTypes[player-1]); ++q) // loops through all the symbol types
            {
            var w = ds_list_find_value( symbolTypes[player-1],q ); // stores the int value of the symbol state
            var vals = ds_map_find_value(map,w); // is the weight of the match value of the symbol state to be added the array of weights
            weights[q] = vals[m] // adds the weight to the array of weights
            }
        
        var indexToAdd = scr_get_weighted_index(weights); // pick a random symbol state based on the previously determained weights
        
        //holy fuck, who is actualy taking the time to read all this... I do not envy you... 
        
        while(indexToAdd = lastIndex) // make sure the symbol state is not the same as the last
            {
            indexToAdd = scr_get_weighted_index(weights) //picks a new state untill it no longer equils the previous state
            
            overload += 1; //just a percaution
            if (overload > 10)//still a percaution
                {
                show_debug_message("Stuck in look while makeing footprint, how did you even do that?"); //you fucked up
                break;
                }
            }
        lastIndex = indexToAdd; // keep track of the previously selected symbol state
        
        var char = string(indexToAdd)// converts the selected state to a string
        
               
        repeat(m + 1)
            {
            tempString +=  char //add match to string
            }
        
        
        
        charIndex += 1 //incement the char that we are using
        
        }
          
    line[i] = tempString //add the temp string to the lines
    }
    
ds_stack_destroy(matchesMade);

var i = array_length_1d(line)-1   
repeat(array_length_1d(line))
    {
    show_debug_message(line[i])
    i-=1
    }
    







