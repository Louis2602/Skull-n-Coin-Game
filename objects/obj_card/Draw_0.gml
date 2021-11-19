// Lose pop-up
if global.gameLose == 1 {
	instance_deactivate_all(true);
	// LOSE SOUND
	//if global.playSound mod 2 = 0
	//		audio_play_sound(lose_sound, 0, 0);
	draw_sprite(spr_backgroundPopUp,3,0,0);
	draw_sprite(spr_lose, 0, 293, 180);
	
	// restart
	draw_sprite(spr_pauseMenu_restart,0,363,469);
	if mouse_x >= 363 and mouse_x <= 634 and mouse_y >= 469 and mouse_y <= 548 {
		draw_sprite(spr_pauseMenu_restart_1,0,363,469);
		if mouse_check_button_pressed(mb_left) {
			if (global.effect_sound mod 2 == 0)
				audio_play_sound(btn_click_sound, 0, false);
			if global.playSound mod 2 = 0
				audio_stop_sound(lose_sound);
			room_goto(rm_gameWorld);
		}
	}

	// home
	draw_sprite(spr_home,0,724,469);
	if mouse_x >= 724 and mouse_x <= 995 and mouse_y >= 469 and mouse_y <= 548{
		draw_sprite(spr_home_1,0,724,469);
		if mouse_check_button_pressed(mb_left) {
			if (global.effect_sound mod 2 == 0)
				audio_play_sound(btn_click_sound, 0, false);
			if global.playSound mod 2 = 0
				audio_stop_sound(lose_sound);
			room_goto(rm_menu);
		}
	}
	exit;
}
// Win pop-up
if global.gameWin == 1 {
	instance_deactivate_all(true);
	// WIN SOUND
	//if global.playSound mod 2 = 0
			//audio_play_sound(win_sound, 0, 0);
	draw_sprite(spr_backgroundPopUp,3,0,0);
	draw_sprite(spr_Win, 0, 293, 180);
	
	// restart
	draw_sprite(spr_pauseMenu_restart,0,363,469);
	if mouse_x >= 363 and mouse_x <= 634 and mouse_y >= 469 and mouse_y <= 548 {
		draw_sprite(spr_pauseMenu_restart_1,0,363,469);
		if mouse_check_button_pressed(mb_left) {
			if (global.effect_sound mod 2 == 0)
				audio_play_sound(btn_click_sound, 0, false);
			if global.playSound mod 2 = 0
				audio_stop_sound(win_sound);
			room_goto(rm_gameWorld);
		}
	}

	// home
	draw_sprite(spr_home,0,724,469);
	if mouse_x >= 724 and mouse_x <= 995 and mouse_y >= 469 and mouse_y <= 548{
		draw_sprite(spr_home_1,0,724,469);
		if mouse_check_button_pressed(mb_left) {
			if (global.effect_sound mod 2 == 0)
				audio_play_sound(btn_click_sound, 0, false);
			if global.playSound mod 2 = 0
				audio_stop_sound(win_sound);
			room_goto(rm_menu);
		}
	}
	exit;
}

if(flipped == true)
{
	switch(type) 
	{
		case "coin":
			sprite = spr_cardFront_Coin;
		break;
		case "skull":
			sprite = spr_cardFront_Skull;
		break;
		case "revive":
			sprite = spr_cardFront_Revive;
		break;
		case "time":
			sprite = spr_cardFront_Time;
		break;
	}
} 
else 
{
	sprite = spr_cardBack;
}

draw_sprite(sprite, 0, x, y);