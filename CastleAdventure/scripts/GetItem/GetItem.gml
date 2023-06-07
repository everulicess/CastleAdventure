function GetItem(itemId){
		var length = ds_list_size(oInventory.inventory);
		
		for(var i=0; i<length; i++){
			var item = oInventory.inventory[|i];
			
			if(item[INVENTORY_ITEM] == itemId){
				return item;
			}
		}
	return noone;
}