/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(main_font);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(x + xCenter , y + yCenter, "START" , image_xscale, image_yscale, 0);
draw_set_color(c_black);
