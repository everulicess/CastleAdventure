shopOpen = false; //Is this shop open?
global.shop = false; //Is any shop open?

selected = 0;
selectedAnim = 0;

//Items
items = ds_list_create();


	ds_list_add(items,["Emerald Abyss Key", 150, ITEM_KEY_LEVEL_1, "Opens the gate at the top"])
	ds_list_add(items,["Sapphire Roads Key", 250, ITEM_KEY_LEVEL_2, "You can explore the roads..."])
	ds_list_add(items,["The Void key", 350, ITEM_KEY_LEVEL_3, "your path will be open to to THE VOID"])

itemCount = ds_list_size(items);

//GUI
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = (guiWidth - (menuWidth+menuMargin));



