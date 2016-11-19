///scr_symbol_draw()
stretchX = max(.8, 1 - sqrt(abs(vspeed*.00175)) * .5);
stretchY = min(1.2, 1 + sqrt(abs(vspeed*.00175)) * .5);
    
//draw_self()
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*stretchX,image_yscale*stretchY, 0, image_blend, 1);

if (show_status)
{
    draw_sprite(status_effect_sprite,image_index,x,y)
}
