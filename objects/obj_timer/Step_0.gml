if myTime > 0 {
	myTime = myTime - delta_time/1000000
} else {
	myTime = 0
	show_message("Time's up! Game Over")
	myTime = room_speed*0.5		
	game_restart()
}

showTime=ceil(myTime)