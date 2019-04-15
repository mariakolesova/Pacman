var i = 0
repeat(buttons){
	
	draw_set_font(font_main);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	
	if (menu_index == i) draw_set_color(c_red);
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}

draw_set_color(c_ltgray);
draw_set_font(other_menu_font);
draw_text(menu_x, menu_y + 80 + button_h * i, "Press ESC to enter the  main menu");

