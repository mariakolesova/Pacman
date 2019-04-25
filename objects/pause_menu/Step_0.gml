menu_move = keyboard_check_pressed(vk_down) | keyboard_check_pressed(ord("S")) - keyboard_check_pressed(vk_up)|keyboard_check_pressed(ord("W"));
menu_index += menu_move;

if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;

//Sounds
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
	}
}

last_selected = menu_index;