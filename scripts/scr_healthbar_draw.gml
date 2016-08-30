draw_self()

var value = curHealth/maxHealth;
var color = merge_color(c_red, c_green, value);
draw_sprite_ext(fullBar,0,x,y,value*global.sizeH,global.sizeH,direction,color,1);
