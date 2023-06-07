if oPlayer.unlockedLevel_2 == false && sprite_index==sLockLevel2{
if place_meeting(x,y,oPlayer){
var item = GetItem(key)
	if (item != noone) {
		sprite_index=sUnlockedLevel2;
		UseItem(key)
		audio_play_sound(snd_door_open, 10, false);
		oPlayer.unlockedLevel_2 = true;
	} else {
		oPlayer.x -= 5;
		scr_create_textbox("door locked");
		}
	}
} else if (oPlayer.unlockedLevel_2 == true) {
	sprite_index=sUnlockedLevel2
	}

depth = -y;




