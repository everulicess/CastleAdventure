function UseItem(itemId){
		var item = GetItem(itemId);
		
		if (item != noone){
			var itemDef = global.items[itemId];
			var action= itemDef[ITEM_DEF_ACTION];
			
			action();
			
			item[INVENTORY_QUANTITY] -=1;
			
			if (item[INVENTORY_QUANTITY]<=0) {
				RemoveItem(itemId);
			}
		}
	
}