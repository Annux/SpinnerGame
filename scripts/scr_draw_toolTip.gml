draw_self();

if (boxActive = true) //set text
{
    draw_set_font(font_toolTip);
    draw_set_halign (fa_left);
    draw_set_valign(fa_top);
    
    //draw box
    draw_sprite_ext( boxDraw, boxIndex, x, y, global.sizeH, global.sizeH, 0, c_white, 1 )
    
    //draw text
    draw_text_ext_transformed_color(x + 20*global.sizeH ,y + 20 * global.sizeH,boxText, 25*global.sizeH, boxW - 20 ,global.sizeH,global.sizeH,0,c_black,c_black,c_black,c_black,1)
}
