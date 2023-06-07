//if (room==LEVEL_1||room==LEVEL_2||room==LEVEL_3||room==LEVEL_4||room==Biome1Fight){
if speed > 0{
	if (direction >= 315 && direction < 45){
		sprite_index = sSlimeRightred;
		}
	if (direction >= 45 && direction < 135){
		sprite_index = sSlimeUpred;
		}
	if (direction >= 135 && direction < 225){
		sprite_index = sSlimeLeftred;
		}
	if (direction >= 225 && direction < 315){
		sprite_index = sSlimeDownred;
		}
}

if (place_meeting(x,y,oPlayer))&&!instance_exists(oTextBox){
	speed = 0;
	oPlayer.playermovement = false
{
	scr_create_textbox(text_id);
	
}
}
//} else {
	//instance_destroy(oEnemie);
//} 

depth = -y;



