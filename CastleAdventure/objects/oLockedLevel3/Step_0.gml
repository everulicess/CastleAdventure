if oPlayer.unlockedLevel_3 == false && sprite_index==sLockLevel3{
if place_meeting(x,y,oPlayer){
var item = GetItem(key)
	if (item != noone) {
		sprite_index=sUnlockedLevel3;
		UseItem(key)
		audio_play_sound(snd_door_open, 10, false);
		oPlayer.unlockedLevel_3 = true;
	} else {
		oPlayer.y -= 5;
		scr_create_textbox("door locked");
		}
	}
} else if (oPlayer.unlockedLevel_3 == true) {
	sprite_index=sUnlockedLevel3
	}

depth = -y;




