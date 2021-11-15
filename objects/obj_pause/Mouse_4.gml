/// @description Insert description here
// You can write your code in this editor

if (global.effect_sound mod 2 = 0){
	audio_play_sound(btn_click_sound, 0, 0);
}

//room_goto(rm_menu);

global.pauseMenu = 1;
instance_deactivate_all(true);
