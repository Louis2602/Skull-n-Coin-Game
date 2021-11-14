draw_set_font(timerFont)
draw_set_color(c_white)
if global.showTime < 10
	draw_text(160, 430, string(global.showTime))
else 
	draw_text(150, 430, string(global.showTime))
draw_text(160, 650, string(global.countLife))