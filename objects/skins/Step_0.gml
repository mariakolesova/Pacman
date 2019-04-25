menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
menu_index += menu_move;

//Switdhing between right and left menus
if keyboard_check_pressed(vk_right) and (player == 1) player = 2;
if keyboard_check_pressed(vk_left) and (player == 2) player = 1;

if (menu_index < 0) menu_index = my_skins - 1;
if (menu_index > my_skins - 1) menu_index = 0;

//sounds
if (menu_index != last_selected)
{
	switch (menu_index)
	{
		case 0:
		{
			audio_play_sound(beep_1, 1,false);
			break;
		}
		case 1:
		{
			audio_play_sound(beep_2, 1,false);
			break;
		}
		case 2:
		{
			audio_play_sound(beep_3, 1,false);
			break;
		}
		case 3:
		{
			audio_play_sound(beep_4, 1,false);
			break;
		}

		case 4:
		{
			audio_play_sound(beep_4, 1,false);
			break;
		}
		case 5:
		{
			audio_play_sound(beep_4, 1,false);
			break;
		}
	}
}

last_selected = menu_index;


