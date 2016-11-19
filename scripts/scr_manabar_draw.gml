var value = curMana/maxMana;
if(playerNumber == 1)
    draw_healthbar(x, y - height, x + width, y + height, value*100, c_black, color, color, 0, false, false);
else
    draw_healthbar(x - width, y - height, x, y + height, value*100, c_black, color, color, 1, false, false);
    
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(font_manabar);
draw_set_color(c_white);
draw_text(barCenterX, y, curMana);
