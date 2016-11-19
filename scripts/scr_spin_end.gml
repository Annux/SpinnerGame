i = argument0;
for(var j = 0; j < symbolsPerColumn; j++)
    {
    symbolObject[i, j].vspeed = 0;
    symbolObject[i, j].y = rowPos[j];
    
    }

colState[i] = 4;

