// This script goes off after a set period of spinning, as determined by 'spinDuration'
curStoppingColumn++;
i = curStoppingColumn
if(i < numberOfColumns - 1)
{
    alarm[0] = spinDelayPrCol*room_speed
}
  
var index = random_range(0, ds_list_size(spinnerList[i]) - 1) 

for(var j = 0; j < symbolsPerColumn; j++)
{
    //Randomly resort the symbolObjects (while retaining their order)
    symbolObject[i, j].object = ds_list_find_value(spinnerList[i], index);  
    with(symbolObject[i,j])
        instance_change(object, true);
    index++;
    if(index >= ds_list_size(spinnerList[i]))
        index = 0;
}
// reset variables needed for stopping
colState[i] = 1;
curSpinDecel = spinDecel;
