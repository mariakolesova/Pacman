//health--;
//if (pause_step_flag = false and health < 1){
if (pause_step_flag = false){
	if (global.mode != 2){
		//global.room_from = room;
		//room_goto(rGameOver) 
		room_goto(rHighscore);
	}
	else{
		instance_destroy(Player_A);
		if (!instance_exists(Player_B)){
			global.room_from = room;
			room_goto(rGameOver) 
		}
	}
}



