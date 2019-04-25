if (!stop_flag){
speed_player = 5;
if (x mod 20 = 0&&y mod 20 = 0){
if (way){
if (keyboard_check(vk_left)){
if (!collision_line(x-speed_player*3,y-speed_player*1,x-speed_player*3,y+speed_player*1,Wall,0,0)){
	speed_x = -speed_player;	
	speed_y = 0;	
	start = true;
	sprite_index = global.playerB_skin_left;
}
}
if (keyboard_check(vk_right)){
	if (!collision_line(x+speed_player*2,y-speed_player*1,x+speed_player*2,y+speed_player*1,Wall,0,0)){
	speed_x = speed_player;	
	speed_y = 0;	
	start = true;
	sprite_index = global.playerB_skin_right;
	}
}
if (keyboard_check(vk_up)){
if (!collision_line(x-speed_player*1,y-speed_player*3,x+speed_player*1,y-speed_player*3,Wall,0,0)){
	speed_y = -speed_player;	
	speed_x = 0;	
	start = true;
    
}
}
if (keyboard_check(vk_down)){
if (!collision_line(x-speed_player*1,y+speed_player*2,x+speed_player*1,y+speed_player*2,Wall,0,0)){
	speed_y = speed_player;	
	speed_x = 0;	
	start = true;
	
}
}
}
else{
	if (keyboard_check(vk_left)){
	if (!collision_line(x+speed_player*2,y-speed_player*1,x+speed_player*2,y+speed_player*1,Wall,0,0)){
	speed_x = speed_player;	
	speed_y = 0;	
	start = true;
	sprite_index = global.playerB_skin_right;
	}
}
if (keyboard_check(vk_right)){
if (!collision_line(x-speed_player*3,y-speed_player*1,x-speed_player*3,y+speed_player*1,Wall,0,0)){
	speed_x = -speed_player;	
	speed_y = 0;	
	start = true;
	sprite_index = global.playerB_skin_left;
}
}
if (keyboard_check(vk_up)){
if (!collision_line(x-speed_player*1,y+speed_player*2,x+speed_player*1,y+speed_player*2,Wall,0,0)){
	speed_y = speed_player;	
	speed_x = 0;	
	start = true;
	
}
}
if (keyboard_check(vk_down)){
if (!collision_line(x-speed_player*1,y-speed_player*3,x+speed_player*1,y-speed_player*3,Wall,0,0)){
	speed_y = -speed_player;	
	speed_x = 0;	
	start = true;
    
}
}
}}
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

if (!instance_exists(Bonus) and !instance_exists(Cake) and !instance_exists(Coffee) and !instance_exists(milk) and !instance_exists(candy)){
	if (global.mode == 2){
		if (instance_exists(Player_A)){
			if room_get_name(room) = "rMainThirdRoom"{      //Third room is final
			     audio_play_sound(start_beep, 2, false);
				    room_goto(rWin);
			}
			else {
				audio_play_sound(start_beep, 2, false);
				room_goto_next();
			}
		}
		else{
			room_restart();
		}
	}
	else{
		if room_get_name(room) = "rMainThirdRoom"{      //Third room is final
			audio_play_sound(start_beep, 2, false);
			room_goto(rWin);
		}
		else {
			audio_play_sound(start_beep, 2, false);
			room_goto_next();
		}
	}
}
