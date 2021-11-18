

//draw_sprite(spr_backgroundPopUp,0, 0, 0);

if mouse_x >= 548 and mouse_x <= 819 and mouse_y >= 470 and mouse_y <= 549 {
	draw_sprite(spr_pauseMenu_restart_1,0,548,470);
	if mouse_check_button_pressed(mb_left)
		room_goto(rm_gameWorld);
}