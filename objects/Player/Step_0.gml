/// @description Insert description here
// You can write your code in this editor
speed_player = 5;
if (x mod 20 = 0&&y mod 20 = 0){
if (keyboard_check(ord("A"))){
if (!collision_line(x-speed_player*3,y-speed_player*1,x-speed_player*3,y+speed_player*1,Wall,0,0)){
	speed_x = -speed_player;	
	speed_y = 0;	
	start = true;
	
}
}
if (keyboard_check(ord("D"))){
	if (!collision_line(x+speed_player*2,y-speed_player*1,x+speed_player*2,y+speed_player*1,Wall,0,0)){
	speed_x = speed_player;	
	speed_y = 0;	
	start = true;
	}
}
if (keyboard_check(ord("W"))){
if (!collision_line(x-speed_player*1,y-speed_player*3,x+speed_player*1,y-speed_player*3,Wall,0,0)){
	speed_y = -speed_player;	
	speed_x = 0;	
	start = true;
}
}
if (keyboard_check(ord("S"))){
if (!collision_line(x-speed_player*1,y+speed_player*2,x+speed_player*1,y+speed_player*2,Wall,0,0)){
	speed_y = speed_player;	
	speed_x = 0;	
	start = true;
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
