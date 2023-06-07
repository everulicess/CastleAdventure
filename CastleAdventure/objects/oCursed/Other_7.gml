if (sprite_index == sSlimeDeath )
{
	instance_destroy(oTextBox)
	oPlayer.playermovement = true;
	oPlayer.ocursednotthere = true;
	instance_destroy()
	
}

if (sprite_index == sHuman)
{
	instance_destroy(oTextBox)
	oPlayer.playermovement = true;
	oPlayer.ocursednotthere = true;
	instance_destroy()
}

