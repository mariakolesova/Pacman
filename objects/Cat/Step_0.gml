var roomname = room_get_name(room);


start = false
if (global.mode == 1) // if single player, start as soon as they start
    if ((Player_A.start = true) and !pause_step_flag){
	    speed_player = 5;
		start = true
	}
		
if (global.mode == 2) // if two players, start when any of them start
//    if ((Player_A.start = true or Player_B.start = true) and !pause_step_flag){
	if ((instance_exists(Player_A) and Player_A.start) or (instance_exists(Player_B) and Player_B.start)){
		if (!pause_step_flag){
			speed_player = 5;
			start = true
		}
	}

if (start = true) {
rand = random(4);
if (x mod 20 = 0&&y mod 20 = 0){
if (rand >= 0&&rand < 1){
if (!collision_line(x-speed_player*3,y-speed_player*1,x-speed_player*3,y+speed_player*1,Wall,0,0)){
	speed_x = -speed_player;	
	speed_y = 0;	
	sprite_index = Cat_left;
	
}
}
if (rand >= 1&&rand < 2){
	if (!collision_line(x+speed_player*2,y-speed_player*1,x+speed_player*2,y+speed_player*1,Wall,0,0)){
	speed_x = speed_player;	
	speed_y = 0;	
	sprite_index = Cat_right;
	}
}
if (rand >= 2&&rand < 3){
if (!collision_line(x-speed_player*1,y-speed_player*3,x+speed_player*1,y-speed_player*3,Wall,0,0)){
	speed_y = -speed_player;	
	speed_x = 0;	
}
}
if (rand >= 3&&rand < 4){
if (!collision_line(x-speed_player*1,y+speed_player*2,x+speed_player*1,y+speed_player*2,Wall,0,0)){
	speed_y = speed_player;	
	speed_x = 0;	
}
}
}
if (speed_x < 0){
if (collision_line(x+speed_x*3,y-speed_player*1,x+speed_x*3,y+speed_player*1,Wall,0,0)){
}
else{
	prev_x = x;
	prev_y = y;
 x += speed_x;
 y += speed_y;
}
}
else{
	if (speed_y < 0){
if (collision_line(x-speed_player*1,y+speed_y*3,x+speed_player*1,y+speed_y*3,Wall,0,0)){
}
else{
	prev_x = x;
	prev_y = y;
 x += speed_x;
 y += speed_y;
}
}
else{
	if (speed_x > 0){
	if (collision_line(x+speed_x*2,y-speed_player*1,x+speed_x*2,y+speed_player*1,Wall,0,0)){
}
else{
	prev_x = x;
	prev_y = y;
 x += speed_x;
 y += speed_y;
}
}else{
if (collision_line(x-speed_player*1,y+speed_y*2,x+speed_player*1,y+speed_y*2,Wall,0,0)){
}
else{
	prev_x = x;
	prev_y = y;
 x += speed_x;
 y += speed_y;
}
}
}
}
}
