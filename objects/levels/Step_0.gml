levels_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
levels_index += levels_move;

if (levels_index < 0) levels_index = buttons - 1;
if (levels_index > buttons - 1) levels_index = 0;

//Sounds
if (levels_index != last_selected)
{
	switch (levels_index)
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
		
	}
}

last_selected = levels_index;

