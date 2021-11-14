
draw_sprite(spr_tutorial_previousPage, 0, 102, 396);

if (mouse_x >= 102 and mouse_x <= 102+74 and mouse_y >= 396 and mouse_y <= 396+74) or
(keyboard_check_pressed(vk_left)){
	draw_sprite(spr_tutorial_previousPage_1, 0, 102, 396);
}