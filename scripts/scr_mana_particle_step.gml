var z = sin(pi * pos) * -arc
x = start_x + (dist_x * pos)
y = start_y + (dist_y * pos) + z

image_angle = image_angle+3

if (pos >= 0.98)
    {    
    event_user(0)    
    instance_destroy();
    }
else
    {
    pos += (1 - pos) / smoothing
    var obj = instance_create(x,y,obj_mana_particle_trail);
    obj.type = type;
    }


