if (menu_index = 0) audio_play_sound(start_beep, 50, false);

//Setting new skins 
switch(menu_index){
	case 0:
	{
		if (player == 1) 
		{
		    global.playerA_skin_left = PlayerA_left;
		    global.playerA_skin_right = PlayerA_right;
			
		}
		else
		{
			global.playerB_skin_left = PlayerA_left;
		    global.playerB_skin_right = PlayerA_right;
		}
		break;
	}
	case 1:
	{
		if (player == 1)
		{
		    global.playerA_skin_left = PlayerB_left;
		    global.playerA_skin_right = PlayerB_right;
		}
		else
		{
			global.playerB_skin_left = PlayerB_left;
		    global.playerB_skin_right = PlayerB_right;
		}
		break;
	}
	case 2:
	{   if (player == 1)
		{
		    global.playerA_skin_left = girly_skin_left;
		    global.playerA_skin_right = girly_skin_right;
		}
		else 
		{
			global.playerB_skin_left = girly_skin_left;
		    global.playerB_skin_right = girly_skin_right;
		}
		break;
	}
	case 3:
	{
		if (player == 1)
		{
		    global.playerA_skin_left = black_and_white_left_skin;
		    global.playerA_skin_right = black_and_white_right_skin;
		}
		else 
	    {
		    global.playerB_skin_left = black_and_white_left_skin;
		    global.playerB_skin_right = black_and_white_right_skin;
		}
		break;
	}
}
if (player == 1)
{
	//Setting new First Player Border
	global.border_A_x = cur_x + 40;
	global.border_A_y = cur_y;
	//Setting new initial First Player sprite
    object_set_sprite(Player_A, global.playerA_skin_left);

}
else
{
	//Setting new Second Player Border
	global.border_B_x = cur_x + 40;
	global.border_B_y = cur_y;	
	//Setting new initial Second Player sprite
    object_set_sprite(Player_B, global.playerB_skin_left);
}