
if global.gameLose == 1{
draw_sprite(spr_backgroundPopUp,0,0,0);
draw_sprite(spr_lose, 0, 293, 180);

// restart
draw_sprite(spr_pauseMenu_restart,0,363,469);
if mouse_x >= 363 and mouse_x <= 634 and mouse_y >= 469 and mouse_y <= 548{
	draw_sprite(spr_pauseMenu_restart_1,0,363,469);
	if mouse_check_button_pressed(mb_left){
		if (global.effect_sound mod 2 == 0)
			audio_play_sound(btn_click_sound, 0, false);
		room_goto(rm_gameWorld);
	}
}

// home
draw_sprite(spr_home,0,724,469);
if mouse_x >= 724 and mouse_x <= 995 and mouse_y >= 469 and mouse_y <= 548{
	draw_sprite(spr_home_1,0,724,469);
	if mouse_check_button_pressed(mb_left){
		if (global.effect_sound mod 2 == 0)
			audio_play_sound(btn_click_sound, 0, false);
		room_goto(rm_menu);
	}
}
}