draw_set_font(global.font_main)
draw_set_color(c_white)
	draw_sprite_ext(sCoin, 4, x+20, y+22, 3.5, 3.5, 0,-1,1)
	draw_text_ext_transformed(x+72,y-6,string(global.money),3,20,4,4,0)

DrawItem(ITEM_KEY_LEVEL_1, 2);
DrawItem(ITEM_KEY_LEVEL_2, 3);
DrawItem(ITEM_KEY_LEVEL_3, 4);
DrawItem(ITEM_KEY_LEVEL_2_3, 5);
DrawItem(ITEM_KEY_LEVEL_3_3, 5);
DrawItem(ITEM_KEY_LEVEL_2_2, 6);
DrawItem(ITEM_KEY_LEVEL_3_2, 6);
DrawItem(ITEM_KEY_LEVEL_2_1, 7);
DrawItem(ITEM_KEY_LEVEL_3_1, 7);




