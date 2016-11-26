///scr_mana_gain_text_draw()
draw_set_colour(colour);
draw_set_alpha(image_alpha);
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_set_font(font_mana_gain)
draw_text_ext_transformed(x,y,string(amount),0,500,(image_xscale * baseSize) + (sin(bobble) * bobble_amount),(image_yscale * baseSize) + (cos(bobble) * bobble_amount),0);
//sin(bobble) * (bobble_amount * 100)
draw_set_colour(c_white);
draw_set_alpha(1);


