///scr_spinner_set_pre_match_delay(delay)
var delay = argument0;
if (instance_exists(obj_spinner_machine))
    {
    var obj = instance_find(obj_spinner_machine,0); //referance to the spinner machine
    obj.preMatchDelay = delay; //Set the Delay on the Spinner object
    };
    
// Wah 
