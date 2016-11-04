var value = curHP/maxHP;

if(playerNumber == 1)
    draw_sprite_part_ext(sprite_index, 0, 0, 0, width*value, height, x, y-sprite_yoffset, image_xscale, image_yscale, c_white, 1);
else
    draw_sprite_part_ext(sprite_index, 0, width - width*value, 0, width*value, height, x-sprite_xoffset + (sprite_width - sprite_width*value), y-sprite_yoffset, image_xscale, image_yscale, c_white, 1);
