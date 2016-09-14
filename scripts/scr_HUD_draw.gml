if(playerNumber == 1)
    draw_sprite_ext(sprite_index,0,x,y,global.sizeH,global.sizeH,0,c_white,1);
else
    draw_sprite_ext(sprite_index,0,x,y-sprite_width*global.size,global.sizeH*scaleDirection,global.sizeH,0,c_white,1);
