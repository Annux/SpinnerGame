// This script basically just makes sure symbols which are out of the field of view ->
// -> are invisible and symbols screen wrap from bottom to top.
i = argument0 // the column variable
j = argument1 // the row variable

////// VISIBILITY //////
////////////////////////
// turn on/off the symbols that are/aren't in the center
if(symbolObject[i, j].y > botVisLimit || symbolObject[i, j].y < topVisLimit)
{
    symbolObject[i, j].visible = false;
}
else
{
    symbolObject[i, j].visible = true;
}

// loop the lowest symbol into the top position, with offset
if(symbolObject[i, j].y > bottomMostLimit && slotState = 1)
{
    var offset = symbolObject[i, j].y - bottomMostLimit;
    scr_spinner_shift(symbolObject[i, j], i, j, offset);
}

/*
////// GROWING & SHRINKING //////
/////////////////////////////////
// Grow/shrink the image based on its distance from the center
// Find a value between 0 and 1 that represents how far away the symbol is from the central region, with 0 being far and 1 being close
var shrinkLerpVal = 1;
if(symbolObject[i,j].y > rowCenter + rowSeperation*2*global.sizeH)
{
    shrinkLerpVal = abs((symbolObject[i,j].y - room_height)/(rowCenter + rowSeperation*2*global.sizeH - room_height));
}
else if(symbolObject[i,j].y < rowCenter - rowSeperation*2*global.sizeH)
{
    shrinkLerpVal = symbolObject[i,j].y/(rowCenter - rowSeperation*2*global.sizeH)
}
clamp(shrinkLerpVal, 0, 1);

symbolObject[i, j].image_xscale = symbolObject[i, j].orig_scale*shrinkLerpVal;
symbolObject[i, j].image_yscale = symbolObject[i, j].orig_scale*shrinkLerpVal;
