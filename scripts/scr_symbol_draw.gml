///scr_symbol_draw()
stretchX = max(.8, 1 - sqrt(abs(vspeed*.00175)) * .5);
stretchY = min(1.2, 1 + sqrt(abs(vspeed*.00175)) * .5);

var x_scale = image_xscale + burst_scale;
var y_scale = image_yscale + burst_scale;
    
//draw_self()
draw_sprite_ext(sprite_index, image_index, x, y, x_scale*stretchX,y_scale*stretchY, 0, image_blend, 1);
draw_sprite_ext(sprite_index, 1, x, y, x_scale*stretchX,y_scale*stretchY, 0, image_blend, fade_alpha);

if (show_status)
{
    draw_sprite(status_effect_sprite,image_index,x,y)
}

//draw_text(x,y,string(active))
