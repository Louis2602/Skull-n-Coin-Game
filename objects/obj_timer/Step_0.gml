if global.myTime > 0 {
	global.myTime = global.myTime - delta_time/1000000
} else {
	global.myTime = 0
	show_message("Time's up! Game Over")
	global.myTime = room_speed*0.5		
	room_goto(rm_End)
}

global.showTime=ceil(global.myTime)