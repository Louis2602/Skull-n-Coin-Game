
draw_sprite(spr_button_pause, 0, 40, 37);

if mouse_x >= 40 and mouse_x <= 40+74 and mouse_y >= 37 and mouse_y <= 37+74{
	draw_sprite(spr_button_pause_1, 0, 40, 37);
}

if global.pauseMenu = 1{
	draw_sprite(spr_backgroundPopUp, 0, 0, 0);
	draw_sprite(spr_gameWorld_pauseMenu, 0, 293, 180);
	// quit
	if mouse_x >= 731 and mouse_x <= 1002 and mouse_y >= 457 and mouse_y <= 536{
		draw_sprite(spr_pauseMenu_quit_1, 0, 731, 457);
		if mouse_check_button_pressed(mb_left){
			if (global.effect_sound mod 2 = 0){
				audio_play_sound(btn_click_sound, 0, 0);
			}
			room_goto(rm_menu);
		}
	}
	// restart
	if mouse_x >= 363 and mouse_x <= 634 and mouse_y >= 457 and mouse_y <= 536{
		draw_sprite(spr_pauseMenu_restart_1, 0, 363, 457);
		if mouse_check_button_pressed(mb_left){
			if (global.effect_sound mod 2 = 0){
				audio_play_sound(btn_click_sound, 0, 0);
			}
			room_restart();
		}
	}
	// music
	if global.playSound mod 2 = 0{
		//draw_sprite(spr_sound, 0, 30, 30);

		if (mouse_x >= 505 and mouse_x <= 505+74 and mouse_y >= 335 and mouse_y <= 335+74 ){
			draw_sprite(spr_sound_1, 0, 505, 335);
		}
	}
	else{
		draw_sprite(spr_soundOff, 0, 505, 335);

		if (mouse_x >= 505 and mouse_x <= 505+74 and mouse_y >= 335 and mouse_y <= 335+74 ){
			draw_sprite(spr_soundOff_1, 0, 505, 335);
		}
	}
	
	if mouse_check_button_pressed(mb_left) and mouse_x >= 505 and mouse_x <= 505+74 and mouse_y >= 335 and mouse_y <= 335+74{
		if (global.effect_sound mod 2 = 0){
			audio_play_sound(btn_click_sound, 0, 0);
		}
		global.playSound += 1;	
	}
	if (global.playSound mod 2 != 0){
		audio_stop_sound(theme_sound);
	}
}