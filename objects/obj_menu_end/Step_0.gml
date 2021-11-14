if (global.menuExitPopUp = 1){
	// yes
	if mouse_x >= 385 and mouse_x <= 656 and mouse_y >= 469 and mouse_y <= 548 
	and mouse_check_button_pressed(mb_left){
		game_end();
	}
	// no
	if mouse_x >= 712 and mouse_x <= 983 and mouse_y >= 470 and mouse_y <= 549
	and mouse_check_button_pressed(mb_left){
		global.menuExitPopUp = 0;
	}
}