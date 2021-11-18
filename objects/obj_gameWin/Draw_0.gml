

// restart
draw_sprite(spr_pauseMenu_restart,0,364,470);
if mouse_x >= 364 and mouse_x <= 635 and mouse_y >= 470 and mouse_y <= 549 {
	draw_sprite(spr_pauseMenu_restart_1,0,364,470);
	if mouse_check_button_pressed(mb_left){ // bam chuot
		if (global.effect_sound mod 2 = 0)
			audio_play_sound(btn_click_sound, 0, false);
		if global.playSound mod 2 = 0
			audio_stop_sound(gameLose_sound);
		room_goto(rm_gameWorld); // Restart
	}
}

// home
draw_sprite(spr_home,0,725,470);
if mouse_x >= 725 and mouse_x <= 996 and mouse_y >= 470 and mouse_y <= 549 {
	draw_sprite(spr_home_1,0,725,470);
	if mouse_check_button_pressed(mb_left){ // bam chuot
		if (global.effect_sound mod 2 = 0)
			audio_play_sound(btn_click_sound, 0, false);
		if global.playSound mod 2 = 0
			audio_stop_sound(gameLose_sound);
		room_goto(rm_menu); // ve menu
	}
}