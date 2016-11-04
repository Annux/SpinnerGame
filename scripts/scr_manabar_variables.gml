if(instance_number(object_index) <= global.numManaBars)
{
    playerNumber = 1;
    scaleDirection = 1;
}
else
{
    playerNumber = 2;
    scaleDirection = -1;
}

curMana = 40;
maxMana = 40;
height = round(40 * global.sizeH)/2;
width = (sprite_get_width(spr_statbars) * global.sizeH) - (13*global.sizeH)
color = c_white;

barCenterX = x + (width / 2)*scaleDirection
