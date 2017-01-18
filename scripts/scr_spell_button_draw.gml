draw_self();
if(spellIcon != 0)
{
    color = c_white
    if(!buttonEnabled)
    {
        color = c_black
    }
    draw_sprite_ext(spellIcon, 0, x, y, current_scale, current_scale, 0, color, 1);
}
