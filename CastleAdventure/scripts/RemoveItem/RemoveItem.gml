function RemoveItem(itemId){
	var item= GetItem(itemId);
	
	if (item != noone){
		var pos = ds_list_find_index(oInventory.inventory, item)
		ds_list_delete(oInventory.inventory,pos);
	}

}
