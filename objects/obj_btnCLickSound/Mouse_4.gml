
// sound
	if global.btnClickSound mod 2 = 0{
		audio_play_sound(btn_click_sound, 0, 0);
	}

global.btnClickSound += 1;