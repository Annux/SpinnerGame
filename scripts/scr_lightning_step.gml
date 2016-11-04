{
    // This controls the duration and move the lightning at a fixed rate towards the oppoent
    curTime += 1;
    targetY = finalTargetY;
    if(curTime/(duration*.333) > 1)
    {
        targetX = finalTargetX;
        // update the health hud
        global.healthBar[1].curHealth = global.player[1].curHP;
        global.healthBar[2].curHealth = global.player[2].curHP;
    }
    else
        targetX = lerp(originX1, finalTargetX, curTime/(duration*.333))
    
    // this controls the actual drawing of the lightning
    endX1 = (targetX);
    endY1 = (targetY-5);
    endX2 = (targetX);
    endY2 = (targetY+5);
    angle = point_direction(obj_lightningSource.x, obj_lightningSource.y, targetX, targetY);
    distance = point_distance(obj_lightningSource.x, obj_lightningSource.y, targetX, targetY);
    scale = (distance / sprWidth);
    scaleY = (1);
    
    if (nextImage1 > 4)
    {
        with(obj_lightningSource)
        {
            alarm[0] = 1;
        }
        switch (subimageA1)
        {
            case 0: 
                subimageA1 = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
                break;
            case 1:
                subimageA1 = choose(0, 2, 3, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 2:
                subimageA1 = choose(0, 1, 3, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 3:
                subimageA1 = choose(0, 1, 2, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 4:
                subimageA1 = choose(0, 1, 2, 3, 5, 6, 7, 8, 9, 10);
                break;
            case 5:
                subimageA1 = choose(0, 1, 2, 3, 4, 6, 7, 8, 9, 10);
                break;
            case 6:
                subimageA1 = choose(0, 1, 2, 3, 4, 5, 7, 8, 9, 10);
                break;
            case 7:
                subimageA1 = choose(0, 1, 2, 3, 4, 5, 6, 8, 9, 10);
                break;
            case 8:
                subimageA1 = choose(0, 1, 2, 3, 4, 5, 6, 7, 9, 10);
                break;
            case 9:
                subimageA1 = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 10);
                break;
            case 10:
                subimageA1 = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
                break;
            default: 
                choose(0, 1, 2, 3, 4, 5);
        };
        nextImage1 = 0;
    };
    else
    {
        nextImage1 += random_range(3,4);
    };

    if (nextImage2 > 4)
    {
        with(obj_lightningSource)
        {
            alarm[0] = 1;
        }
        switch (subimageA2)
        {
            case 0: 
                subimageA2 = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
                break;
            case 1:
                subimageA2 = choose(0, 2, 3, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 2:
                subimageA2 = choose(0, 1, 3, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 3:
                subimageA2 = choose(0, 1, 2, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 4:
                subimageA2 = choose(0, 1, 2, 3, 5, 6, 7, 8, 9, 10);
                break;
            case 5:
                subimageA2 = choose(0, 1, 2, 3, 4, 6, 7, 8, 9, 10);
                break;
            case 6:
                subimageA2 = choose(0, 1, 2, 3, 4, 5, 7, 8, 9, 10);
                break;
            case 7:
                subimageA2 = choose(0, 1, 2, 3, 4, 5, 6, 8, 9, 10);
                break;
            case 8:
                subimageA2 = choose(0, 1, 2, 3, 4, 5, 6, 7, 9, 10);
                break;
            case 9:
                subimageA2 = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 10);
                break;
            case 10:
                subimageA2 = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
                break;
            default: 
                choose(0, 1, 2, 3, 4, 5);
        };
        nextImage2 = 0;
    };
    else
    {
        nextImage2 += random_range(3,4);
    };
    if (nextImage3 > 4)
    {
        with(obj_lightningSource)
        {
            alarm[0] = 1;
        }
        switch (subimageA3)
        {
            case 0: 
                subimageA3 = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
                break;
            case 1:
                subimageA3 = choose(0, 2, 3, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 2:
                subimageA3 = choose(0, 1, 3, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 3:
                subimageA3 = choose(0, 1, 2, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 4:
                subimageA3 = choose(0, 1, 2, 3, 5, 6, 7, 8, 9, 10);
                break;
            case 5:
                subimageA3 = choose(0, 1, 2, 3, 4, 6, 7, 8, 9, 10);
                break;
            case 6:
                subimageA3 = choose(0, 1, 2, 3, 4, 5, 7, 8, 9, 10);
                break;
            case 7:
                subimageA3 = choose(0, 1, 2, 3, 4, 5, 6, 8, 9, 10);
                break;
            case 8:
                subimageA3 = choose(0, 1, 2, 3, 4, 5, 6, 7, 9, 10);
                break;
            case 9:
                subimageA3 = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 10);
                break;
            case 10:
                subimageA3 = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
                break;
            default: 
                choose(0, 1, 2, 3, 4, 5);
        };
        nextImage3 = 0;
    };
    else
    {
        nextImage3 += random_range(3,4);
    };
    if (nextImage4 > 4)
    {
        with(obj_lightningSource)
        {
            alarm[0] = 1;
        }
        switch (subimageA4)
        {
            case 0: 
                subimageA4 = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
                break;
            case 1:
                subimageA4 = choose(0, 2, 3, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 2:
                subimageA4 = choose(0, 1, 3, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 3:
                subimageA4 = choose(0, 1, 2, 4, 5, 6, 7, 8, 9, 10);
                break;
            case 4:
                subimageA4 = choose(0, 1, 2, 3, 5, 6, 7, 8, 9, 10);
                break;
            case 5:
                subimageA4 = choose(0, 1, 2, 3, 4, 6, 7, 8, 9, 10);
                break;
            case 6:
                subimageA4 = choose(0, 1, 2, 3, 4, 5, 7, 8, 9, 10);
                break;
            case 7:
                subimageA4 = choose(0, 1, 2, 3, 4, 5, 6, 8, 9, 10);
                break;
            case 8:
                subimageA4 = choose(0, 1, 2, 3, 4, 5, 6, 7, 9, 10);
                break;
            case 9:
                subimageA4 = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 10);
                break;
            case 10:
                subimageA4 = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
                break;
            default: 
                choose(0, 1, 2, 3, 4, 5);
        };
        nextImage4 = 0;
    };
    else
    {
        nextImage4 += random_range(3,4);
    };
}
