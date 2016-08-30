/*
// MOVING LAST SLOT FROM SLOT TO STOCK
{
    ds_list_add(obj_slot_machine.reserveList[1], other);
    with(other)
        {
            instance_destroy();
        }
}
