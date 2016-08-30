//creates the type of scatter symbols
instance_create(0,0, argument1)

with (obj_slot_machine.symbolObject[1,1])
{
ds_list_add(obj_slot_machine.reserveList[1], obj_slot_machine.symbolObject[1,1])
instance_destroy();
}
obj_slot_machine.symbolObject[1,1] = instance_create(obj_slot_machine.colPos[1], obj_slot_machine.rowPos[1],argument0)


with (obj_slot_machine.symbolObject[2,1])
{
ds_list_add(obj_slot_machine.reserveList[2], obj_slot_machine.symbolObject[2,1])
instance_destroy();
}
obj_slot_machine.symbolObject[2,1] = instance_create(obj_slot_machine.colPos[2], obj_slot_machine.rowPos[1],argument0)

with (obj_slot_machine.symbolObject[3,1])
{
ds_list_add(obj_slot_machine.reserveList[3], obj_slot_machine.symbolObject[3,1])
instance_destroy();
}
obj_slot_machine.symbolObject[3,1] = instance_create(obj_slot_machine.colPos[3], obj_slot_machine.rowPos[1],argument0)




