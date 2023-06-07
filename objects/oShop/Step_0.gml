//Open shop for testing
/*if (!shopOpen && place_meeting(x, y+10, oPlayer) && keyboard_check_pressed(ord("E"))) 
{
	shopOpen = true;
	global.shop = true;
	
}*/
//Close shop
//else 
if (shopOpen && keyboard_check_pressed(vk_escape)) {
	shopOpen = false;
	global.shop = false;
	oPlayer.playermovement = true
}
//Shop is open
if (shopOpen) {
	
	selectedAnim = lerp(selectedAnim, selected, 0.1);
	//Down
	if (keyboard_check_pressed(ord("S"))){
		selected++;
		if (selected == itemCount) selected = 0;
	}
	//Up
	if (keyboard_check_pressed(ord("W"))){
		selected--;
		if (selected < 0) selected = itemCount-1;
	}
	//Buy
	var arr = items[| selected];
	var price = arr[1];
	var name = arr[2];
	
	if (keyboard_check_pressed(vk_enter) && global.money >= price) {
		AddItem(name, 1)
		audio_play_sound(snd_buy,30,false);
		//var pos = ds_list_find_index(items, arr);
		//ds_list_delete(items,pos);
		global.money -= price;
	}
}
depth=-y;
