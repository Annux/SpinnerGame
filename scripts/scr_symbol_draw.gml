///scr_symbol_draw()

stretchX = 1 - sqrt(abs(vspeed*.001)) * .7;
stretchY = 1 + sqrt(abs(vspeed*.001)) * .7;

//draw_self()
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*stretchX,image_yscale*stretchY, 0, c_white, 1);

if (show_status)
{
    draw_sprite(status_effect_sprite,image_index,x,y)
}
