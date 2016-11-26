///scr_mana_gain_text_create_new(x,y,amount,size,colour)
var xx = argument0;
var yy = argument1;
var amount = argument2;
var size = argument3;
var col = argument4

var obj = instance_create(xx,yy,obj_mana_gain_text);

obj.baseSize = size;
obj.amount = amount;
obj.colour = col;

with (obj)
    {
    bobble = 0;
    bobble_amount = 0.5;
    bobble_amount_target = 0;
    bobble_amount_smoothing = 30;
    bobble_speed = 0.2;
    
    active = true;
    alarm[0] = 80;
    image_alpha = 1;
    }



