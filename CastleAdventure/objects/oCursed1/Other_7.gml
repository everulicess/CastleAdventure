if (sprite_index == sSlimeDeathred )
{
	global.kill += 1;
	instance_destroy(oTextBox)
if (room == LEVEL_2 && GetItem(ITEM_KEY_LEVEL_3) == noone 
		&& (GetItem(ITEM_KEY_LEVEL_3_1)==noone 
		||GetItem(ITEM_KEY_LEVEL_3_2)==noone
		||GetItem(ITEM_KEY_LEVEL_3_3)=noone)&&  global.money<=350)
{
	UseItem(ITEM_KEY_LEVEL_3_1);
		UseItem(ITEM_KEY_LEVEL_3_2);
		UseItem(ITEM_KEY_LEVEL_3_3);
		global.money = 350;
}
	oPlayer.playermovement = true;	
	audio_play_sound(snd_attackkilled, 30,false)
	instance_destroy();	
}
if (sprite_index == sHuman_1)
{
	global.save += 1;
	instance_destroy(oTextBox)
	if (keydrop != noone)
	{
		AddItem(keydrop, dropquantity);
		show_debug_message("you've received a key");
	}
if (room == LEVEL_2 && GetItem(ITEM_KEY_LEVEL_3) == noone 
	&& (GetItem(ITEM_KEY_LEVEL_3_1)==noone 
	||GetItem(ITEM_KEY_LEVEL_3_2)==noone
	||GetItem(ITEM_KEY_LEVEL_3_3)=noone)&& global.money<=350)
{
	UseItem(ITEM_KEY_LEVEL_3_1);
		UseItem(ITEM_KEY_LEVEL_3_2);
		UseItem(ITEM_KEY_LEVEL_3_3);
		global.money = 350;
}
	audio_play_sound(snd_transformed_slimes, 30,false)
	oPlayer.playermovement = true;
	instance_destroy()
}




