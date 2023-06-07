//making whole keys when having 3 pieces
//Right key
if (GetItem(ITEM_KEY_LEVEL_2_1) != noone &&GetItem(ITEM_KEY_LEVEL_2_2) != noone &&GetItem(ITEM_KEY_LEVEL_2_3) != noone)
{
	UseItem(ITEM_KEY_LEVEL_2_1);
	UseItem(ITEM_KEY_LEVEL_2_2);
	UseItem(ITEM_KEY_LEVEL_2_3);
	AddItem(ITEM_KEY_LEVEL_2,1);
	
}
// Bottom key
if (GetItem(ITEM_KEY_LEVEL_3_1) != noone &&GetItem(ITEM_KEY_LEVEL_3_2) != noone &&GetItem(ITEM_KEY_LEVEL_3_3) != noone)
{
	UseItem(ITEM_KEY_LEVEL_3_1);
	UseItem(ITEM_KEY_LEVEL_3_2);
	UseItem(ITEM_KEY_LEVEL_3_3);
	AddItem(ITEM_KEY_LEVEL_3,1);
	
}
/*if instance_exists(oPlayer){
	if (room == BASE && oPlayer.unlockedLevel_1==true && GetItem(ITEM_KEY_LEVEL_2) == noone
	&& (GetItem(ITEM_KEY_LEVEL_2_1)==noone 
	|| GetItem(ITEM_KEY_LEVEL_2_2)==noone
	||GetItem(ITEM_KEY_LEVEL_2_3)=noone) )
	{
		UseItem(ITEM_KEY_LEVEL_2_1);
		UseItem(ITEM_KEY_LEVEL_2_2);
		UseItem(ITEM_KEY_LEVEL_2_3);
		global.money = 250;
	}
	if (room == BASE && oPlayer.unlockedLevel_2==true && GetItem(ITEM_KEY_LEVEL_3) == noone 
	&& (GetItem(ITEM_KEY_LEVEL_3_1)==noone 
	||GetItem(ITEM_KEY_LEVEL_3_2)==noone
	||GetItem(ITEM_KEY_LEVEL_3_3)=noone) )
	{
		UseItem(ITEM_KEY_LEVEL_3_1);
		UseItem(ITEM_KEY_LEVEL_3_2);
		UseItem(ITEM_KEY_LEVEL_3_3);
		global.money = 350;
	}
} else exit;

*/
