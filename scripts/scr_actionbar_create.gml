coinEdgeMargin = 1*image_xscale;
coinHeight = sprite_height - coinEdgeMargin;
coinY = y + (coinHeight + coinEdgeMargin)/2;
middleCoin = global.actionsPerTurn/2 + .5

if(global.actionsPerTurn > 0)
{
    coinPadding = (sprite_width - (coinEdgeMargin * 2)) / global.actionsPerTurn;
}
else
{
    coinPadding = 0;
}

for(var i = 0; i <= global.actionsPerTurn - 1; i++)
{
    var instance = instance_create(x + coinPadding*(i+1 - middleCoin), coinY, obj_actioncoin);
    instance.image_xscale = coinHeight/sprite_get_height(instance.sprite_index);
    instance.image_yscale = coinHeight/sprite_get_height(instance.sprite_index);
    global.actioncoin[i] = instance;
}