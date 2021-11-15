
draw_sprite(spr_button_pause, 0, 40, 37);

if mouse_x >= 40 and mouse_x <= 40+74 and mouse_y >= 37 and mouse_y <= 37+74{
	draw_sprite(spr_button_pause_1, 0, 40, 37);
}

if global.pauseMenu = 1{
	draw_sprite(spr_backgroundPopUp, 0, 0, 0);
	draw_sprite(spr_gameWorld_pauseMenu, 0, 293, 180);
	// quit
	if mouse_x >= 549 and mouse_x <= 820 and mouse_y >= 464 and mouse_y <= 543{
		draw_sprite(spr_pauseMenu_quit_1, 0, 549, 464);
		if mouse_check_button_pressed(mb_left){
			if (global.effect_sound mod 2 = 0){
				audio_play_sound(btn_click_sound, 0, 0);
			}
			room_goto(rm_menu);
		}
	}
	// restart
	if mouse_x >= 549 and mouse_x <= 820 and mouse_y >= 361 and mouse_y <= 440{
		draw_sprite(spr_pauseMenu_restart_1, 0, 549, 361);
		if mouse_check_button_pressed(mb_left){
			if (global.effect_sound mod 2 = 0){
				audio_play_sound(btn_click_sound, 0, 0);
			}
			room_restart();
		}
	}
}