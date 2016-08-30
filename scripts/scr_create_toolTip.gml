boxText = " " // the text that will beshown in the tooltip
boxDraw = spr_toolTip; //the sprite of the box to draw
boxIndex = 0;
boxW = 0; //width of the tooltip
boxH = 0; //height of the tooltip
boxActive = true //determines if the box is activated 

switch(argument0) //argument 0 is the object running the script. To define this properly just remove the "obj_" part of the object, or in case it's a class like a spell, simply find the name of the class.
{
    case "player": boxText = "This is you, the player. You are gorgeous, master of everything and everyone. You were born a king, a God. You have the power to come back from the f***ing dead. There is absolutely no one above you, no one except... #                    ...the Game Designer"
                break;
}

switch(argument1) //This is for the size of the tooltip.
{
    case "size1": boxDraw = spr_toolTip;
                boxIndex = 0;
                boxH = 280;
                boxW = 490;
                break;
}


