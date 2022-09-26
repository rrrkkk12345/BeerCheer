/// @description Insert description here
// You can write your code in this editor

 global.score = 0

 var str = "0123456789";
 global.font = font_add_sprite_ext(font_strip10,str,false,0)
 
 draw_set_font(global.font);
 
 draw_set_color(c_red);
 
 draw_text(8,8,global.score)
 
























