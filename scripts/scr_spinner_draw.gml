draw_sprite_ext(spr_Spinner_Frame, 0, x, y, global.sizeH, global.sizeH, 0, c_white, 1)
draw_self();

/*for(var i = 0; i < numberOfColumns; i++)
{
    for(var j = 0; j < symbolsPerColumn; j++)
    {
        draw_text(symbolObject[i,j].x, symbolObject[i,j].y, string(i) + " " + string(j))
    }
}
