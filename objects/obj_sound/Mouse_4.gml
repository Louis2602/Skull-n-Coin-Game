
cnt = cnt + 1;

if (cnt mod 2 != 0){
	audio_stop_sound(theme_sound);
}
else{
	audio_play_sound(theme_sound, 0, true);
}
