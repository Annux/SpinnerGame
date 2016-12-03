///scr_mana_particle_create_new(x start,y start,x end, y end,type,value,max arc)

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var type = argument4;
var val = argument5;
var max_arc = argument6;


repeat(val)
    {
    var obj = instance_create(x1,y1,obj_mana_particle);
    
    obj.start_x = x1;
    obj.start_y = y1;
    obj.target_x = x2;
    obj.target_y = y2;
    
    obj.type = type;
    obj.value = 1;
    obj.arc = random_range(-max_arc,max_arc);
    
    with(obj)
        {
        
        dist_x = target_x - x;
        dist_y = target_y - y;
        
        smoothing = random_range(4,8);
        
        pos = 0
        }    
    }
