if (room = rm_menu){
	if global.effect_sound mod 2 = 0{
		draw_sprite(spr_effectSound, 0, 125, 30)

		if mouse_x >= 125 and mouse_x <= 125+74 and mouse_y >= 30 and mouse_y <= 30+74 {
			draw_sprite(spr_effectSound_1, 0, 125, 30)
		}
	}
	else{
		draw_sprite(spr_effectSoundOff, 0, 125, 30)

		if mouse_x >= 125 and mouse_x <= 125+74 and mouse_y >= 30 and mouse_y <= 30+74 {
			draw_sprite(spr_effectSoundOff_1, 0, 125, 30)
		}
	}
}