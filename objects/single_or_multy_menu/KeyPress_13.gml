if (menu_index = 0) audio_play_sound(start_beep, 50, false);
switch(menu_index){
	case 0:
	{
		global.mode = 1;
		room_goto(rMenu);
		break;
	}
	case 1:
	{
		global.mode = 2
		room_goto(rMenu);	
		break;
	}
	case 2:
	{
		room_goto(rSkins);	
		break;
	}
}
