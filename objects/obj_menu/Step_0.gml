
// Up
if (keyboard_check_pressed(vk_up)){
	if (index > 0){
		index--;
	}
	else{
		index = array_length_1d(menu) - 1;
	}
}

// Down
if (keyboard_check_pressed(vk_down)){
	if (index < array_length_1d(menu) - 1){
		index++;
	}
	else{
		index = 0;
	}
}

// Accept

if keyboard_check_pressed(vk_enter) and index = 0
	room_goto(rm_gameWorld);