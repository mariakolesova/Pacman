//health--;
//if (pause_step_flag = false and health < 1){
if (pause_step_flag = false){
	if (global.mode != 2){
		global.room_from = room;
		room_goto(rGameOver) 
	}
	else{
		instance_destroy(Player_B);
		if (!instance_exists(Player_A)){
			global.room_from = room;
			room_goto(rGameOver) 
		}
	}
}


