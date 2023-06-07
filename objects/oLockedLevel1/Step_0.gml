if oPlayer.unlockedLevel_1 == false && sprite_index==sLockLevel1{
if place_meeting(x,y,oPlayer){
var item = GetItem(key)
	if (item != noone) {
		sprite_index=sUnlockedLevel1;
		UseItem(key)
		audio_play_sound(snd_door_open, 10, false);
		oPlayer.unlockedLevel_1 = true;
	} else {
		oPlayer.y += 5;
		scr_create_textbox("door locked");
		}
	}
} else if (oPlayer.unlockedLevel_1 == true) {
	sprite_index=sUnlockedLevel1
	}

depth = -y;



