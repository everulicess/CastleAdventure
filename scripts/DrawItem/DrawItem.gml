function DrawItem(itemId, pos){
var item = GetItem(itemId);
var itemDef = global.items [itemId];
var s = 1;
	if (item != noone){
		if !instance_exists(oControllerSwitch){
			//draw_text(x+40, y+35*pos,itemDef[ITEM_DEF_NAME]);
				draw_sprite_ext ((itemDef[ITEM_DEF_SPRITE]), 0, x+30, y+50*pos, s, s, 0, -1, 1);
					draw_text_transformed(x, y+46*pos, item[INVENTORY_QUANTITY], 3, 3, 0);
		}
	}
}