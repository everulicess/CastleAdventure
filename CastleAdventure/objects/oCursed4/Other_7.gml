if (sprite_index == sSlimeDeathred )
{
	global.kill += 1;
	instance_destroy(oTextBox)
	oPlayer.playermovement = true;	
	audio_play_sound(snd_attackkilled, 30,false)
	instance_destroy()
	
}

if (sprite_index == sHuman_4)
{
	global.save += 1;
	instance_destroy(oTextBox)
	if (keydrop != noone)
	{
		AddItem(keydrop, dropquantity)
		show_debug_message("you`ve received a key");
	}
	audio_play_sound(snd_transformed_slimes, 30,false)
	oPlayer.playermovement = true;
	instance_destroy()
}




