/**
THIS IS JUST AN EXAMPLE SCRIPT. attach a copy of this to the create event of the object
* you want to drag and drop, as well as scr_dragAndDrop to the step event.
*/

isClicked = false;

/**
* Set to "noone" all of the scripts/objects that don't need to be used
* Match the script with the objec (e.g. if you want scr_sample to go off 
* when you hover over obj_example then set hover_script1 to scr_sample and 
* hover_object1 to obj_example.
*/


start_script = noone; //script that runs when you click the object
spell_subject[0] = noone; //objects to check for hover_scriptX
hover_script[0] = noone; //scrips that runs when you hover another object.
drop_script[0] = noone; //scrips that runs when you drop the object

drop_object1 = noone;  //objects to check for drop_scriptX

startX = x; //position before you click.
startY = y;
xDiff = 0;  //Distance between mouse and x.
yDiff = 0;  //Distance between mouse and y.
