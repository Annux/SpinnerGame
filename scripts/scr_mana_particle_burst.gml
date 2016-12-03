///scr_mana_particle_burst(x,y,amount,type)
var xx = argument0;
var yy = argument1;
var amount = argument2;
var type = argument3;


repeat(amount)
    {
    var obj = instance_create(xx,yy,obj_mana_particle_trail);
    obj.speed = random_range(20,10);
    obj.direction = random(360)
    obj.friction = 1
    obj.type = type
    }
