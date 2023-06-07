//if (global.shop)exit;

//if (room == Biome1Fight ) {
	//playermovement = false;
//} else {
	//playermovement = true
//}

if (playermovement == true){
	//keys for movement
	xmovement= keyboard_check(ord("D"))-keyboard_check(ord("A"));
	ymovement= keyboard_check(ord("S"))-keyboard_check(ord("W"));
}
if (playermovement ==false) {
	xmovement = 0;
	ymovement = 0;
}

//if idle
if (xmovement == 0 && ymovement == 0) {
 sprite_index = sPlayerIdle;
		}
// if  moving	
//objects to sollide with
if (xmovement != 0 || ymovement != 0) {
	if (!collision_point(x+(xmovement*walkspeed),y,oBoundary,true,true)
	&&!collision_point(x+(xmovement*walkspeed),y,oShop,true,true)
	&&!collision_point(x+(xmovement*walkspeed),y,oDecoration,true,true))
	{
		x += xmovement*walkspeed;
	}
	if (!collision_point(x,y+(ymovement*walkspeed),oBoundary,true,true)
	&&!collision_point(x,y+(ymovement*walkspeed),oShop,true,true)
	&&!collision_point(x,y+(ymovement*walkspeed),oDecoration,true,true))
	{
		y += ymovement*walkspeed;
	}
//chnage sprite for walking based on directions
	//Right	
	if (xmovement > 0) {
		sprite_index = sPlayerWalksRight;
		dir = 0;
		}
	//Up
	if (ymovement < 0) {
		sprite_index = sPlayerWalksUp
		dir= 1
		}
	//Left
	if (xmovement < 0) {
		sprite_index = sPlayerWalksLeft;
		dir= 2;
		}
	//Down
	if (ymovement > 0) {
		sprite_index = sPlayerWalksDown;
		dir = 3;
		}
	}
	
depth=-y;
//if place_meeting(x,y,oCursed){
	//inst = oCursed.id;
//}


//Xcollision = inst.x;
	//Ycollision = inst.y;
/*	
//set the room  to come back
if room = LEVEL_1 {
	RoomComeBack = LEVEL_1}
if room = LEVEL_2{
	RoomComeBack = LEVEL_2}
if room = LEVEL_3{
	RoomComeBack = LEVEL_3}
*/
	
//going to fighting room
/*if place_meeting(x,y,oEnemie){
	inst = oEnemie.id;
	Xcollision = x;
	Ycollision = y;

	room_goto(Biome1Fight);
	oPlayer.x=200;
	oPlayer.y=600;
	inst.x = 740;
	inst.y = 230;
	inst.speed = 0;
}
*/








