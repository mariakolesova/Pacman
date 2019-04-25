var i = 0;

repeat(buttons){
	
	draw_set_font(font_main);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	menu_y = 250;
	
	if (menu_index == i) 
	{
		draw_sprite(pointer_spr, 1, menu_x - 90, menu_y + button_h * i);
	}
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}


draw_set_font(other_menu_font);
draw_text(menu_x, menu_y + 30 + button_h * i, "(press ESC to enter the  main menu)");

