function InitItem(){
	global.items[ITEM_KEY_LEVEL_1] = CreateItem("Room 1 key", "Unlocks Room 1", sKeyTop, Key_1, 1, 150)
	global.items[ITEM_KEY_LEVEL_2] = CreateItem("Room 2 key", "Unlocks Room 2", sKeyRight, Key_2, 1, 250)
	global.items[ITEM_KEY_LEVEL_3] = CreateItem("Room 3 key", "Unlocks Room 3", sKeyBottom, Key_3, 1, 350)
	global.items[ITEM_KEY_LEVEL_1_1] = CreateItem("top 1/3","", sKeyTop_1, Key_1, 1, 0)
	global.items[ITEM_KEY_LEVEL_1_2] = CreateItem("top 2/3","", sKeyTop_2, Key_1, 1, 0)
	global.items[ITEM_KEY_LEVEL_1_3] = CreateItem("top 3/3","", sKeyTop_3, Key_1, 1, 0)
	global.items[ITEM_KEY_LEVEL_2_1] = CreateItem("right 1/3","", sKeyRight_1, Key_2, 1, 0)
	global.items[ITEM_KEY_LEVEL_2_2] = CreateItem("right 2/3","", sKeyRight_2, Key_2, 1, 0)
	global.items[ITEM_KEY_LEVEL_2_3] = CreateItem("right 3/3","", sKeyRight_3, Key_2, 1, 0)
	global.items[ITEM_KEY_LEVEL_3_1] = CreateItem("bottom 1/3","", sKeyBottom_1, Key_3, 1, 0)
	global.items[ITEM_KEY_LEVEL_3_2] = CreateItem("bottom 2/3","", sKeyBottom_2, Key_3, 1, 0)
	global.items[ITEM_KEY_LEVEL_3_3] = CreateItem("bottom 3/3","", sKeyBottom_3, Key_3, 1, 0)

}