
var accept = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

// Up
if keyboard_check_pressed(vk_up){
	if (index > 0){
		index--;
	}
	else{
		index = array_length_1d(menu) - 1;
	}
}

// Down
if keyboard_check_pressed(vk_down){
	if (index < array_length_1d(menu) - 1){
		index++;
	}
	else{
		index = 0;
	}
}

// Start
if (index = 0 and accept){
	room_goto(rm_gameWorld);
}
// Tutorial
if (index = 1 and accept){
	room_goto(rm_tutorial);
}
// About
// Exit
if (index = 3 and accept){
	game_end();
}