
if (global.menuExitPopUp == 0){
menu[0] = draw_sprite(spr_menu_start, 0, 506, 300);
menu[1] = draw_sprite(spr_menu_tutorial, 0, 506, 410);
menu[2] = draw_sprite(spr_menu_about, 0, 506, 520);
menu[3] = draw_sprite(spr_menu_exit, 0, 506, 630);

if (index = 0 or 
(mouse_x >= 506 and mouse_x <= 506+353 and mouse_y >= 300 and mouse_y <= 300+80)){
	index = 0
	draw_sprite(spr_menu_start_1, 0, 506, 300);
}

if (index = 1 or 
(mouse_x >= 506 and mouse_x <= 506+353 and mouse_y >= 410 and mouse_y <= 410+80)){
	index = 1;
	draw_sprite(spr_menu_tutorial_1, 0, 506, 410);
}

if (index = 2 or 
(mouse_x >= 506 and mouse_x <= 506+353 and mouse_y >= 520 and mouse_y <= 520+80)){
	index = 2
	draw_sprite(spr_menu_about_1, 0, 506, 520);
}

if (index = 3 or 
(mouse_x >= 506 and mouse_x <= 506+353 and mouse_y >= 630 and mouse_y <= 630+80)){
	index = 3;
	draw_sprite(spr_menu_exit_1, 0, 506, 630);
}
}
// Menu Exit Pop Up
if (global.menuExitPopUp == true){
	draw_sprite(spr_menu_end, 0, 293, 180);
}

