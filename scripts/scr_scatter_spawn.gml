//creates the type of scatter symbols
instance_create(0,0, argument1)

for(var scatterNum = 0; scatterNum < 3; scatterNum++)
{
    with (obj_slot_machine.symbolObject[scatterNum,1])
    {
        ds_list_add(obj_slot_machine.reserveList[scatterNum], obj_slot_machine.symbolObject[scatterNum,1])
        instance_destroy();
    }
    obj_slot_machine.symbolObject[scatterNum,1] = instance_create(obj_slot_machine.colPos[scatterNum], obj_slot_machine.rowPos[1],argument0)
}
