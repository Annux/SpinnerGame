///scr_get_weighted_index(weight 1,weight 2,weight...)

//can take up to 15 arguments or and array and returns an random int value based on the number weight
//values given

var i = 0;
var total = 0;

if (argument_count == 1)
    {
    if (is_array(argument[0]))
        {
        var array = argument[0];
        
        repeat(array_length_1d(array))
            { 
            total += array[i]
            i++;
            }
        }
    else
        {
        return 0;
        }
    }
else
    {
    
    var array;
    repeat(argument_count)
        {    
        total += argument[i]; 
        array[i] = argument[i]   
        i++;
        }

    }
    
i = 0;
var rand = irandom(total);
repeat(array_length_1d(array))
    {
    total -= array[i];
    if (total < rand)
       {
       return i;
       }   
    i++;
    }
