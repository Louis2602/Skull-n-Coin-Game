

if global.playSound mod 2 = 0{
	draw_sprite(spr_sound, 0, 30, 30);

	if (mouse_x >= 30 and mouse_x <= 104 and mouse_y >= 30 and mouse_y <= 104 ){
		draw_sprite(spr_sound_1, 0, 30, 30);
	}
}
else{
	draw_sprite(spr_soundOff, 0, 30, 30);

	if (mouse_x >= 30 and mouse_x <= 104 and mouse_y >= 30 and mouse_y <= 104 ){
		draw_sprite(spr_soundOff_1, 0, 30, 30);
	}
}
