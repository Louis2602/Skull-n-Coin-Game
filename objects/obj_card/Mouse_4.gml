if(global.can_select == true) {
	if(flipped == false) {
		flipped = true;
		global.selectionNumber++;
		
		
		global.match[global.selectionNumber-1, 0] = type;
		global.match[global.selectionNumber-1, 1] = id;
		if(type = "skull")
			global.countLife--;
		if(global.selectionNumber == 2) {
			global.can_select = false;
			if(global.match[0, 0] == global.match[1, 0]) // match has been found 
			{
				with(global.match[0, 1]) {
					flipped = true;
				}
				with(global.match[1, 1]) {
					flipped = true;
				}
				
				if(type = "coin")
					global.countCoin++;
				if(type = "time")
					global.myTime += 3;
				if(type = "skull") {
					alarm[2] = 0.5*room_speed;
					global.countLife = 0;
				}
				if(type = "revive")
					global.countLife++;
					
				global.selectionNumber = 0;
				
				global.match[0, 0] = "null";
				global.match[0, 1] = 999;
				global.match[1, 0] = "null";
				global.match[1, 1] = 999;
				global.can_select = true;
			}
			else {
				alarm[0] = room_speed * 0.5;
			}
		}
	}
}
if (global.countCoin == 4) {
	alarm[1] = 0.5*room_speed;
}
if(global.countLife == 0) {
	alarm[2] = 0.5*room_speed;
}
if (global.effect_sound mod 2 = 0){
	audio_play_sound(flipCard_sound,0 ,0);
}