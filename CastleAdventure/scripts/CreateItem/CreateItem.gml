function CreateItem(name,description,sprite,action, maxquantity, price){
	var item;
	
	item[ITEM_DEF_NAME] = name;
	item[ITEM_DEF_DESCRIPTION] = description;
	item[ITEM_DEF_SPRITE] = sprite;
	item[ITEM_DEF_ACTION] = action;
	item[ITEM_DEF_MAX] = maxquantity;
	item[ITEM_DEF_PRICE] = price;
	
	return item;

}