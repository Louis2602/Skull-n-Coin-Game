
draw_sprite(spr_tutorial_nextPage, 0, 1181, 396);

if (mouse_x >= 1181 and mouse_x <= 1181+74 and mouse_y >= 396 and mouse_y <= 396+74) or
(keyboard_check_pressed(vk_right)){
	draw_sprite(spr_tutorial_nextPage_1, 0, 1181, 396);
}
