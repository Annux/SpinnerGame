if (canDrag)
{
    if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) && !isClicked)
    {
        xDiff = mouse_x - x;
        yDiff = mouse_y - y;
        isClicked = true;
        depth = maxDepth;
        if (start_script != scr_null)
            {
            script_execute(start_script);
            }
    }
    }
var obj = noone;

if (isClicked)
{
    x = mouse_x - xDiff;
    y = mouse_y - yDiff;
    var i = 0;
    repeat(numberOfHoverEntries)
    {
        obj = collision_point(x,y,hover_objects[i],true,true)
        if (obj)
        {
            script_execute(hover_scripts[i])
        }
    ++i;
    }
}

if (mouse_check_button_released(mb_left))
{
    isClicked = false;
    depth = origDepth;
    var i = 0;
    repeat(numberOfDropEntries)
    {
        obj = collision_point(x,y,drop_objects[i],true,true)
        if (obj != noone)
        {
            script_execute(drop_scripts[i],obj);
            event_user(0);
        }
    ++i;
    }
}


//move the dragable object back to its start location if returnToStart is true
if (!isClicked && returnToStart)
    {
    if (x != startX || y != startY)
        {
        x += (startX - x) / movementSmoothing;
        y += (startY - y) / movementSmoothing;
        
        if (abs(startX - x) <= 1)
            {
            x = startX
            }
            
        if (abs(startY - y) <= 1)
            {
            y = startY
            }
        }
    }
    
return obj;

