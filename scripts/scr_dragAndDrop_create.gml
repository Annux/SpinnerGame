///scr_dragAndDropCreate(returnToStart, optional onClick script)
isClicked = false; // If the object is being dragged
returnToStart = false;// if the object should return to its start position upon being let go of


if (argument_count == 1)
    {
    start_script = argument[0]; //script that runs when you click the object
    }
else
    {
    start_script = scr_null;
    }

numberOfHoverEntries = 0;
hover_scripts[0] = noone; //scrips that runs when you hover another object. 
hover_objects[0] = noone; //objects to check for hover_scriptX

numberOfDropEntries = 0;
drop_scripts[0] = noone; //scrips that runs when you drop the object
drop_objects[0] = noone; //objects to check for drop_scriptX

startX = x; //position before you click.
startY = y;
movementSmoothing = 1;
xDiff = 0;  //Distance between mouse and x.
yDiff = 0;  //Distance between mouse and y.

canDrag = true; // if the object can be moved or not


