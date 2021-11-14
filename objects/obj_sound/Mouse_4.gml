
cnt = cnt + 1;
if (global.effect_sound mod 2 == 0)
	audio_play_sound(btn_click_sound, 0, false);
if (cnt mod 2 != 0){
	audio_stop_sound(theme_sound);
}
else{
	audio_play_sound(theme_sound, 0, true);
}
