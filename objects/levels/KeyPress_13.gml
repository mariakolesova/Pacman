if (levels_index = 0) audio_play_sound(start_beep, 50, false);

switch(levels_index){
	case 0: {
		room_goto(rMainRoom);
		break;}
	
	case 1: {
		room_goto(rMainSecondRoom);
		break;}
	
	case 2:
		room_goto(rMainThirdRoom);
		break;
}
