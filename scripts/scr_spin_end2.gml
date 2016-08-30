i = argument0;
for(var j = 0; j < symbolsPerColumn; j++)
{
    symbolObject[i, j].vspeed = 0;
    var index = j - newFirstIndex[i];
    if(index < 0)
        index = j + symbolsPerColumn - newFirstIndex[i];
    symbolObject[i, j].y = rowPos[index];
}

colState[i] = 4;
