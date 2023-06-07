if (sprite_index == sSlimeDeath )
{
	global.kill += 1;
	instance_destroy(oTextBox)
	if room == LEVEL_1 && GetItem(ITEM_KEY_LEVEL_2) == noone && (GetItem(ITEM_KEY_LEVEL_2_1)==noone ||GetItem(ITEM_KEY_LEVEL_2_2)==noone||GetItem(ITEM_KEY_LEVEL_2_3)=noone)
{
	UseItem(ITEM_KEY_LEVEL_2_1);
		UseItem(ITEM_KEY_LEVEL_2_2);
		UseItem(ITEM_KEY_LEVEL_2_3);
		global.money = 250;
}

	oPlayer.playermovement = true;	
	audio_play_sound(snd_attackkilled, 30,false)
	instance_destroy()
	
}

if (sprite_index == sHuman_3)
{
	global.save += 1;
	instance_destroy(oTextBox)
	if (keydrop != noone)
	{
		AddItem(keydrop, dropquantity)
		show_debug_message("you`ve received a key");
	}
	if room == LEVEL_1 && GetItem(ITEM_KEY_LEVEL_2) == noone && (GetItem(ITEM_KEY_LEVEL_2_1)==noone ||GetItem(ITEM_KEY_LEVEL_2_2)==noone||GetItem(ITEM_KEY_LEVEL_2_3)=noone)
{
	UseItem(ITEM_KEY_LEVEL_2_1);
		UseItem(ITEM_KEY_LEVEL_2_2);
		UseItem(ITEM_KEY_LEVEL_2_3);
		global.money = 250;
}

	audio_play_sound(snd_transformed_slimes, 30,false)
	oPlayer.playermovement = true;
	instance_destroy()
}



