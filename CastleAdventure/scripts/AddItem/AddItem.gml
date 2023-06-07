function AddItem(itemId, quantity){
	var item= GetItem(itemId);
	var itemDef = global.items [itemId];
	
	if (item!=noone) {
		item[INVENTORY_QUANTITY]= clamp(item[INVENTORY_QUANTITY] + quantity, 1, itemDef[ITEM_DEF_MAX]);
	} else {
		item[INVENTORY_ITEM] = itemId;
		item[INVENTORY_QUANTITY] = clamp(quantity, 1, itemDef[ITEM_DEF_MAX]);
		
		ds_list_add(oInventory.inventory, item);
	}
	
}