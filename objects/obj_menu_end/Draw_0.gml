
if (global.menuExitPopUp = 1){
	draw_sprite(spr_backgroundPopUp, 0, 0, 0); // background mo
	draw_sprite(spr_menu_end, 0, 293, 180);
	// yes
	if mouse_x >= 385 and mouse_x <= 656 and mouse_y >= 470 and mouse_y <= 549{
		draw_sprite(spr_bthYes, 0, 385, 470);
	}


	// no
	if mouse_x >= 712 and mouse_x <= 983 and mouse_y >= 470 and mouse_y <= 549{
		draw_sprite(spr_btnNo, 0, 712, 470);
	}
}