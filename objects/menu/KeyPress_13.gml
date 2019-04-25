global.room_from = room_get_name(room);
if (menu_index = 0) audio_play_sound(start_beep, 50, false);
switch(menu_index){
	case 0:
	{
		room_goto(rMainRoom);
		break;
	}
	case 1:
	{
		room_goto(rHelp);
		audio_play_sound(milk_drunk, 1, false)
		break;
	}
	case 2:
	{
		room_goto(rSingleMultyRoom);
		
		audio_play_sound(milk_drunk, 1, false)
		
		break;
	}
	case 3:
	{
		room_goto(rTraining);
		
		audio_play_sound(milk_drunk, 1, false)
		
		break;
	}
	case 4:
	{
		room_goto(rLevels);
		audio_play_sound(milk_drunk, 1, false)
		break;
	}
	case 5:
	{
		room_goto(rHighscore);
		audio_play_sound(milk_drunk, 1, false);
		break;
	}

	case 6:
	{
		game_end();
		break;
	}	
}
