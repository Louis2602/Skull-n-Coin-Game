if (room = rm_menu){
	draw_sprite(spr_effectSound, 0, 125, 30)

	if mouse_x >= 125 and mouse_x <= 125+74 and mouse_y >= 30 and mouse_y <= 30+74 {
		draw_sprite(spr_effectSound_1, 0, 125, 30)
	}
}