
var accept = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);
if (global.menuExitPopUp == 0){
// Up
if keyboard_check_pressed(vk_up){
	if (index > 0){
		index--;
	}
	else{
		index = array_length_1d(menu) - 1;
	}
	if (global.effect_sound mod 2 = 0)
		audio_play_sound(btn_click_sound, 0, false);
}

// Down
if keyboard_check_pressed(vk_down){
	if (index < array_length_1d(menu) - 1){
		index++;
	}
	else{
		index = 0;
	}
	if (global.effect_sound mod 2 = 0)
		audio_play_sound(btn_click_sound, 0, false);
}

// Start
if (index = 0 and accept) or
(mouse_x >= 506 and mouse_x <= 506+353 and mouse_y >= 300 and mouse_y <= 300+80 
and mouse_check_button_pressed(mb_left)){
	if (global.effect_sound mod 2 = 0)
		audio_play_sound(btn_click_sound, 0, false);
	room_goto(rm_gameWorld);
}

// Tutorial
if (index = 1 and accept) or
(mouse_x >= 506 and mouse_x <= 506+353 and mouse_y >= 410 and mouse_y <= 410+80 
and mouse_check_button_pressed(mb_left)){
	if (global.effect_sound mod 2 = 0)
		audio_play_sound(btn_click_sound, 0, false);
	room_goto(rm_tutorial);
}
// About
if (index = 2 and accept) or
(mouse_x >= 506 and mouse_x <= 506+353 and mouse_y >= 520 and mouse_y <= 520+80
and mouse_check_button_pressed(mb_left)){
	if (global.effect_sound mod 2 = 0)
		audio_play_sound(btn_click_sound, 0, false);
	room_goto(rm_about);
}
// Exit
if (index = 3 and accept) or
(mouse_x >= 506 and mouse_x <= 506+353 and mouse_y >= 630 and mouse_y <= 630+80
and mouse_check_button_pressed(mb_left)){
	if (global.effect_sound mod 2 = 0)
		audio_play_sound(btn_click_sound, 0, false);
	global.menuExitPopUp = 1;
	//game_end();
}
}