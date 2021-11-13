
if (global.menuPopUp = 1){
	if mouse_x >= 385 and mouse_x <= 656 and mouse_y >= 469 and mouse_y <= 548{
		draw_sprite(spr_bthYes, 0, 385, 469);
	}

	if mouse_x >= 712 and mouse_x <= 983 and mouse_y >= 470 and mouse_y <= 549{
		draw_sprite(spr_btnNo, 0, 712, 470);
	}
}