if (room != NewRoom) {
	fadeLevel += 0.02;
	if (fadeLevel >= 1){
		room_goto(NewRoom)
		oPlayer.x = NewX;
		oPlayer.y = NewY;
		}
	}
else {
	fadeLevel -= 0.02;
	}
if (fadeLevel <= 0){
	instance_destroy();
	}




