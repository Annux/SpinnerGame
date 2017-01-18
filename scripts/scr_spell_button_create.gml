buttonEnabled = false;
canBeActivated = true;

// default variables
playerNumber = scr_find_my_player();
spellName = "Null";
spellScript = scr_null;
spellIcon = 0;
pickup_scale = 3
scale = 1;
scale_target = 1;
scale_smoothing = 4;
image_speed = 0;
origDepth = depth;
maxDepth = -1000;

// CREATE the manacost dots
radius = sprite_height / 2 + 10 * global.sizeH;

// set the rotations
if(playerNumber = 1)
{
    startingRot = 90 + 40;
    endingRot = startingRot + (180 - 45);
}
else
{
    startingRot = 90 - 40;
    endingRot = startingRot - (180 - 45);
}
rotPerDot = (endingRot - startingRot) / global.manaTypes;

// create them
for(var i = 0; i < global.manaTypes; i++)
{
    spellCost[i] = 0;

    xPos = x + lengthdir_x(radius, startingRot + i*rotPerDot);
    yPos = y + lengthdir_y(radius, startingRot + i*rotPerDot);
    spellCostDot[i] = instance_create(xPos, yPos, obj_spellcost_dot);
    spellCostDot[i].image_blend = global.ManaColor[i];
    spellCostDot[i].spellCost = spellCost[i];
}
