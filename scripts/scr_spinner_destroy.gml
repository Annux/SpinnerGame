// Destroy all the ds lists upon leaving the room so there is no memory leak
if(room != spinnerRoom)
{
    for(var i = 0; i < numberOfColumns; i++)
    {
        ds_list_destroy(spinnerList[i]);
        ds_list_destroy(symbolStockList[i]);
    }

    instance_destroy();
}
