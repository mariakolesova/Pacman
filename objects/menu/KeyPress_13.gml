audio_play_sound(snd_menu_enter, 2, false);
switch(menu_index){
	case 0:
		room_goto(rMainRoom);
		break;
	case 2:
		game_end();
		break;
	case 1:
		room_goto(rHelp);
		break;
}