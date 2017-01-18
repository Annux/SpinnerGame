if(spellCost > 0)
{
    draw_self();
    draw_set_font(font_manabar);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_transformed(x, y, string(spellCost), 1.5*global.sizeH, 1.5*global.sizeH, 0);
}
else
{
    draw_sprite_ext(sprite_index, 0, x, y, .25, .25, 0, c_gray, 1);
}
