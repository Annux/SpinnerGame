var z = sin(pi * pos) * -arc
x = start_x + (dist_x * pos)
y = start_y + (dist_y * pos) + z

image_angle = image_angle+3

if (pos >= 1)
    {
    
    if (!done)
        {
        repeat(20)
            {
            instance_create(x+random_range(400,-400),y+random_range(200,-200),obj_smoke_cloud_partical)
            }
        alarm[0] = 1.2 * room_speed
        done = true
        visible = false
        }
    }
else
    {
    pos += pos_sp
    }





