if (global.menuExitPopUp = 1){
	// yes
	if mouse_x >= 385 and mouse_x <= 656 and mouse_y >= 470 and mouse_y <= 549 
	and mouse_check_button_pressed(mb_left){
		if (global.effect_sound mod 2 = 0)
			audio_play_sound(btn_click_sound, 0, false);
		game_end();
	}
	// no
	if mouse_x >= 712 and mouse_x <= 983 and mouse_y >= 470 and mouse_y <= 549
	and mouse_check_button_pressed(mb_left){
		if (global.effect_sound mod 2 = 0)
			audio_play_sound(btn_click_sound, 0, false);
		global.menuExitPopUp = 0;
	}
}