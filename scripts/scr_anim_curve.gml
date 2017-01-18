///anim_curve(startValue,endValue,curveApexTime,apexIntensity,currentDuration,totalDuration)
// This script makes an animation curve between two points and returns the value of a specified time point on that line.
// Think of a grid where x = time, y = animation value.

/******************
// DEFINE VALUES //
******************/
// POINT 1: start of time (0), start value (startPos)
//var startDuration = 0;
var startPos = argument0;

// POINT 2: end of time (totDuration), end value (endPos)
var totDuration = argument5;
var endPos = argument1;

// POINT 3: point where the curve happens, how forcefully the point warps the path
// this one is a bit more complicated, but it's what makes the line into a curve
var curveApexTime = min(max(argument2, 0), 1); // curveApexTime should be between 0 and 1
var apexIntensity = argument3;                 // apexIntensity is how strong the pull of the apex is
var curveX = curveApexTime * totDuration;
var curveY = apexIntensity*(endPos - startPos) + startPos;
if(curveY == startPos)
{
    curveY = apexIntensity + startPos;
}

// POINT 4, current time (curDuration), current value (curValue)
var curDuration = argument4;
//var curValue = WHAT WE ARE TRYING TO FIND

// the smoothness of the line. Higher values make smoother animations, lower values reduce frame rate drops
var precision=200;


/**************
// MATH TIME //
***************/
//Define bezier lines
var line1=point_distance(0,startPos,curveX,curveY);    //Length between startPos and P1
var line2=point_distance(curveX,curveY,totDuration,endPos);    //Lenght between P1 and P2

var angle1=point_direction(0,startPos,curveX,curveY);    //Angle between startPos and P1
var angle2=point_direction(curveX,curveY,totDuration,endPos);    //Angle between P1 and P2

/********************
// CALCULATE LINES //
********************/
bx[0] = 0;
var curValue = lerp(startPos, endPos, curDuration/totDuration); // DEFAULT VALUE
for(var i = 0; i < precision; i++)
{
    //Define Q1
    q0x=lengthdir_x(line1*(i/precision),angle1);   
    q0y=startPos+lengthdir_y(line1*(i/precision),angle1);

    //Define Q2
    q1x=curveX+lengthdir_x(line2*(i/precision),angle2);
    q1y=curveY+lengthdir_y(line2*(i/precision),angle2);

    ql=point_distance(q0x,q0y,q1x,q1y);
    qa=point_direction(q0x,q0y,q1x,q1y);

    //Calculate B(t) using polar coordinates
    bx[i]=q0x+lengthdir_x(ql*(i/precision),qa);
    by[i]=q0y+lengthdir_y(ql*(i/precision),qa);

    // FINDING THE LINE
    if(bx[i] > curDuration)
    {
        curValue = lerp(by[i-1], by[i], (curDuration - bx[i-1])/(bx[i] - bx[i-1]));
        break;
    }
    else if(i = precision - 1)
    {
        curValue = lerp(by[i], endPos, (curDuration - bx[i])/(totDuration - bx[i]));
        break;
    }
    /*else if(i > 0)
    {
        draw_line(bx[i-1],by[i-1],bx[i],by[i]);
    }*/
}

/*draw_circle_colour(curveX, curveY, 3, c_blue, c_blue,false); // pull point
draw_circle_colour(curDuration, curValue, 3, c_blue, c_blue,false); // target point*/

return curValue;