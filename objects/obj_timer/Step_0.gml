if global.myTime > 0 {
	global.myTime = global.myTime - delta_time/1000000
} else {
	global.myTime = 0
	global.myTime = room_speed*0.5		
	//room_goto(rm_End)
	global.gameLose = 1;
}

global.showTime=ceil(global.myTime)